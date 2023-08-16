# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "ca/desrt/dconf-editor" = {
      saved-pathbar-path = "/org/gnome/portal/filechooser/org/qbittorrent/qBittorrent/last-folder-path";
      saved-view = "/org/gnome/portal/filechooser/";
      window-height = 985;
      window-is-maximized = false;
      window-width = 1904;
    };

    "com/github/maoschanz/drawing" = {
      last-active-tool = "pencil";
      last-version = "1.0.2";
      maximized = false;
    };

    "com/github/maoschanz/drawing/tools-options" = {
      last-active-shape = "polygon";
      last-delete-replace = "alpha";
      last-font-name = "Sans";
      last-left-rgba = [ "0.9647058823529412" "0.8274509803921568" "0.17647058823529413" "1.0" ];
      last-right-rgba = [ "1.0" "1.0" "0.0" "0.5" ];
      last-shape-filling = "empty";
      last-size = 40;
      last-text-background = "thin-outline";
      use-antialiasing = true;
    };

    "io/missioncenter/MissionCenter" = {
      window-height = 1152;
      window-selected-page = "performance-page";
      window-width = 1904;
    };

    "org/gnome/Connections" = {
      first-run = false;
    };

    "org/gnome/Console" = {
      font-scale = 1.0;
      last-window-size = mkTuple [ 948 512 ];
    };

    "org/gnome/Totem" = {
      active-plugins = [ "screensaver" "rotation" "autoload-subtitles" "skipto" "open-directory" "screenshot" "apple-trailers" "movie-properties" "mpris" "save-file" "recent" "variable-rate" "vimeo" ];
      subtitle-encoding = "UTF-8";
    };

    "org/gnome/baobab/ui" = {
      is-maximized = false;
      window-size = mkTuple [ 1904 1032 ];
    };

    "org/gnome/calculator" = {
      accuracy = 9;
      angle-units = "degrees";
      base = 10;
      button-mode = "basic";
      number-format = "automatic";
      show-thousands = false;
      show-zeroes = false;
      source-currency = "";
      source-units = "degree";
      target-currency = "";
      target-units = "radian";
      word-size = 64;
    };

    "org/gnome/control-center" = {
      last-panel = "wifi";
      window-state = mkTuple [ 948 1032 ];
    };

    "org/gnome/desktop/app-folders" = {
      folder-children = [ "Utilities" "YaST" "3e5ef503-8fc2-4cd5-8819-85a4221bc9c5" "76680af2-8ea3-4c0f-a475-9b18aaa4eccc" "ae4dac05-1ecc-4adf-a859-32bccfc2f2d3" "c0fe8b5f-b919-407a-b18a-ecd2aa2557f8" "7fa2f307-291e-4051-8616-2b6c5659c344" "2c4a101a-8995-44bf-8fe8-94a97084b4f9" "5e26c920-7589-4ec0-9c94-ef598c315fb0" ];
    };

    "org/gnome/desktop/app-folders/folders/2c4a101a-8995-44bf-8fe8-94a97084b4f9" = {
      apps = [ "anki.desktop" "org.gnome.Calculator.desktop" "org.gnome.Pomodoro.desktop" ];
      name = "School";
      translate = false;
    };

    "org/gnome/desktop/app-folders/folders/3e5ef503-8fc2-4cd5-8819-85a4221bc9c5" = {
      apps = [ "element-desktop.desktop" "discord.desktop" "org.telegram.desktop.desktop" "signal-desktop.desktop" ];
      name = "Chat";
      translate = false;
    };

    "org/gnome/desktop/app-folders/folders/5e26c920-7589-4ec0-9c94-ef598c315fb0" = {
      apps = [ "org.gnome.Software.desktop" "org.gnome.Settings.desktop" "org.gnome.DiskUtility.desktop" "gparted.desktop" "io.missioncenter.MissionCenter.desktop" "org.gnome.baobab.desktop" "htop.desktop" "org.gnome.Logs.desktop" "nvidia-settings.desktop" "nixos-manual.desktop" "fish.desktop" "gnome-system-monitor.desktop" ];
      name = "System";
      translate = false;
    };

    "org/gnome/desktop/app-folders/folders/76680af2-8ea3-4c0f-a475-9b18aaa4eccc" = {
      apps = [ "com.heroicgameslauncher.hgl.desktop" "org.prismlauncher.PrismLauncher.desktop" "steam.desktop" "protonup-qt.desktop" "Valley.desktop" ];
      name = "Games";
    };

    "org/gnome/desktop/app-folders/folders/7fa2f307-291e-4051-8616-2b6c5659c344" = {
      apps = [ "org.gnome.TextEditor.desktop" "onlyoffice-desktopeditors.desktop" "org.gnome.Evince.desktop" "simple-scan.desktop" "cups.desktop" "micro.desktop" ];
      name = "Documents";
      translate = false;
    };

    "org/gnome/desktop/app-folders/folders/Utilities" = {
      apps = [ "org.flameshot.Flameshot.desktop" "io.github.antimicrox.antimicrox.desktop" "org.gnome.tweaks.desktop" "org.gnome.FileRoller.desktop" "org.gnome.Connections.desktop" "org.gnome.Characters.desktop" "org.qbittorrent.qBittorrent.desktop" "org.gnome.clocks.desktop" "org.gnome.Extensions.desktop" "org.gnome.font-viewer.desktop" "virt-manager.desktop" "org.gnome.Weather.desktop" "github-desktop.desktop" "ca.desrt.dconf-editor.desktop" ];
      categories = [ "X-GNOME-Utilities" ];
      excluded-apps = [ "org.gnome.eog.desktop" "org.gnome.Evince.desktop" "simple-scan.desktop" "org.gnome.DiskUtility.desktop" "org.gnome.Logs.desktop" "gnome-system-monitor.desktop" "org.gnome.baobab.desktop" ];
      name = "X-GNOME-Utilities.directory";
      translate = true;
    };

    "org/gnome/desktop/app-folders/folders/YaST" = {
      categories = [ "X-SuSE-YaST" ];
      name = "suse-yast.directory";
      translate = true;
    };

    "org/gnome/desktop/app-folders/folders/ae4dac05-1ecc-4adf-a859-32bccfc2f2d3" = {
      apps = [ "gimp.desktop" "org.inkscape.Inkscape.desktop" "org.gnome.eog.desktop" "glaxnimate.desktop" "upscayl.desktop" "com.github.maoschanz.drawing.desktop" ];
      name = "Image";
      translate = false;
    };

    "org/gnome/desktop/app-folders/folders/c0fe8b5f-b919-407a-b18a-ecd2aa2557f8" = {
      apps = [ "noisetorch.desktop" "droidcam.desktop" "com.obsproject.Studio.desktop" "fr.handbrake.ghb.desktop" "org.kde.kdenlive.desktop" "org.rncbc.qpwgraph.desktop" "audacity.desktop" "org.gnome.Totem.desktop" ];
      name = "Sound & Video";
      translate = false;
    };

    "org/gnome/desktop/background" = {
      picture-options = "zoom";
      picture-uri = "/home/otis/.config/background";
      picture-uri-dark = "/home/otis/.config/background";
      primary-color = "#02023c3c8888";
    };

    "org/gnome/desktop/calendar" = {
      show-weekdate = true;
    };

    "org/gnome/desktop/input-sources" = {
      sources = [ (mkTuple [ "xkb" "us+intl" ]) ];
      xkb-options = [ "terminate:ctrl_alt_bksp" ];
    };

    "org/gnome/desktop/interface" = {
      clock-show-weekday = true;
      color-scheme = "prefer-dark";
      cursor-size = 24;
      cursor-theme = "Bibata_Cursor";
      font-antialiasing = "grayscale";
      font-hinting = "slight";
      font-name = "Cantarell 11";
      gtk-key-theme = "Default";
      gtk-theme = "adw-gtk3-dark";
      icon-theme = "Adwaita";
      monospace-font-name = "MesloLGS Nerd Font Mono 10";
      overlay-scrolling = true;
      show-battery-percentage = false;
      text-scaling-factor = 1.0;
    };

    "org/gnome/desktop/notifications" = {
      application-children = [ "firefox" "io-github-seadve-kooha" "org-gnome-console" "code" "gnome-power-panel" "org-gnome-terminal-preferences" "gnome-network-panel" "org-gnome-software" "com-obsproject-studio" "signal-desktop" "discord" "anki" "org-gnome-characters" "org-gnome-nautilus" "org-gnome-baobab" ];
      show-banners = true;
    };

    "org/gnome/desktop/notifications/application/anki" = {
      application-id = "anki.desktop";
    };

    "org/gnome/desktop/notifications/application/code" = {
      application-id = "code.desktop";
    };

    "org/gnome/desktop/notifications/application/com-obsproject-studio" = {
      application-id = "com.obsproject.Studio.desktop";
    };

    "org/gnome/desktop/notifications/application/discord" = {
      application-id = "discord.desktop";
    };

    "org/gnome/desktop/notifications/application/firefox" = {
      application-id = "firefox.desktop";
    };

    "org/gnome/desktop/notifications/application/gnome-network-panel" = {
      application-id = "gnome-network-panel.desktop";
    };

    "org/gnome/desktop/notifications/application/gnome-power-panel" = {
      application-id = "gnome-power-panel.desktop";
    };

    "org/gnome/desktop/notifications/application/io-github-seadve-kooha" = {
      application-id = "io.github.seadve.Kooha.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-baobab" = {
      application-id = "org.gnome.baobab.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-characters" = {
      application-id = "org.gnome.Characters.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-console" = {
      application-id = "org.gnome.Console.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-nautilus" = {
      application-id = "org.gnome.Nautilus.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-settings" = {
      application-id = "org.gnome.Settings.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-software" = {
      application-id = "org.gnome.Software.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-terminal-preferences" = {
      application-id = "org.gnome.Terminal.Preferences.desktop";
    };

    "org/gnome/desktop/notifications/application/org-qbittorrent-qbittorrent" = {
      application-id = "org.qbittorrent.qBittorrent.desktop";
    };

    "org/gnome/desktop/notifications/application/signal-desktop" = {
      application-id = "signal-desktop.desktop";
    };

    "org/gnome/desktop/peripherals/touchpad" = {
      tap-to-click = true;
      two-finger-scrolling-enabled = true;
    };

    "org/gnome/desktop/privacy" = {
      recent-files-max-age = -1;
      remove-old-temp-files = true;
      remove-old-trash-files = true;
    };

    "org/gnome/desktop/remote-desktop/rdp" = {
      enable = true;
      tls-cert = "/home/otis/.local/share/gnome-remote-desktop/rdp-tls.crt";
      tls-key = "/home/otis/.local/share/gnome-remote-desktop/rdp-tls.key";
      view-only = false;
    };

    "org/gnome/desktop/search-providers" = {
      sort-order = [ "org.gnome.Contacts.desktop" "org.gnome.Documents.desktop" "org.gnome.Nautilus.desktop" ];
    };

    "org/gnome/desktop/session" = {
      idle-delay = mkUint32 300;
    };

    "org/gnome/desktop/sound" = {
      event-sounds = true;
      theme-name = "__custom";
    };

    "org/gnome/desktop/wm/keybindings" = {
      close = [ "<Super>q" "<Alt>F4" ];
      maximize = [];
      minimize = [ "<Super>h" ];
      move-to-monitor-down = [];
      move-to-monitor-left = [];
      move-to-monitor-right = [];
      move-to-monitor-up = [];
      move-to-workspace-down = [];
      move-to-workspace-up = [];
      show-desktop = [ "<Super>d" ];
      switch-to-workspace-1 = [ "<Super>1" ];
      switch-to-workspace-2 = [ "<Super>2" ];
      switch-to-workspace-3 = [ "<Super>3" ];
      switch-to-workspace-4 = [ "<Super>4" ];
      switch-to-workspace-down = [ "<Primary><Super>Down" "<Primary><Super>j" ];
      switch-to-workspace-left = [];
      switch-to-workspace-right = [];
      switch-to-workspace-up = [ "<Primary><Super>Up" "<Primary><Super>k" ];
      toggle-maximized = [];
      toggle-on-all-workspaces = [ "<Super>w" ];
      unmaximize = [];
    };

    "org/gnome/desktop/wm/preferences" = {
      action-middle-click-titlebar = "minimize";
      button-layout = "appmenu:minimize,maximize,close";
      num-workspaces = 4;
    };

    "org/gnome/epiphany" = {
      ask-for-default = false;
    };

    "org/gnome/epiphany/state" = {
      is-maximized = false;
      window-size = mkTuple [ 1024 768 ];
    };

    "org/gnome/evince/default" = {
      window-ratio = mkTuple [ 1.592421 0.608134 ];
    };

    "org/gnome/evolution-data-server" = {
      migrated = true;
    };

    "org/gnome/file-roller/listing" = {
      list-mode = "as-folder";
      name-column-width = 250;
      show-path = false;
      sort-method = "name";
      sort-type = "ascending";
    };

    "org/gnome/file-roller/ui" = {
      sidebar-width = 200;
      window-height = 465;
      window-width = 948;
    };

    "org/gnome/gnome-system-monitor" = {
      current-tab = "processes";
      maximized = false;
      network-total-in-bits = false;
      show-dependencies = false;
      show-whose-processes = "user";
      window-state = mkTuple [ 948 512 ];
    };

    "org/gnome/gnome-system-monitor/disktreenew" = {
      col-6-visible = true;
      col-6-width = 0;
    };

    "org/gnome/mutter" = {
      edge-tiling = false;
      workspaces-only-on-primary = false;
    };

    "org/gnome/mutter/keybindings" = {
      toggle-tiled-left = [];
      toggle-tiled-right = [];
    };

    "org/gnome/mutter/wayland/keybindings" = {
      restore-shortcuts = [];
    };

    "org/gnome/nautilus/compression" = {
      default-compression-format = "zip";
    };

    "org/gnome/nautilus/preferences" = {
      default-folder-viewer = "icon-view";
      fts-enabled = false;
      migrated-gtk-settings = true;
      search-filter-time-type = "last_modified";
      search-view = "list-view";
    };

    "org/gnome/nautilus/window-state" = {
      initial-size = mkTuple [ 948 512 ];
    };

    "org/gnome/nm-applet/eap/17b45eca-34d1-4428-ab9c-97c1ccb45bf7" = {
      ignore-ca-cert = false;
      ignore-phase2-ca-cert = false;
    };

    "org/gnome/photos" = {
      window-maximized = true;
    };

    "org/gnome/pomodoro/state" = {
      timer-date = "2023-08-15T16:59:06+0000";
      timer-elapsed = 0.0;
      timer-paused = false;
      timer-score = 0.0;
      timer-state = "null";
      timer-state-date = "2023-08-15T16:59:06+0000";
      timer-state-duration = 0.0;
    };

    "org/gnome/portal/filechooser/org/qbittorrent/qBittorrent" = {
      last-folder-path = "/run/media/otis/Ventoy";
    };

    "org/gnome/settings-daemon/plugins/color" = {
      night-light-enabled = false;
      night-light-schedule-automatic = true;
    };

    "org/gnome/settings-daemon/plugins/media-keys" = {
      calculator = [ "<Super>c" ];
      custom-keybindings = [ "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom4/" ];
      email = [ "<Super>e" ];
      home = [ "<Super>f" ];
      logout = [ "<Control><Alt>BackSpace" ];
      rotate-video-lock-static = [];
      screensaver = [ "<Super>l" ];
      terminal = [ "<Super>t" ];
      www = [ "<Super>b" ];
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
      binding = "<Shift><Alt>s";
      command = "flameshot gui";
      name = "Flameshot";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1" = {
      binding = "<Shift><Alt>o";
      command = "bash -c 'flameshot gui --raw | tesseract stdin stdout | wl-copy'";
      name = "OCR";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2" = {
      binding = "<Super>t";
      command = "kgx";
      name = "Open terminal";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom4" = {
      binding = "<Shift><Super>w";
      command = "grub-reboot 2 && sudo reboot";
      name = "Reboot to windows";
    };

    "org/gnome/settings-daemon/plugins/power" = {
      sleep-inactive-ac-timeout = 300;
      sleep-inactive-battery-timeout = 300;
      sleep-inactive-battery-type = "suspend";
    };

    "org/gnome/shell" = {
      app-picker-layout = "[{'3e5ef503-8fc2-4cd5-8819-85a4221bc9c5': <{'position': <0>}>, '7fa2f307-291e-4051-8616-2b6c5659c344': <{'position': <1>}>, '76680af2-8ea3-4c0f-a475-9b18aaa4eccc': <{'position': <2>}>, 'ae4dac05-1ecc-4adf-a859-32bccfc2f2d3': <{'position': <3>}>, '2c4a101a-8995-44bf-8fe8-94a97084b4f9': <{'position': <4>}>, 'c0fe8b5f-b919-407a-b18a-ecd2aa2557f8': <{'position': <5>}>, '5e26c920-7589-4ec0-9c94-ef598c315fb0': <{'position': <6>}>, 'Utilities': <{'position': <7>}>}]";
      disable-user-extensions = false;
      disabled-extensions = [ "pop-launcher-super-key@ManeLippert" "forge@jmmaranan.com" ];
      enabled-extensions = [ "blur-my-shell@aunetx" "pop-shell@system76.com" "hue-lights@chlumskyvaclav.gmail.com" "grand-theft-focus@zalckos.github.com" "nothing-to-say@extensions.gnome.wouter.bolsterl.ee" "pano@elhan.io" "customreboot@nova1545" "drive-menu@gnome-shell-extensions.gcampax.github.com" "reboottosomething@jangberry.eu" "openweather-extension@jenslody.de" "espresso@coadmunkee.github.com" "quick-settings-tweaks@qwreey" "native-window-placement@gnome-shell-extensions.gcampax.github.com" "desktop-cube@schneegans.github.com" "gestureImprovements@gestures" "pomodoro@arun.codito.in" "Rounded_Corners@lennart-k" "dash-to-dock@micxgx.gmail.com" "legacyschemeautoswitcher@joshimukul29.gmail.com" "ssh-quick-connect@ibrokemy.computer" "gnome-ui-tune@itstime.tech" "user-theme@gnome-shell-extensions.gcampax.github.com" ];
      favorite-apps = [ "firefox.desktop" "org.gnome.Nautilus.desktop" "org.gnome.Console.desktop" "code.desktop" ];
      last-selected-power-profile = "performance";
      welcome-dialog-last-shown-version = "44.1";
    };

    "org/gnome/shell/app-switcher" = {
      current-workspace-only = true;
    };

    "org/gnome/shell/extensions/blur-my-shell" = {
      brightness = 0.61;
      sigma = 40;
    };

    "org/gnome/shell/extensions/blur-my-shell/panel" = {
      brightness = 0.35;
      customize = true;
      sigma = 19;
    };

    "org/gnome/shell/extensions/customreboot" = {
      use-efibootmgr = false;
      use-grub = true;
      use-systemd-boot = false;
    };

    "org/gnome/shell/extensions/dash-to-dock" = {
      apply-custom-theme = true;
      background-opacity = 0.8;
      dash-max-icon-size = 48;
      dock-position = "BOTTOM";
      height-fraction = 0.9;
      hot-keys = false;
      preferred-monitor = -2;
      preferred-monitor-by-connector = "DP-1";
      show-mounts-network = false;
    };

    "org/gnome/shell/extensions/espresso" = {
      has-battery = true;
      user-enabled = true;
    };

    "org/gnome/shell/extensions/gsconnect" = {
      id = "9b9d7d13-04bb-4dd2-83cb-ed0c7b7959f0";
      name = "nixosbox";
    };

    "org/gnome/shell/extensions/gsconnect/preferences" = {
      window-maximized = false;
      window-size = mkTuple [ 948 985 ];
    };

    "org/gnome/shell/extensions/hue-lights" = {
      associated-connection = "{'ecb5fafffe25726f': {'connections': @as [], 'type': ['bridge']}}";
      bridges = "{'ecb5fafffe25726f': {'ip': '192.168.0.7'}}";
      compact-menu = true;
      connection-timeout = 2;
      connection-timeout-sb = 8;
      entertainment = "{'ecb5fafffe25726f': {'autostart': -1}}";
      icon-pack = "bright";
      indicator-position = "right";
      notify-lights = "@a{sa{si}} {}";
      show-scenes = true;
    };

    "org/gnome/shell/extensions/nothing-to-say" = {
      icon-visibility = "always";
      keybinding-toggle-mute = [ "<Ctrl>m" ];
    };

    "org/gnome/shell/extensions/openweather" = {
      city = "51.1844827,3.5665965>Eeklo, Oost-Vlaanderen, Vlaanderen, 9900, België / Belgique / Belgien>0";
      menu-alignment = 42.857143;
      position-index = 1;
      pressure-unit = "hPa";
    };

    "org/gnome/shell/extensions/pano" = {
      global-shortcut = [ "<Super>v" ];
      show-indicator = false;
    };

    "org/gnome/shell/extensions/pop-shell" = {
      activate-launcher = [ "<Super>backslash" ];
      active-hint = false;
      active-hint-border-radius = mkUint32 0;
      focus-down = [ "<Super>Down" ];
      focus-right = [ "<Super>Right" ];
      focus-up = [ "<Super>slash" ];
      fullscreen-launcher = true;
      gap-inner = mkUint32 2;
      gap-outer = mkUint32 2;
      snap-to-grid = true;
      tile-by-default = true;
      tile-move-up = [ "slash" ];
      tile-resize-up = [ "<Shift>slash" ];
    };

    "org/gnome/shell/extensions/quick-settings-tweaks" = {
      add-dnd-quick-toggle-enabled = false;
      datemenu-remove-notifications = false;
      input-always-show = false;
      input-show-selected = false;
      list-buttons = "[{\"name\":\"Clutter_Actor\",\"label\":null,\"visible\":true},{\"name\":\"SystemItem\",\"label\":null,\"visible\":true},{\"name\":\"OutputStreamSlider\",\"label\":null,\"visible\":true},{\"name\":\"InputStreamSlider\",\"label\":null,\"visible\":false},{\"name\":\"BrightnessItem\",\"label\":null,\"visible\":true},{\"name\":\"NMWiredToggle\",\"label\":null,\"visible\":false},{\"name\":\"NMWirelessToggle\",\"label\":null,\"visible\":true},{\"name\":\"NMModemToggle\",\"label\":null,\"visible\":false},{\"name\":\"NMBluetoothToggle\",\"label\":null,\"visible\":false},{\"name\":\"NMVpnToggle\",\"label\":null,\"visible\":false},{\"name\":\"BluetoothToggle\",\"label\":null,\"visible\":true},{\"name\":\"PowerProfilesToggle\",\"label\":null,\"visible\":true},{\"name\":\"NightLightToggle\",\"label\":\"Night Light\",\"visible\":true},{\"name\":\"DarkModeToggle\",\"label\":\"Dark Style\",\"visible\":true},{\"name\":\"RfkillToggle\",\"label\":\"Airplane Mode\",\"visible\":true},{\"name\":\"RotationToggle\",\"label\":\"Auto Rotate\",\"visible\":false},{\"name\":\"BackgroundAppsToggle\",\"label\":\"No Background Apps\",\"visible\":false},{\"name\":\"MediaSection\",\"label\":null,\"visible\":false},{\"name\":\"St_BoxLayout\",\"label\":null,\"visible\":true}]";
      media-control-compact-mode = false;
      notifications-enabled = false;
      output-show-selected = false;
      user-removed-buttons = [];
      volume-mixer-enabled = true;
      volume-mixer-position = "bottom";
      volume-mixer-show-description = false;
      volume-mixer-show-icon = true;
    };

    "org/gnome/shell/keybindings" = {
      focus-active-notification = [];
      open-application-menu = [];
      switch-to-application-1 = [];
      switch-to-application-2 = [];
      switch-to-application-3 = [];
      switch-to-application-4 = [];
      toggle-message-tray = [ "<Super>n" ];
      toggle-overview = [];
    };

    "org/gnome/shell/weather" = {
      automatic-location = true;
      locations = "@av []";
    };

    "org/gnome/shell/world-clocks" = {
      locations = "@av []";
    };

    "org/gnome/software" = {
      check-timestamp = mkInt64 1692106419;
      first-run = false;
      flatpak-purge-timestamp = mkInt64 1692117145;
    };

    "org/gnome/system/location" = {
      enabled = false;
    };

    "org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9" = {
      background-color = "rgb(23,20,33)";
      foreground-color = "rgb(208,207,204)";
    };

    "org/gnome/tweaks" = {
      show-extensions-notice = false;
    };

    "org/gtk/gtk4/settings/color-chooser" = {
      custom-colors = [ (mkTuple [ 1.0 0.964706 ]) (mkTuple [ 0.705882 0.654902 ]) (mkTuple [ 0.968627 0.635294 ]) (mkTuple [ 6.6667e-2 0.780392 ]) (mkTuple [ 0.92549 0.368627 ]) ];
      selected-color = mkTuple [ true 1.0 ];
    };

    "org/gtk/gtk4/settings/file-chooser" = {
      date-format = "regular";
      location-mode = "path-bar";
      show-hidden = true;
      show-size-column = true;
      show-type-column = true;
      sidebar-width = 140;
      sort-column = "name";
      sort-directories-first = true;
      sort-order = "ascending";
      type-format = "category";
      view-type = "list";
      window-size = mkTuple [ 859 374 ];
    };

    "org/gtk/settings/color-chooser" = {
      custom-colors = [ (mkTuple [ 1.0 1.0 ]) ];
      selected-color = mkTuple [ true 0.964706 ];
    };

    "org/gtk/settings/file-chooser" = {
      date-format = "regular";
      location-mode = "path-bar";
      show-hidden = false;
      show-size-column = true;
      show-type-column = true;
      sidebar-width = 165;
      sort-column = "name";
      sort-directories-first = false;
      sort-order = "descending";
      type-format = "category";
      window-position = mkTuple [ 35 32 ];
      window-size = mkTuple [ 1203 902 ];
    };

    "org/virt-manager/virt-manager" = {
      manager-window-height = 995;
      manager-window-width = 1904;
    };

    "org/virt-manager/virt-manager/confirm" = {
      delete-storage = true;
      unapplied-dev = true;
    };

    "org/virt-manager/virt-manager/connections" = {
      autoconnect = [ "qemu:///system" ];
      uris = [ "qemu:///system" ];
    };

    "org/virt-manager/virt-manager/details" = {
      show-toolbar = true;
    };

    "org/virt-manager/virt-manager/paths" = {
      media-default = "/home/otis/Downloads";
    };

    "org/virt-manager/virt-manager/urls" = {
      isos = [ "/home/otis/Downloads/nixos-gnome-23.05.997.ddf4688dc7a-x86_64-linux.iso" ];
    };

    "org/virt-manager/virt-manager/vmlist-fields" = {
      disk-usage = false;
      network-traffic = false;
    };

    "org/virt-manager/virt-manager/vms/4d3d22ae3b344900968e875feef810eb" = {
      autoconnect = 1;
      scaling = 1;
      vm-window-size = mkTuple [ 948 995 ];
    };

    "org/virt-manager/virt-manager/vms/5ecf82c6dd1f4815afc0ca64d90188a5" = {
      autoconnect = 1;
      scaling = 1;
      vm-window-size = mkTuple [ 1024 810 ];
    };

    "org/virt-manager/virt-manager/vms/d4e2a88df63f4854ae7ae34ce0460df0" = {
      autoconnect = 1;
      scaling = 1;
      vm-window-size = mkTuple [ 1904 995 ];
    };

  };
}
