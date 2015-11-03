echo -n 
read -p "This will replace your current vim config files. You sure? [Y/n]" ANSWER

case $ANSWER in
  [Yy]* ) echo "Okay! You asked for it!";;
  [Nn]* ) exit;;
  * ) echo "Please answer yes or no.";;
esac

rm -rf ~/.vim ~/.vimrc
mkdir ~/.vim # Add a place to store stuff
cp ./.vimrc ~/.vimrc # Copy config file
cp -a ./.vim/colors/. ~/.vim/colors/