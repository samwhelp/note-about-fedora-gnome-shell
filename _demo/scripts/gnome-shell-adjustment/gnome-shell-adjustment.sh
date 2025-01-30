#!/usr/bin/env bash


#set -e




##
## ## Link
##
## * https://github.com/samwhelp/note-about-ubuntu-gnome-shell/blob/gh-pages/_demo/scripts/gnome-shell-adjustment/gnome-shell-adjustment.sh
## * https://raw.githubusercontent.com/samwhelp/note-about-ubuntu-gnome-shell/refs/heads/gh-pages/_demo/scripts/gnome-shell-adjustment/gnome-shell-adjustment.sh
##




##
## ## Gnome Shell / Config / Mouse Button Modifier
##

mod_gnome_shell_config_for_mouse_button_modifier () {


	##
	## ## Disable Super_L Open Menu
	##

	gsettings set org.gnome.mutter overlay-key ''


	##
	## ## Mouse Button Modifier
	##

	gsettings set org.gnome.desktop.wm.preferences mouse-button-modifier "'<Super>'"

	gsettings set org.gnome.desktop.wm.preferences resize-with-right-button true


	return 0
}




##
## ## Gnome Shell / Config / Keybind
##

mod_gnome_shell_config_for_keybind_main () {


	##
	## ## Fix
	##


	##
	## ## Application / Launcher
	##

	gsettings set org.gnome.desktop.wm.keybindings panel-main-menu "['<Alt>F1']"

	gsettings set org.gnome.desktop.wm.keybindings panel-run-dialog "['<Alt>F2']"


	##
	## ## Window
	##

	gsettings set org.gnome.desktop.wm.keybindings close "['<Super>q']"

	gsettings set org.gnome.desktop.wm.keybindings toggle-maximized "['<Super>w']"

	gsettings set org.gnome.desktop.wm.keybindings toggle-fullscreen "['<Super>f']"

	gsettings set org.gnome.desktop.wm.keybindings show-desktop "['<Super>d']"

	gsettings set org.gnome.desktop.wm.keybindings begin-move "['<Super>e']"

	gsettings set org.gnome.desktop.wm.keybindings begin-resize "['<Super>r']"


	##
	## ## Window / Switch
	##

	gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward "['<Super>a']"

	gsettings set org.gnome.desktop.wm.keybindings switch-windows "['<Super>s']"

	gsettings set org.gnome.desktop.wm.keybindings cycle-windows-backward "['<Alt>Escape', '<Super>Left']"

	gsettings set org.gnome.desktop.wm.keybindings cycle-windows "['<Super>Escape', '<Super>Right']"


	##
	## ## Workspace / Switch
	##

	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "[]"

	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "[]"

	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['<Alt>a', '<Alt>Left']"

	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['<Alt>s', '<Alt>Right']"

	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-last "['<Alt>z']"


	##
	## ## Overview / Switch
	##

	gsettings set org.gnome.shell.keybindings toggle-application-view "['<Super>grave', '<Super>Up']"

	gsettings set org.gnome.shell.keybindings toggle-overview "['<Super>Tab', '<Super>Down']"


	##
	## ## Window / Tiling Move
	##

	gsettings set org.gnome.desktop.wm.keybindings maximize "['<Control><Super>Up']"

	gsettings set org.gnome.desktop.wm.keybindings unmaximize "['<Control><Super>Down']"

	gsettings set org.gnome.mutter.keybindings toggle-tiled-left "['<Control><Super>Left']"

	gsettings set org.gnome.mutter.keybindings toggle-tiled-right "['<Control><Super>Right']"


	##
	## ## Screenshot
	##

	gsettings set org.gnome.shell.keybindings screenshot "['Print']"


	##
	## ## Screenshot / Window
	##

	gsettings set org.gnome.shell.keybindings screenshot-window "['<Super>Print']"


	##
	## ## Screenshot / Area
	##

	gsettings set org.gnome.shell.keybindings show-screenshot-ui "['<Alt>Print']"


	##
	## ## Screenshot / Recording
	##

	gsettings set org.gnome.shell.keybindings show-screen-recording-ui "['<Super>v']"




	return 0
}




mod_gnome_shell_config_for_keybind_custom () {


	##
	## ## Clear Old
	##

	dconf reset -f /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/




	##
	## ## Keybind Item
	##


	## ### Logout
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-logout/name "'System_Logout'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-logout/command "'gnome-session-quit --logout'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-logout/binding "'<Shift><Alt>x'"


	## ### Shutdown
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-shutdown/name "'System_Shutdown'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-shutdown/command "'gnome-session-quit --power-off'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-shutdown/binding "'<Shift><Alt>z'"


	## ### System Settings
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/control-center/name "'Control_Center'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/control-center/command "'gnome-control-center'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/control-center/binding "'<Shift><Alt>s'"


	## ### Terminal
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal/name "'Terminal'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal/command "'ptyxis'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal/binding "'<Alt>Return'"


	## ### Terminal-1
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-1/name "'Terminal-1'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-1/command "'ptyxis'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-1/binding "'<Shift><Alt>a'"


	## ### File Manager
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager/name "'File_Manager'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager/command "'nautilus'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager/binding "'<Shift><Alt>f'"


	## ### File Manager 1
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager-1/name "'File_Manager-1'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager-1/command "'thunar'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager-1/binding "'<Shift><Alt>g'"


	## ### Text Editor
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/text-editor/name "'Text_Editor'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/text-editor/command "'gnome-text-editor'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/text-editor/binding "'<Shift><Alt>e'"


	## ### Web Browser
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/web-browser/name "'Web_Browser'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/web-browser/command "'firefox --new-tab about:blank'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/web-browser/binding "'<Shift><Alt>b'"




	##
	## ## Custom Keybindings
	##

	gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-logout/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-shutdown/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/control-center/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-1/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/text-editor/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/web-browser/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager-1/']"


	return 0
}




##
## ## Gnome Shell / Config / Workspace
##

mod_gnome_shell_config_for_workspace () {


	#gsettings set org.gnome.shell.overrides dynamic-workspaces true
	#gsettings set org.gnome.mutter dynamic-workspaces true


	#gsettings set org.gnome.shell.overrides dynamic-workspaces false




	gsettings set org.gnome.mutter dynamic-workspaces false

	gsettings set org.gnome.desktop.wm.preferences num-workspaces 5

	gsettings set org.gnome.desktop.wm.preferences workspace-names "['File', 'Edit', 'Web', 'Term', 'Misc']"




	return 0
}

mod_gnome_shell_config_for_empty_switch_windows () {


	gsettings set org.gnome.desktop.wm.keybindings switch-applications "[]"

	gsettings set org.gnome.desktop.wm.keybindings switch-applications-backward "[]"

	gsettings set org.gnome.desktop.wm.keybindings switch-group "[]"

	gsettings set org.gnome.desktop.wm.keybindings switch-group-backward "[]"

	gsettings set org.gnome.desktop.wm.keybindings switch-panels "[]"

	gsettings set org.gnome.desktop.wm.keybindings switch-panels-backward "[]"

	gsettings set org.gnome.desktop.wm.keybindings switch-windows "[]"

	gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward "[]"




	gsettings set org.gnome.desktop.wm.keybindings cycle-group "[]"

	gsettings set org.gnome.desktop.wm.keybindings cycle-group-backward "[]"

	gsettings set org.gnome.desktop.wm.keybindings cycle-panels "[]"

	gsettings set org.gnome.desktop.wm.keybindings cycle-panels-backward "[]"

	gsettings set org.gnome.desktop.wm.keybindings cycle-windows "[]"

	gsettings set org.gnome.desktop.wm.keybindings cycle-windows-backward "[]"




	return 0
}

mod_gnome_shell_config_for_system_config_quick () {


	gsettings set org.gnome.shell.keybindings focus-active-notification "['<Super>b']"

	gsettings set org.gnome.shell.keybindings toggle-message-tray "['<Super>n']"

	gsettings set org.gnome.shell.keybindings toggle-quick-settings "['<Super>m']"


	return 0
}




##
## ## Tool / Ptyxis / Config
##

mod_tool_ptyxis_config () {

	##
	## > gsettings list-recursively | grep Ptyxis
	##


	mod_tool_ptyxis_config_for_preference

	mod_tool_ptyxis_config_for_keybind

	mod_tool_ptyxis_config_for_profile


	return 0
}

mod_tool_ptyxis_config_for_preference () {


	local path="org.gnome.Ptyxis"




	#gsettings set "${path}" profile-uuids "['default']"
	#gsettings set "${path}" default-profile-uuid "'default'"


	#gsettings set "${path}" profile-uuids "['03333b0b7335d7cd299530f5679b32ae']"
	#gsettings set "${path}" default-profile-uuid "'03333b0b7335d7cd299530f5679b32ae'"




	gsettings set "${path}" use-system-font false

	gsettings set "${path}" font-name "'Monospace 12'"

	gsettings set "${path}" interface-style "'dark'"

	gsettings set "${path}" restore-session false



	##
	## ## dump
	#
	## gsettings list-recursively org.gnome.Ptyxis
	##


	return 0
}

mod_tool_ptyxis_config_for_keybind () {


	local path="org.gnome.Ptyxis.Shortcuts"


	gsettings set "${path}" zoom-one '<Control>0'

	gsettings set "${path}" zoom-out '<Control>minus'

	gsettings set "${path}" zoom-in '<Control>equal'




	##
	## ## dump
	#
	## gsettings list-recursively org.gnome.Ptyxis.Shortcuts
	##


	return 0
}

mod_tool_ptyxis_config_for_profile () {

	
	#local profile="default"
	#local profile="03333b0b7335d7cd299530f5679b32ae"
	local profile=$(gsettings get org.gnome.Ptyxis default-profile-uuid)

	profile=${profile:1:-1} # remove leading and trailing single quotes



	#local path="org.gnome.Ptyxis.Profile:/org/gnome/Ptyxis/Profiles/default/"
	#local path="org.gnome.Ptyxis.Profile:/org/gnome/Ptyxis/Profiles/03333b0b7335d7cd299530f5679b32ae/"
	local path="org.gnome.Ptyxis.Profile:/org/gnome/Ptyxis/Profiles/${profile}/"




	gsettings set "${path}" label "'Default'"

	gsettings set "${path}" opacity 0.9
	
	#gsettings set "${path}" palette "'tango'"
	#gsettings set "${path}" palette "'gnome'"
	#gsettings set "${path}" palette "'dark'"
	#gsettings set "${path}" palette "'solarized'"
	gsettings set "${path}" palette "'Vs Code'"
	



	##
	## ## dump
	##
	## gsettings list-recursively org.gnome.Ptyxis.Profile:/org/gnome/Ptyxis/Profiles/default/
	## gsettings list-recursively org.gnome.Ptyxis.Profile:/org/gnome/Ptyxis/Profiles/03333b0b7335d7cd299530f5679b32ae/
	##


	return 0
}


##
## ## Tool / Gnome Terminal / Config
##

mod_tool_gnome_terminal_config () {

	mod_tool_gnome_terminal_config_for_preference

	mod_tool_gnome_terminal_config_for_keybind

	mod_tool_gnome_terminal_config_for_profile


	return 0
}

mod_tool_gnome_terminal_config_for_preference () {


	local path="org.gnome.Terminal.Legacy.Settings"


	gsettings set "${path}" default-show-menubar false


	return 0
}

mod_tool_gnome_terminal_config_for_keybind () {


	local path="org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/"


	gsettings set "${path}" zoom-normal '<Control>0'

	gsettings set "${path}" zoom-out '<Control>minus'

	gsettings set "${path}" zoom-in '<Control>equal'


	return 0
}

mod_tool_gnome_terminal_config_for_profile () {


	local profile=$(gsettings get org.gnome.Terminal.ProfilesList default)
	profile=${profile:1:-1} # remove leading and trailing single quotes


	local path="org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/"


	gsettings set "${path}" scrollbar-policy 'never'

	gsettings set "${path}" use-theme-colors false

	gsettings set "${path}" use-theme-transparency false

	gsettings set "${path}" use-transparent-background true

	gsettings set "${path}" background-transparency-percent 15

	#gsettings set "${path}" foreground-color 'rgb(255,255,255)'

	gsettings set "${path}" foreground-color 'rgb(170,170,170)'

	gsettings set "${path}" background-color 'rgb(0,0,0)'

	#gsettings set "${path}" use-theme-transparency false

	#gsettings set "${path}" use-transparent-background true

	#gsettings set "${path}" background-transparency-percent 15

	gsettings set "${path}" visible-name 'Default'

	gsettings set "${path}" use-system-font false

	gsettings set "${path}" font 'Monospace 14'

	gsettings set "${path}" scrollback-unlimited true


	return 0
}


##
## ## Tool / Nautilus / Config
##

mod_tool_nautilus_config () {


	gsettings set org.gnome.nautilus.preferences default-folder-viewer 'list-view'




	gsettings set org.gtk.gtk4.Settings.FileChooser show-hidden true


	return 0
}


##
## ## Tool / Gnome Text Editor / Config
##

mod_tool_gnome_text_editor_config () {


	gsettings set org.gnome.TextEditor auto-indent true

	gsettings set org.gnome.TextEditor auto-save-delay 3

	gsettings set org.gnome.TextEditor custom-font 'Monospace 12'

	gsettings set org.gnome.TextEditor discover-settings true

	gsettings set org.gnome.TextEditor draw-spaces "[]"

	gsettings set org.gnome.TextEditor enable-snippets false

	gsettings set org.gnome.TextEditor highlight-current-line true

	gsettings set org.gnome.TextEditor highlight-matching-brackets true

	gsettings set org.gnome.TextEditor indent-style 'tab'

	gsettings set org.gnome.TextEditor indent-width -1

	gsettings set org.gnome.TextEditor keybindings 'default'

	gsettings set org.gnome.TextEditor last-save-directory ''

	gsettings set org.gnome.TextEditor line-height 1.2

	gsettings set org.gnome.TextEditor recolor-window true

	gsettings set org.gnome.TextEditor restore-session false

	gsettings set org.gnome.TextEditor right-margin-position 80

	gsettings set org.gnome.TextEditor show-grid false

	gsettings set org.gnome.TextEditor show-line-numbers true

	gsettings set org.gnome.TextEditor show-map true

	gsettings set org.gnome.TextEditor show-right-margin true

	gsettings set org.gnome.TextEditor spellcheck true

	gsettings set org.gnome.TextEditor style-scheme 'solarized-light'

	gsettings set org.gnome.TextEditor style-variant 'follow'

	gsettings set org.gnome.TextEditor tab-width 4

	gsettings set org.gnome.TextEditor use-system-font false

	gsettings set org.gnome.TextEditor wrap-text true




	return 0
}


##
## ## Gnome Shell / Config
##

mod_gnome_shell_config () {


	mod_gnome_shell_config_for_empty_switch_windows




	mod_gnome_shell_config_for_mouse_button_modifier

	mod_gnome_shell_config_for_keybind_main

	mod_gnome_shell_config_for_keybind_custom

	mod_gnome_shell_config_for_workspace




	mod_gnome_shell_config_for_system_config_quick




	return 0
}

mod_tool_config () {

	mod_tool_ptyxis_config
	
	#mod_tool_gnome_terminal_config

	mod_tool_nautilus_config

	mod_tool_gnome_text_editor_config


	return 0
}

mod_config_portal () {


	echo
	echo "##"
	echo "## ## Gnome Shell Config / Adjustment / Start"
	echo "##"
	echo




	mod_gnome_shell_config

	mod_tool_config




	echo
	echo "##"
	echo "## ## Gnome Shell Config / Adjustment / Done"
	echo "##"
	echo


	return 0
}




##
## ## Main
##

__main__ () {

	mod_config_portal

	return 0
}

__main__ "${@}"
