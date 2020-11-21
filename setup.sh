script_path=`dirname $0`
echo $script_path
brew bundle --file ${script_path}/Brewfile
brew bundle --file ${script_path}/devops.Brewfile
ln -s ${script_path}/.zshrc ~
