# less (and more)
LESS="-R"
LESSCHARSET="utf-8"

# Python
export PATH="$HOME/bin:/usr/local/scala/bin:/usr/local/bin:/usr/local/sbin:${AWS_IAM_HOME}/bin:$PATH"
export PYTHONPATH="/opt/rrdtool-1.4.5/lib/python2.7/site-packages/"

# AWS
export AWS_IAM_HOME='/Users/michael/IAMCli-1.3.0'
export AWS_CREDENTIAL_FILE="/Users/michael/.iamcfg"

# GIT
alias MT="git mergetool -y"
alias gitk="/usr/bin/wish $(which gitk)"
. ~/.git_profile

# Vim
mkdir -p ~/Dropbox/VimBackups
alias tmpvi='export SCRATCH_ID="$RANDOM"; vim "/tmp/scratch-$SCRATCH_ID"; echo "Saved [/tmp/scratch-$SCRATCH_ID]"'
alias vi="vim"
alias v="vim"

# Work-specific settings
#. ~/.work_profile
. ~/.go_profile

# ssh-hack
alias ssh="ssh -A -l mschenck"

# Puppet
alias puptest="puppet apply --modulepath=`pwd` --noop $1"

# OS-specific
case $(uname -s) in
  "Darwin" )
    echo "OS X customizations loading ... "
    . ~/.osx_profile
    ;;
  "Linux" )
    echo "Linux customizations loading ... "
#    . ~/.linux_profile
    ;;
esac

export PS1="\u@\h \W# "
