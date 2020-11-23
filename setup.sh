script_path=`dirname $0`
echo $script_path
brew bundle --file ${script_path}/Brewfile
brew bundle --file ${script_path}/devops.Brewfile

for config in `ls -a ${script_path}/configs/`
do
  if [ ! -e ~/${config} ]; then
    ln -s ${script_path}/configs/${config} ~
  fi
done

