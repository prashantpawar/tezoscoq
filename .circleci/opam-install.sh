set -x
set -e
echo "Installing OPAM"
if [ ! -e opam-full-2.0.0-rc2 ]; then
  wget https://github.com/ocaml/opam/releases/download/2.0.0-rc2/opam-full-2.0.0-rc2.tar.gz
  tar -zxvf opam-full-2.0.0-rc2.tar.gz
  cd opam-full-2.0.0-rc2 && ./configure && make
fi
