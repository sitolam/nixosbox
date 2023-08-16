# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, lib, ... }:

let 
  user="%user";
  name="%name";
  hostname="%hostname";

  # network
  defaultGateway="%defaultgateway"; # the ip addr of your gateway
  interface="%interface"; # the output of: route | awk '{if(NR == 3){print $8}}'
  static_ip_address="%ip-address"; # your choice

  # unstable packages
   unstableTarball =
    fetchTarball
      https://github.com/NixOS/nixpkgs/archive/nixos-unstable.tar.gz;
  
  # Gdm monitor configuration
  monitorsXmlContent = builtins.readFile /home/${user}/.config/monitors.xml;
  monitorsConfig = pkgs.writeText "gdm_monitors.xml" monitorsXmlContent;
in

{
  # System
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      <home-manager/nixos>
    ];
  nixpkgs.config = {
    packageOverrides = pkgs: {
      unstable = import unstableTarball {
        config = config.nixpkgs.config;
      };
      # Nixos User Repository
      nur = import (builtins.fetchTarball "https://github.com/nix-community/NUR/archive/master.tar.gz") {
      inherit pkgs;
    };
    };
  };
  time.hardwareClockInLocalTime = true;
  
  # Bootloader.
  boot = {
  	kernelPackages = pkgs.linuxPackages_latest;
  	loader = {
  		timeout = 10;
  		grub = {
  			enable = true;
  			devices = ["nodev"];
  			efiSupport = true;
  			useOSProber = true;
  			configurationLimit = 5;
        default = "4";
        extraEntries = ''
          menuentry "Reboot" {
            reboot
          }
          menuentry "Poweroff" {
            halt
          };
        '';
  		};
  		efi = {
  			canTouchEfiVariables = true;
  			efiSysMountPoint = "/boot";
  		};
 	};
  # Droidcam modules
  extraModulePackages = with config.boot.kernelPackages;
    [ v4l2loopback.out ];
  kernelModules = [ "v4l2loopback" ];
  extraModprobeConfig = ''
    # exclusive_caps: Skype, Zoom, Teams etc. will only show device when actually streaming
    # card_label: Name of virtual camera, how it'll show up in Skype, Zoom, Teams
    # https://github.com/umlaeute/v4l2loopback
    options v4l2loopback exclusive_caps=1 card_label="Droidcam"
  '';
 };
  # Virtualisation
  virtualisation = {
    # virt-manager
    libvirtd.enable = true;
    docker.enable = true;

    # waydroid.enable = true;
  	# lxd.enable = true;
  };
  # Systemd
  systemd = {
    tmpfiles.rules = [
    "L+ /run/gdm/.config/monitors.xml - - - - ${monitorsConfig}" 
    # FIXME - let it work when you do not have didn't change your monitor setup.
    ];
  };

 # Network
 networking = {
  	defaultGateway = "${defaultGateway}";
  	nameservers = [ 
  					"1.1.1.1"
  					"1.0.0.1"
  				  ];
  	hostName = "${hostname}";
  	useDHCP = lib.mkDefault true;
    networkmanager.enable = true;
  	interfaces = {
  		${interface} = {
  			ipv4.addresses = [ {
  				address = "${static_ip_address}";
  				prefixLength = 24;
  			}];
  		};
    };
    # Firewall
    firewall = {
      enable = true;
      allowedTCPPorts = [ 22 3389 ];
      allowedUDPPorts = [ 22 3389 ];
    };
  };

  # Regional

  # Set your time zone.
  time.timeZone = "Europe/Brussels";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "nl_BE.UTF-8";
    LC_IDENTIFICATION = "nl_BE.UTF-8";
    LC_MEASUREMENT = "nl_BE.UTF-8";
    LC_MONETARY = "nl_BE.UTF-8";
    LC_NAME = "nl_BE.UTF-8";
    LC_NUMERIC = "nl_BE.UTF-8";
    LC_PAPER = "nl_BE.UTF-8";
    LC_TELEPHONE = "nl_BE.UTF-8";
    LC_TIME = "nl_BE.UTF-8";
  };

  # Environment

    environment.variables = lib.mkForce {
      QT_QPA_PLATFORMTHEME = "gtk3";
    };

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  # Configure keymap in X11
  services.xserver = {
    layout = "us";
    xkbVariant = "intl";
  };

  # Configure console keymap
  console = {
    keyMap = "us-acentos";
  };

  # Fonts
  fonts = {
    fonts = with pkgs; [
      (nerdfonts.override { fonts = [ "Meslo" ]; })
    ];
  };

  # Enable CUPS to print documents.
  services.printing.enable = true; # Setup at http://localhost:631/

  # Sound
  sound.enable = true;
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services = {
  	pipewire = {
    	enable = true;
    	alsa.enable = true;
    	alsa.support32Bit = true;
    	pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;
  };
 };

  # Users
  users.users.${user} = {
    isNormalUser = true;
    description = "${name}";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
    shell = pkgs.fish;
  };

  #Packages

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # System packages
  environment.systemPackages = with pkgs; [
     wget
     micro
     tree
     neofetch
     gparted # needs to be a systempackage
     autojump
     wl-clipboard
     grub2
     git
     dconf2nix
     disfetch
     htop
     ncdu
     cmatrix
     wmctrl
     fzf # search in history of commands (open terminal and press ctr + R or ctrl + T to only show session history)
     unzip
     zip
     p7zip
     gptfdisk
     jq  
  ];

  # Remove some gnome packages
  environment.gnome.excludePackages = (with pkgs; [
    gnome-photos
    gnome-tour
  ]) ++ (with pkgs.gnome; [
    cheese      # photo booth
    epiphany    # web browser
    yelp        # help viewer
    geary       # email client
    seahorse    # password manager
    gnome-calendar
    gnome-contacts
    gnome-maps
    gnome-music
  ]);
  
  # Remove packages
  services.xserver.excludePackages = (with pkgs; [
    xterm #removes xterm (terminal)
  ]); 

  # Home manager

  home-manager.users.${user} = { config, pkgs, ... }: 
    let
      # Unstable packages
      unstable = import
      (builtins.fetchTarball  https://github.com/NixOS/nixpkgs/archive/nixos-unstable.tar.gz)
      # reuse the current configuration
      { config = config.nixpkgs.config; };
      # Nixos User Repository
      nur = import (builtins.fetchTarball "https://github.com/nix-community/NUR/archive/master.tar.gz") {
      inherit pkgs;
    };
    in
    {
    # Dconf settings
    imports = [ ./dconf.nix ];

    # Packages

    # Config
    nixpkgs.config = {
      allowUnfree = true;
      permittedInsecurePackages = [
        "openssl-1.1.1v"
      ];
    };
    # The list
    home.packages = with pkgs; [ #TODO - moosync
      firefox
      unstable.vscode
      flameshot
      tesseract # voor ocr
      gnome.pomodoro
      onedrive
      gnome.gnome-tweaks
      gnome.dconf-editor
      adw-gtk3
      unigine-valley
      virt-manager
      anki-bin
      (discord.override {
        withVencord = true;
      })
      # appimagelauncher
      protonup-qt
      qpwgraph
      heroic
      signal-desktop
      element-desktop
      telegram-desktop
      unstable.antimicrox
      gimp
      drawing
      handbrake
      audacity
      inkscape
      onlyoffice-bin
      kdenlive
      mediainfo # optional dependecy for kdenlive
      glaxnimate # required dependecy for kdenlive
      droidcam
      # collision
      nur.repos.foolnotion.upscayl
      prismlauncher
      github-desktop
      wine-wayland
      qbittorrent
      shell-genie
      pop-launcher
      distrobox
      docker-compose
      thefuck
      unstable.mission-center # stable version bestaat nog niet   

      # Extensions
      gnomeExtensions.another-window-session-manager
      gnomeExtensions.blur-my-shell
      gnomeExtensions.desktop-cube
      gnomeExtensions.worksets # customised workspaces
      gnomeExtensions.just-perfection
      gnomeExtensions.nothing-to-say
      gnomeExtensions.one-click-bios
      gnomeExtensions.openweather
      gnomeExtensions.pano
      gnomeExtensions.quick-settings-tweaker
      gnomeExtensions.reorder-workspaces
      gnomeExtensions.top-bar-organizer
      gnomeExtensions.translate-assistant
      gnomeExtensions.custom-accent-colors # misschien niet nodig
      gnomeExtensions.dash-to-dock
      gnomeExtensions.gnome-40-ui-improvements
      gnomeExtensions.gsconnect
      gnomeExtensions.legacy-gtk3-theme-scheme-auto-switcher
      gnomeExtensions.pop-shell
      gnomeExtensions.forge
      gnomeExtensions.removable-drive-menu
      gnomeExtensions.user-themes # misschien niet nodig
      gnomeExtensions.espresso 
      gnomeExtensions.grand-theft-focus
      gnomeExtensions.hue-lights
      gnomeExtensions.gesture-improvements # nog bekijken
      gnomeExtensions.rounded-corners # misschien niet nodig


      # Obs plugins
      obs-studio-plugins.obs-move-transition
      obs-studio-plugins.obs-backgroundremoval
      obs-studio-plugins.input-overlay
      obs-studio

  	];

    home.stateVersion = "23.05";

    # Configuration fish
    programs.fish = {
      enable = true;
      shellAliases = {
        update="dconf dump / | dconf2nix > /etc/nixos/dconf.nix && sudo nixos-rebuild switch";
        ask = "shell-genie ask";
        cls = "clear";
        arch="distrobox-enter --root arch";
      };
      interactiveShellInit = ''
        set fish_greeting # Disable greeting
      '';
      shellInit = "disfetch\n starship init fish | source\n thefuck --alias | source ";
      plugins = [
      ];
    };

    # xdg

    xdg.mimeApps = {
      enable = true;
      # default applications
      associations.added = {
        "inode/directory" = ["org.gnome.Nautilus.desktop"];
      };
      defaultApplications = {
        "inode/directory" = ["org.gnome.Nautilus.desktop"];
      };
    };
    # Configs

    # Starship
    programs.starship = {
      enable = true;
      };

    # Write files
    home.file = {
      # Configuration written to ~/.config/starship.toml
      "/home/${user}/.config/starship.toml".text = ''
        format = """
        [](#3B4252)\
        $username\
        [](bg:#434C5E fg:#3B4252)\
        $directory\
        [](fg:#434C5E bg:#4C566A)\
        $git_branch\
        $git_status\
        [](fg:#4C566A bg:#86BBD8)\
        $c\
        $elixir\
        $elm\
        $golang\
        $haskell\
        $java\
        $julia\
        $nodejs\
        $nim\
        $rust\
        [](fg:#86BBD8 bg:#06969A)\
        $docker_context\
        [](fg:#06969A bg:#33658A)\
        $time\
        [ ](fg:#33658A)\
        """
        command_timeout = 5000
        # Disable the blank line at the start of the prompt
        # add_newline = false

        # You can also replace your username with a neat symbol like  to save some space
        [username]
        show_always = true
        style_user = "bg:#3B4252"
        style_root = "bg:#3B4252"
        format = '[$user ]($style)'

        [directory]
        style = "bg:#434C5E"
        format = "[ $path ]($style)"
        truncation_length = 3
        truncation_symbol = "…/"

        # Here is how you can shorten some long paths by text replacement
        # similar to mapped_locations in Oh My Posh:
        [directory.substitutions]
        "Documents" = " "
        "Downloads" = " "
        "Music" = " "
        "Pictures" = " "
        # Keep in mind that the order matters. For example:
        # "Important Documents" = "  "
        # will not be replaced, because "Documents" was already substituted before.
        # So either put "Important Documents" before "Documents" or use the substituted version:
        # "Important  " = "  "

        [c]
        symbol = " "
        style = "bg:#86BBD8"
        format = '[ $symbol ($version) ]($style)'

        [docker_context]
        symbol = " "
        style = "bg:#06969A"
        format = '[ $symbol $context ]($style) $path'

        [elixir]
        symbol = " "
        style = "bg:#86BBD8"
        format = '[ $symbol ($version) ]($style)'

        [elm]
        symbol = " "
        style = "bg:#86BBD8"
        format = '[ $symbol ($version) ]($style)'

        [git_branch]
        symbol = ""
        style = "bg:#4C566A"
        format = '[ $symbol $branch ]($style)'

        [git_status]
        style = "bg:#4C566A"
        format = '[$all_status$ahead_behind ]($style)'

        [golang]
        symbol = " "
        style = "bg:#86BBD8"
        format = '[ $symbol ($version) ]($style)'

        [haskell]
        symbol = " "
        style = "bg:#86BBD8"
        format = '[ $symbol ($version) ]($style)'

        [java]
        symbol = " "
        style = "bg:#86BBD8"
        format = '[ $symbol ($version) ]($style)'

        [julia]
        symbol = " "
        style = "bg:#86BBD8"
        format = '[ $symbol ($version) ]($style)'

        [nodejs]
        symbol = ""
        style = "bg:#86BBD8"
        format = '[ $symbol ($version) ]($style)'

        [nim]
        symbol = " "
        style = "bg:#86BBD8"
        format = '[ $symbol ($version) ]($style)'

        [rust]
        symbol = ""
        style = "bg:#86BBD8"
        format = '[ $symbol ($version) ]($style)'

        [time]
        disabled = false
        time_format = "%R" # Hour:Minute Format
        style = "bg:#33658A"
        format = '[ $time ]($style)'
      '';
      # Autostart signal
      "/home/${user}/.config/autostart/signal.desktop".text = ''
      [Desktop Entry]
      Type=Application
      Name=Signal
      Exec=signal-desktop --start-in-tray
      Comment=Load Signal in the background
      '';
      # Autostart element
      "/home/${user}/.config/autostart/element.desktop".text = ''
      [Desktop Entry]
      Type=Application
      Name=Element
      Exec=element-desktop --hidden
      Comment=Load Element in the background
      '';
      # Autostart discord
      "/home/${user}/.config/autostart/discord.desktop".text = ''
      [Desktop Entry]
      Type=Application
      Name=Discord
      Exec=discord --start-minimized
      Comment=Load Discord in the background
      '';
      # Autostart telegram
      "/home/${user}/.config/autostart/telegram.desktop".text = ''
      [Desktop Entry]
      Type=Application
      Name=Telegram
      Exec=telegram-desktop -startintray
      Comment=Load Telegram in the background
      '';
      };
    # Bibata-cursor
    home.pointerCursor = 
      let 
        getFrom = url: hash: name: {
            gtk.enable = true;
            x11.enable = true;
            name = name;
            size = 24;
            package = 
              pkgs.runCommand "moveUp" {} ''
                mkdir -p $out/share/icons
                ln -s ${pkgs.fetchzip {
                  url = url;
                  hash = hash;
                }} $out/share/icons/${name}
            '';
          };
      in
        getFrom 
          "https://github.com/ful1e5/Bibata_Cursor/releases/download/v2.0.3/Bibata-Modern-Classic.tar.gz"
          "sha256-vn+91iKXWo++4bi3m9cmdRAXFMeAqLij+SXaSChedow="
          "Bibata_Cursor";
    };
  # Programs
  programs = {
    # Fish
    fish.enable = true;
    noisetorch.enable = true; # needs to be system program
    steam = {
      enable = true;
      remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
      dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
    };
    dconf.enable = true;
  };

  # Services
  services = {
    flatpak.enable = true; # Enable flatpak
    openssh.enable = true; #TODO - ssh web server
    udev.extraRules = ''
    #Enable user access to keyboard using uinput event generator
    SUBSYSTEM=="misc", KERNEL=="uinput", OPTIONS+="static_node=uinput", TAG+="uaccess"
    '';
  };
  
  # Maintenence

  # Auto remove
  nix = {
    settings.auto-optimise-store = true;
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 7d";
    };
  };

  # Auto update
  system.autoUpgrade = {
    enable = true;
    channel = "https://nixos.org/channels/nixos-23.05";
  };



  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "23.05"; # Did you read the comment?
}
