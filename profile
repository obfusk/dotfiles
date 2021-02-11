# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# MODIFIED {

umask 077

for _path in "$HOME/.local/bin" "$HOME/opt/bin" "$HOME/bin"; do
  [ -d "$_path" ] && PATH="$_path:$PATH"
done
unset _path

. "`which w_en`"

export GDM_LANG=$LANG
export NODE_PATH="$HOME/.node/lib/node_modules"
export DEBEMAIL='flx@obfusk.net' DEBFULLNAME='Felix C. Stegerman'
export PROFILE_LOADED=yes

# } MODIFIED

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi
