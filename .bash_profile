# less (and more)
LESS="-R"
LESSCHARSET="utf-8"

# Python
export PATH="~/bin:/usr/local/scala/bin:/usr/local/bin:/usr/local/sbin:${AWS_IAM_HOME}/bin:$PATH"
export PYTHONPATH="/opt/rrdtool-1.4.5/lib/python2.7/site-packages/"

# Ruby
[[ -s "/Users/michael/.rvm/scripts/rvm" ]] && source "/Users/michael/.rvm/scripts/rvm"  # This loads RVM into a shell session.
rvm use 1.9.2

# AWS
export AWS_IAM_HOME='/Users/michael/IAMCli-1.3.0'
export AWS_CREDENTIAL_FILE="/Users/michael/.iamcfg"

# Scala/Java
export JAVA_HOME=`/usr/libexec/java_home`
export PATH="/usr/local/scala/bin:$PATH"
SBT_OPTS="-XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=256M"

# GIT
alias MT="git mergetool -y"
alias gitk="/usr/bin/wish $(which gitk)"
. ~/.git_profile

# Vim
mkdir -p ~/Dropbox/VimBackups
alias tmpvi='export SCRATCH_ID="$RANDOM"; vim "/tmp/scratch-$SCRATCH_ID"; echo "Saved [/tmp/scratch-$SCRATCH_ID]"'
alias vi="vim"
alias v="vim"

# Tumblr
alias T="cd ~/Documents/Tumblr"
alias collins-d2="/Users/michael/.rvm/gems/ruby-1.9.2-p290/bin/collins -c /Users/michael/.collins/d2.yaml"
alias collins-ewr01="/Users/michael/.rvm/gems/ruby-1.9.2-p290/bin/collins -c /Users/michael/.collins/ewr01.yaml"
alias provisioner="/Users/michael/Documents/Tumblr/platform/collins/clients/provisioner/bin/provisioner -c /Users/michael/.collins/provisioner.yaml --notify='michael@tumblr.com' "

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
    . ~/.linux_profile
    ;;
esac

