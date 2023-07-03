# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "io/github/seadve/Kooha" = {
      capture-mode = "monitor-window";
      profile-id = "mp4";
      record-mic = false;
      screencast-restore-token = "a001ab57-93bb-427b-91f0-c4f604131d87";
      show-pointer = true;
      video-framerate = mkUint32 60;
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
      last-panel = "keyboard";
      window-state = mkTuple [ 1904 1032 ];
    };

    "org/gnome/desktop/app-folders" = {
      folder-children = [ "Utilities" "YaST" ];
    };

    "org/gnome/desktop/app-folders/folders/Utilities" = {
      apps = [ "gnome-abrt.desktop" "gnome-system-log.desktop" "nm-connection-editor.desktop" "org.gnome.baobab.desktop" "org.gnome.Connections.desktop" "org.gnome.DejaDup.desktop" "org.gnome.Dictionary.desktop" "org.gnome.DiskUtility.desktop" "org.gnome.eog.desktop" "org.gnome.Evince.desktop" "org.gnome.FileRoller.desktop" "org.gnome.fonts.desktop" "org.gnome.seahorse.Application.desktop" "org.gnome.tweaks.desktop" "org.gnome.Usage.desktop" "vinagre.desktop" ];
      categories = [ "X-GNOME-Utilities" ];
      name = "X-GNOME-Utilities.directory";
      translate = true;
    };

    "org/gnome/desktop/app-folders/folders/YaST" = {
      categories = [ "X-SuSE-YaST" ];
      name = "suse-yast.directory";
      translate = true;
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
      font-antialiasing = "grayscale";
      font-hinting = "slight";
      gtk-theme = "adw-gtk3-dark";
      monospace-font-name = "MesloLGS Nerd Font Mono 10";
      show-battery-percentage = false;
    };

    "org/gnome/desktop/notifications" = {
      application-children = [ "firefox" "io-github-seadve-kooha" "org-gnome-console" "code" "gnome-power-panel" "org-gnome-terminal-preferences" "gnome-network-panel" "org-gnome-software" ];
      show-banners = true;
    };

    "org/gnome/desktop/notifications/application/code" = {
      application-id = "code.desktop";
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

    "org/gnome/desktop/notifications/application/org-gnome-console" = {
      application-id = "org.gnome.Console.desktop";
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

    "org/gnome/desktop/peripherals/touchpad" = {
      two-finger-scrolling-enabled = true;
    };

    "org/gnome/desktop/privacy" = {
      recent-files-max-age = -1;
      remove-old-temp-files = true;
      remove-old-trash-files = true;
    };

    "org/gnome/desktop/remote-desktop/rdp" = {
      enable = false;
      tls-cert = "/home/otis/.local/share/gnome-remote-desktop/rdp-tls.crt";
      tls-key = "/home/otis/.local/share/gnome-remote-desktop/rdp-tls.key";
      view-only = true;
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
      minimize = [ "<Super>comma" ];
      move-to-monitor-down = [];
      move-to-monitor-left = [];
      move-to-monitor-right = [];
      move-to-monitor-up = [];
      move-to-workspace-down = [];
      move-to-workspace-up = [];
      show-desktop = [ "<Super>d" ];
      switch-to-workspace-down = [ "<Primary><Super>Down" "<Primary><Super>j" ];
      switch-to-workspace-left = [];
      switch-to-workspace-right = [];
      switch-to-workspace-up = [ "<Primary><Super>Up" "<Primary><Super>k" ];
      toggle-maximized = [ "<Super>m" ];
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

    "org/gnome/evolution-data-server" = {
      migrated = true;
    };

    "org/gnome/gnome-system-monitor" = {
      current-tab = "processes";
      maximized = false;
      network-total-in-bits = false;
      show-dependencies = false;
      show-whose-processes = "user";
      window-state = mkTuple [ 948 1032 ];
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

    "org/gnome/nautilus/preferences" = {
      default-folder-viewer = "icon-view";
      migrated-gtk-settings = true;
      search-filter-time-type = "last_modified";
      search-view = "list-view";
    };

    "org/gnome/nautilus/window-state" = {
      initial-size = mkTuple [ 948 1032 ];
    };

    "org/gnome/nm-applet/eap/17b45eca-34d1-4428-ab9c-97c1ccb45bf7" = {
      ignore-ca-cert = false;
      ignore-phase2-ca-cert = false;
    };

    "org/gnome/photos" = {
      window-maximized = true;
    };

    "org/gnome/pomodoro/state" = {
      timer-date = "2023-07-03T12:29:37+0000";
      timer-elapsed = 0.0;
      timer-paused = false;
      timer-score = 0.0;
      timer-state = "null";
      timer-state-date = "2023-07-03T12:29:37+0000";
      timer-state-duration = 0.0;
    };

    "org/gnome/settings-daemon/plugins/color" = {
      night-light-enabled = true;
      night-light-schedule-automatic = true;
    };

    "org/gnome/settings-daemon/plugins/media-keys" = {
      custom-keybindings = [ "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/" ];
      email = [ "<Super>e" ];
      home = [ "<Super>f" ];
      rotate-video-lock-static = [];
      screensaver = [ "<Super>Escape" ];
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

    "org/gnome/settings-daemon/plugins/power" = {
      sleep-inactive-ac-timeout = 300;
      sleep-inactive-battery-timeout = 300;
      sleep-inactive-battery-type = "suspend";
    };

    "org/gnome/shell" = {
      disable-user-extensions = false;
      disabled-extensions = [ "pop-launcher-super-key@ManeLippert" ];
      enabled-extensions = [ "blur-my-shell@aunetx" "pop-shell@system76.com" "hue-lights@chlumskyvaclav.gmail.com" "grand-theft-focus@zalckos.github.com" "nothing-to-say@extensions.gnome.wouter.bolsterl.ee" "pano@elhan.io" "customreboot@nova1545" "drive-menu@gnome-shell-extensions.gcampax.github.com" "reboottosomething@jangberry.eu" "openweather-extension@jenslody.de" "espresso@coadmunkee.github.com" "quick-settings-tweaks@qwreey" "native-window-placement@gnome-shell-extensions.gcampax.github.com" "desktop-cube@schneegans.github.com" "gestureImprovements@gestures" "pomodoro@arun.codito.in" "Rounded_Corners@lennart-k" "dash-to-dock@micxgx.gmail.com" "legacyschemeautoswitcher@joshimukul29.gmail.com" "ssh-quick-connect@ibrokemy.computer" "gnome-ui-tune@itstime.tech" ];
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
      preferred-monitor = -2;
      preferred-monitor-by-connector = "DP-1";
    };

    "org/gnome/shell/extensions/espresso" = {
      has-battery = true;
      user-enabled = true;
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
      keybinding-toggle-mute = [ "<Shift><Alt>m" ];
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
      list-buttons = "[{\"name\":\"Clutter_Actor\",\"label\":null,\"visible\":true},{\"name\":\"SystemItem\",\"label\":null,\"visible\":true},{\"name\":\"OutputStreamSlider\",\"label\":null,\"visible\":false},{\"name\":\"InputStreamSlider\",\"label\":null,\"visible\":false},{\"name\":\"BrightnessItem\",\"label\":null,\"visible\":true},{\"name\":\"NMWiredToggle\",\"label\":null,\"visible\":true},{\"name\":\"NMWirelessToggle\",\"label\":null,\"visible\":true},{\"name\":\"NMModemToggle\",\"label\":null,\"visible\":true},{\"name\":\"NMBluetoothToggle\",\"label\":null,\"visible\":true},{\"name\":\"NMVpnToggle\",\"label\":null,\"visible\":true},{\"name\":\"BluetoothToggle\",\"label\":null,\"visible\":false},{\"name\":\"PowerProfilesToggle\",\"label\":null,\"visible\":false},{\"name\":\"NightLightToggle\",\"label\":\"Night Light\",\"visible\":true},{\"name\":\"DarkModeToggle\",\"label\":\"Dark Style\",\"visible\":true},{\"name\":\"RfkillToggle\",\"label\":\"Airplane Mode\",\"visible\":false},{\"name\":\"RotationToggle\",\"label\":\"Auto Rotate\",\"visible\":false},{\"name\":\"BackgroundAppsToggle\",\"label\":null,\"visible\":false},{\"name\":\"MediaSection\",\"label\":null,\"visible\":false},{\"name\":\"St_BoxLayout\",\"label\":null,\"visible\":true}]";
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
      toggle-message-tray = [ "<Super>v" ];
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
      check-timestamp = mkInt64 1688365925;
      first-run = false;
      flatpak-purge-timestamp = mkInt64 1687620058;
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

    "org/gtk/gtk4/settings/file-chooser" = {
      date-format = "regular";
      location-mode = "path-bar";
      show-hidden = true;
      show-size-column = true;
      show-type-column = true;
      sidebar-width = 140;
      sort-column = "name";
      sort-directories-first = false;
      sort-order = "ascending";
      type-format = "category";
      view-type = "list";
      window-size = mkTuple [ 859 374 ];
    };

    "org/gtk/settings/file-chooser" = {
      date-format = "regular";
      location-mode = "path-bar";
      show-hidden = false;
      show-size-column = true;
      show-type-column = true;
      sidebar-width = 157;
      sort-column = "name";
      sort-directories-first = false;
      sort-order = "descending";
      type-format = "category";
      window-position = mkTuple [ 1723 486 ];
      window-size = mkTuple [ 1203 902 ];
    };

  };
}
