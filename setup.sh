script_path=`dirname $0`
echo $script_path

for brew in ${script_path}/brews/*Brewfile
do
  echo "Brewing ${brew}"
  brew bundle --file ${brew}
done

rbenv install 2.6.6
rbenv global 2.6.6
pyenv install 3.9.0
pyenv global 3.9.0

echo "Linking dotfiles"
for config in `ls -a ${script_path}/configs/`
do
  if [ ! -e ~/${config} ]; then
    ln -s ${script_path}/configs/${config} ~
  fi
done

# Specify the preferences directory
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/${script_path}/iterm"
# Tell iTerm2 to use the custom preferences in the directory
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

