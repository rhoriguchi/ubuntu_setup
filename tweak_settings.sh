
#!/usr/bin/env bash

set -ex

######################### Settings #########################

gsettings set ca.desrt.dconf-editor.Settings show-warning false
gsettings set org.gnome.desktop.interface gtk-enable-primary-paste false
gsettings set org.gnome.desktop.wm.preferences action-middle-click-titlebar 'none'
gsettings set org.gnome.desktop.wm.preferences num-workspaces 1
gsettings set org.gnome.gedit.plugins.filebrowser filter-mode "['hide-binary']"
gsettings set org.gnome.gedit.preferences.editor display-line-numbers true
gsettings set org.gnome.gedit.preferences.editor insert-spaces true
gsettings set org.gnome.gedit.preferences.editor tabs-size 4
gsettings set org.gnome.login-screen enable-fingerprint-authentication false
gsettings set org.gnome.login-screen enable-smartcard-authentication false
gsettings set org.gnome.mutter dynamic-workspaces false
gsettings set org.gnome.nautilus.preferences show-hidden-files true
gsettings set org.gnome.settings-daemon.plugins.power power-button-action 'suspend'
gsettings set org.gnome.shell favorite-apps '[]'

######################### Keybindings #########################

gsettings set org.freedesktop.ibus.general.hotkey next-engine '[]'
gsettings set org.freedesktop.ibus.general.hotkey next-engine-in-menu '[]'
gsettings set org.freedesktop.ibus.general.hotkey trigger '[]'
gsettings set org.freedesktop.ibus.general.hotkey triggers '[]'
gsettings set org.freedesktop.ibus.panel.emoji hotkey '[]'
gsettings set org.freedesktop.ibus.panel.emoji unicode-hotkey '[]'
gsettings set org.gnome.desktop.wm.keybindings activate-window-menu '[]'
gsettings set org.gnome.desktop.wm.keybindings begin-move '[]'
gsettings set org.gnome.desktop.wm.keybindings begin-resize '[]'
gsettings set org.gnome.desktop.wm.keybindings close "['<Alt>F4']"
gsettings set org.gnome.desktop.wm.keybindings cycle-group '[]'
gsettings set org.gnome.desktop.wm.keybindings cycle-group-backward '[]'
gsettings set org.gnome.desktop.wm.keybindings cycle-panels '[]'
gsettings set org.gnome.desktop.wm.keybindings cycle-panels-backward '[]'
gsettings set org.gnome.desktop.wm.keybindings cycle-windows '[]'
gsettings set org.gnome.desktop.wm.keybindings cycle-windows '[]'
gsettings set org.gnome.desktop.wm.keybindings cycle-windows-backward '[]'
gsettings set org.gnome.desktop.wm.keybindings cycle-windows-backward '[]'
gsettings set org.gnome.desktop.wm.keybindings minimize '[]'
gsettings set org.gnome.desktop.wm.keybindings move-to-monitor-down '[]'
gsettings set org.gnome.desktop.wm.keybindings move-to-monitor-left '[]'
gsettings set org.gnome.desktop.wm.keybindings move-to-monitor-right '[]'
gsettings set org.gnome.desktop.wm.keybindings move-to-monitor-up '[]'
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-1 '[]'
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-down '[]'
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-last '[]'
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-left '[]'
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-right '[]'
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-up '[]'
gsettings set org.gnome.desktop.wm.keybindings panel-main-menu '[]'
gsettings set org.gnome.desktop.wm.keybindings show-desktop "['<Super>d']"
gsettings set org.gnome.desktop.wm.keybindings switch-applications-backward '[]'
gsettings set org.gnome.desktop.wm.keybindings switch-applications-backward '[]'
gsettings set org.gnome.desktop.wm.keybindings switch-group '[]'
gsettings set org.gnome.desktop.wm.keybindings switch-group-backward '[]'
gsettings set org.gnome.desktop.wm.keybindings switch-input-source '[]'
gsettings set org.gnome.desktop.wm.keybindings switch-input-source-backward '[]'
gsettings set org.gnome.desktop.wm.keybindings switch-panels '[]'
gsettings set org.gnome.desktop.wm.keybindings switch-panels-backward '[]'
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-1 '[]'
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down '[]'
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-last '[]'
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up '[]'
gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward '[]'
gsettings set org.gnome.desktop.wm.keybindings toggle-maximized "['<Super>Up']"
gsettings set org.gnome.desktop.wm.keybindings unmaximize '[]'
gsettings set org.gnome.mutter.keybindings rotate-monitor '[]'
gsettings set org.gnome.mutter.keybindings switch-monitor '[]'
gsettings set org.gnome.mutter.wayland.keybindings switch-to-session-1 '[]'
gsettings set org.gnome.mutter.wayland.keybindings switch-to-session-10 '[]'
gsettings set org.gnome.mutter.wayland.keybindings switch-to-session-11 '[]'
gsettings set org.gnome.mutter.wayland.keybindings switch-to-session-12 '[]'
gsettings set org.gnome.mutter.wayland.keybindings switch-to-session-2 '[]'
gsettings set org.gnome.mutter.wayland.keybindings switch-to-session-3 '[]'
gsettings set org.gnome.mutter.wayland.keybindings switch-to-session-4 '[]'
gsettings set org.gnome.mutter.wayland.keybindings switch-to-session-5 '[]'
gsettings set org.gnome.mutter.wayland.keybindings switch-to-session-6 '[]'
gsettings set org.gnome.mutter.wayland.keybindings switch-to-session-7 '[]'
gsettings set org.gnome.mutter.wayland.keybindings switch-to-session-8 '[]'
gsettings set org.gnome.mutter.wayland.keybindings switch-to-session-9 '[]'
gsettings set org.gnome.settings-daemon.plugins.media-keys area-screenshot '[]'
gsettings set org.gnome.settings-daemon.plugins.media-keys area-screenshot-clip '[]'
gsettings set org.gnome.settings-daemon.plugins.media-keys calculator-static '[]'
gsettings set org.gnome.settings-daemon.plugins.media-keys email '[]'
gsettings set org.gnome.settings-daemon.plugins.media-keys email-static '[]'
gsettings set org.gnome.settings-daemon.plugins.media-keys help '[]'
gsettings set org.gnome.settings-daemon.plugins.media-keys home '[]'
gsettings set org.gnome.settings-daemon.plugins.media-keys logout '[]'
gsettings set org.gnome.settings-daemon.plugins.media-keys magnifier '[]'
gsettings set org.gnome.settings-daemon.plugins.media-keys magnifier-zoom-in '[]'
gsettings set org.gnome.settings-daemon.plugins.media-keys magnifier-zoom-out '[]'
gsettings set org.gnome.settings-daemon.plugins.media-keys screencast "['<Ctrl><Shift><Alt>R']"
gsettings set org.gnome.settings-daemon.plugins.media-keys screenreader '[]'
gsettings set org.gnome.settings-daemon.plugins.media-keys screenshot '[]'
gsettings set org.gnome.settings-daemon.plugins.media-keys screenshot-clip '[]'
gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "['<Alt>t']"
gsettings set org.gnome.settings-daemon.plugins.media-keys window-screenshot '[]'
gsettings set org.gnome.settings-daemon.plugins.media-keys window-screenshot-clip '[]'
gsettings set org.gnome.settings-daemon.plugins.media-keys www '[]'
gsettings set org.gnome.settings-daemon.plugins.media-keys www-static '[]'
gsettings set org.gnome.shell.keybindings focus-active-notification '[]'
gsettings set org.gnome.shell.keybindings switch-to-application-1 '[]'
gsettings set org.gnome.shell.keybindings switch-to-application-2 '[]'
gsettings set org.gnome.shell.keybindings switch-to-application-3 '[]'
gsettings set org.gnome.shell.keybindings switch-to-application-4 '[]'
gsettings set org.gnome.shell.keybindings switch-to-application-5 '[]'
gsettings set org.gnome.shell.keybindings switch-to-application-6 '[]'
gsettings set org.gnome.shell.keybindings switch-to-application-7 '[]'
gsettings set org.gnome.shell.keybindings switch-to-application-8 '[]'
gsettings set org.gnome.shell.keybindings switch-to-application-9 '[]'
gsettings set org.gnome.shell.keybindings toggle-application-view '[]'
gsettings set org.gnome.shell.keybindings toggle-message-tray '[]'
gsettings set org.gnome.shell.keybindings toggle-overview '[]'