#!/bin/sh -e

PREFIX="$1"

for pkg in bigarray bytes compiler-libs dynlink findlib graphics num num-top stdlib str threads unix; do
  cp -r "${PREFIX}/lib/${pkg}" "${PREFIX}/esp32-sysroot/lib/"
done


ln -s ${PREFIX}/esp32-sysroot/bin/ocamlopt.byte ${PREFIX}/bin/ocamlopt-esp32
cp ocamlc ${PREFIX}/bin/ocamlc-esp32
cp tools/ocamlmklib ${PREFIX}/bin/ocamlmklib-esp32
ln -s ${PREFIX}/bin/ocamlrun ${PREFIX}/esp32-sysroot/bin/ocamlrun

cp byterun/libcamlrun.a ${PREFIX}$/esp32-sysroot/lib/

mkdir -p "${PREFIX}/lib/findlib.conf.d"
cp esp32.conf "${PREFIX}/lib/findlib.conf.d"    