script_path=`dirname $0`
echo $script_path

for brew in ${script_path}/brews/*Brewfile
do
  echo "Brewing ${brew}"
  brew bundle --file ${brew}
done

for config in `ls -a ${script_path}/configs/`
do
  if [ ! -e ~/${config} ]; then
    ln -s ${script_path}/configs/${config} ~
  fi
done

