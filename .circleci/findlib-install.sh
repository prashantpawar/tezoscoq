set -x
set -e
echo "Installing findlib`"
if [ ! -e findlib-1.8.0 ]; then
  wget http://download.camlcity.org/download/findlib-1.8.0.tar.gz
  tar -zxvf findlib-1.8.0.tar.gz
  cd findlib-1.8.0 && ./configure && make
  sudo make install
fi
