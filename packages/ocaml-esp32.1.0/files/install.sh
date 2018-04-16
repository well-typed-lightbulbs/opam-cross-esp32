#!/bin/sh -e

PREFIX="$1"

ln -sf "${PREFIX}/bin/ocamlrun" "${PREFIX}/esp32-sysroot/bin/ocamlrun"
mkdir -p "${PREFIX}/lib/findlib.conf.d"
cp esp32.conf "${PREFIX}/lib/findlib.conf.d"    