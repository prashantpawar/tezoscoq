set -x
set -e
echo "Installing Ocaml"
if [ ! -e ocaml-4.06.0 ]; then
  wget http://caml.inria.fr/pub/distrib/ocaml-4.06/ocaml-4.06.0.tar.gz
  tar -zxvf ocaml-4.06.0.tar.gz
  cd ocaml-4.06.0 && ./configure && make world.opt
  sudo make install
fi
