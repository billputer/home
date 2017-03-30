export LC_ALL="en_US.UTF-8"
if [[ -e /usr/share/zoneinfo/UTC ]]; then
  export TZ=":/usr/share/zoneinfo/UTC"
else
  export TZ="UTC"
fi
export CLICOLOR=1
export PAGER='less'
export LESS='CMifSR --tabs=4'
export LESSCHARSET='utf-8'
export EDITOR=vim
export GIT_PAGER=$PAGER
hash diff-so-fancy > /dev/null 2>&1 && export GIT_PAGER="diff-so-fancy | less"
export MLR_CSV_DEFAULT_RS='lf'

# for neovim
# export NVIM_TUI_ENABLE_TRUE_COLOR=1
export NVIM_TUI_ENABLE_CURSOR_SHAPE=1

# useful for work
export GITHUB_URL="https://github.banksimple.com/"

# color scheme
# BASE16_SHELL="$HOME/.config/base16-shell/scripts/base16-ocean.sh"
# [[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

export HOMEBREW_INSTALL_BADGE='🔮 ✨'
export skip_global_compinit=1


########################################################################
# paths
########################################################################

[[ -d /usr/local/sbin ]]  && export PATH=/usr/local/sbin:"${PATH}"
[[ -d /usr/local/bin ]]   && export PATH=/usr/local/bin:"${PATH}"
[[ -d ~/.local/bin ]]     && export PATH=~/.local/bin:"${PATH}"
[[ -d ~/bin ]]            && export PATH=~/bin:"${PATH}"
[[ -d ~/.bin ]]           && export PATH=~/.bin:"${PATH}"

cdpath=(. ~/work ~/scratch ~/Development)


########################################################################
# PostgreSQL
########################################################################

# for systems using Homebrew
POSTGRESQLPATH="/usr/local/opt/postgresql@9.5/bin"

if [[ -d "$POSTGRESQLPATH" ]]; then
  export PATH="$POSTGRESQLPATH:$PATH"
fi


########################################################################
# Python
########################################################################

# export PYTHONDONTWRITEBYTECODE=1
# [[ hash virtualenvwrapper.sh >/dev/null 2>&1 ]] && source virtualenvwrapper.sh
# [[ -d /usr/local/lib/python2.7/site-packages ]] && export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH


########################################################################
# Perl
########################################################################

export PERL5LIB=$HOME/.local/lib/perl5:$PERL5LIB
export PERL_CPANM_OPT='-L ~/.local --self-contained'

export PERLBREW_ROOT=/opt/perl
#[[ -e /opt/perl/etc/bashrc ]] && source /opt/perl/etc/bashrc


########################################################################
# ruby
########################################################################

#export RBENV_ROOT=/usr/local/var/rbenv
#[[ -d "${HOME}/.rvm/bin" ]] && export PATH="${HOME}/.rvm/bin":"${PATH}"


########################################################################
# java
########################################################################

if [[ -x /usr/libexec/java_home ]]; then
    export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"
    export PATH=$JAVA_HOME/bin:$PATH
fi
export MAVEN_OPTS="-Xmx2048m -XX:ReservedCodeCacheSize=128m"
# export _JAVA_OPTIONS=-Djava.awt.headless=true


########################################################################
# Node
########################################################################

[[ -d /usr/local/share/npm/bin ]] && export PATH="${PATH}:/usr/local/share/npm/bin"