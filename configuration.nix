# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, lib, ... }:

let 
  user="otis";
  name="Otis Lammertyn";
  hostname="nixosbox";

  # network
  defaultGateway="192.168.68.1"; # the ip addr of your gateway
  interface="wlp59s0"; # the output of: route | awk '{if(NR == 3){print $8}}'
  static_ip_address="192.168.68.117"; # your choice

  # unstable packages
   unstableTarball =
    fetchTarball
      https://github.com/NixOS/nixpkgs/archive/nixos-unstable.tar.gz;
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
    };
  };
  time.hardwareClockInLocalTime = true;
  
  # Bootloader.
  boot = {
  	kernelPackages = pkgs.linuxPackages_latest;
  	loader = {
  		timeout = 5;
  		grub = {
  			enable = true;
  			devices = ["nodev"];
  			efiSupport = true;
  			useOSProber = true;
  			configurationLimit = 5;
  		};
  		efi = {
  			canTouchEfiVariables = true;
  			efiSysMountPoint = "/boot";
  		};
 	};
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
      # allowedTCPPorts = [ 22 ];
      # allowedUDPPorts = [ 22 ];
    }
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
    extraGroups = [ "networkmanager" "wheel" ];
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
     unstable.gnome.gnome-remote-desktop
     grub2
     git
     dconf2nix
     disfetch
     htop
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
    in
    {
    # Dconf settings
    imports = [ ./dconf.nix ];

    # Packages
    nixpkgs.config.allowUnfree = true;
    home.packages = with pkgs; [ 
      firefox
      vscode
      flameshot
      tesseract # voor ocr
      gnome.pomodoro
      pop-launcher
      onedrive
      gnome.gnome-tweaks
      adw-gtk3
      unigine-valley

      # Extensions
      gnomeExtensions.blur-my-shell
      gnomeExtensions.pop-shell
      gnomeExtensions.pano
      gnomeExtensions.nothing-to-say
      gnomeExtensions.grand-theft-focus
      gnomeExtensions.hue-lights
      gnomeExtensions.espresso
      gnomeExtensions.just-perfection
      gnomeExtensions.openweather
      gnomeExtensions.quick-settings-tweaker
      gnomeExtensions.desktop-cube
      gnomeExtensions.gesture-improvements
      gnomeExtensions.rounded-corners
      gnomeExtensions.dash-to-dock
      gnomeExtensions.legacy-gtk3-theme-scheme-auto-switcher
      gnomeExtensions.gnome-40-ui-improvements
  	];

    home.stateVersion = "23.05";

    # Configuration fish
    programs.fish = {
      enable = true;
      shellAliases = {
        update="dconf dump / | dconf2nix > /etc/nixos/dconf.nix && sudo nixos-rebuild switch";
      };
      interactiveShellInit = ''
        set fish_greeting # Disable greeting
      '';
      shellInit = "disfetch\n starship init fish | source";
      plugins = [
      ];
    };

    # Configuration starship
    programs.starship = {
      enable = true;
      # Configuration written to ~/.config/starship.toml
      };
    home.file = {
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
    };
  };

  # Fish
  programs = {
    fish.enable = true;
  };

  # Services
  services = {
    flatpak.enable = true; # Enable flatpak
    openssh.enable = true; # Enable the OpenSSH daemon.
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
