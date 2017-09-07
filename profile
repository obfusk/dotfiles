# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# MODIFIED {

umask 077

# set PATH so it includes user's private bin if it exists
# if [ -d "$HOME/bin" ] ; then
#     PATH="$HOME/bin:$PATH"
# fi

for _path in \
  "$HOME/.local/bin" \
  "$HOME/.node/bin" "$HOME/.gem/ruby/2.3.0/bin" \
  "$HOME/opt/bin" "$HOME/bin" ;
do
  [ -d "$_path" ] && PATH="$_path:$PATH"
done
unset _path

export LANG=en_GB LC_TIME=en_DK LC_COLLATE=C
export GDM_LANG=$LANG
export GEM_HOME="$HOME/.gem/ruby/2.3.0"
export NODE_PATH="$HOME/.node/lib/node_modules"

export PROFILE_LOADED=yes

# } MODIFIED
