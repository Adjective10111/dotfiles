# SHOULD BE RUN AFTER `/etc/profile`
# CAN BE PUT IN `/etc/profile.d/` as a .sh file
#
#
#
#
#
#
# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

XDG_CONFIG="$HOME/.config"

if echo $SHELL | grep -q zsh; then
	source "$XDG_CONFIG/zsh/aliases.zsh"
	source "$XDG_CONFIG/zsh/defaults.zsh"
	source "$XDG_CONFIG/zsh/path.zsh"
fi

if [ "$DESKTOP_SESSION" = "i3" ]; then
    export $(gnome-keyring-daemon -s)
fi
