jdk() {
    version=$1
    export JAVA_HOME=$(/usr/libexec/java_home -v"$version");
}

configure_prompt() {
    autoload -Uz vcs_info
    precmd_vcs_info() { vcs_info }
    precmd_functions+=( precmd_vcs_info )
    setopt prompt_subst
    zstyle ':vcs_info:git:*' formats '%b'

    export CLICOLOR=1
    export PROMPT="%n %F{green}%1~%f %F{cyan}\$vcs_info_msg_0_%f %# "
    export RPROMPT="%F{magenta}%*%f"
}

configure_prompt
jdk 11

export ANDROID_HOME=/Users/andy/Library/Android/sdk
export PATH=$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$PATH

eval "$(rbenv init -)"
eval "$(pyenv init -)"
