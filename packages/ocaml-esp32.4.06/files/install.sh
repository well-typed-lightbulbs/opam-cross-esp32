#!/bin/sh -e

PREFIX="$1"

for pkg in bigarray bytes compiler-libs dynlink findlib graphics num num-top stdlib str threads unix; do
  cp -r "${PREFIX}/lib/${pkg}" "${PREFIX}/esp32-sysroot/lib/"
done
sed -i -e 's/unix//g' ${PREFIX}/esp32-sysroot/lib/bigarray/META
ln -sf "${PREFIX}/bin/ocamlrun" "${PREFIX}/esp32-sysroot/bin/ocamlrun"
mkdir -p "${PREFIX}/lib/findlib.conf.d"
cp esp32.conf "${PREFIX}/lib/findlib.conf.d"    