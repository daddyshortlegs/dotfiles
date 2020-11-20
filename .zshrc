jdk() {
    version=$1
    export JAVA_HOME=$(/usr/libexec/java_home -v"$version");
    java -version
}

jdk 11
export ANDROID_HOME=/Users/andy/Library/Android/sdk
export PATH=$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$PATH

eval "$(rbenv init -)"
eval "$(pyenv init -)"
