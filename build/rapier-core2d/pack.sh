#! /bin/sh

wasm-pack build
sed -i 's#rapier-core#@dimforge/rapier-core#g' pkg/package.json
sed -i 's/"rapier_core2d_bg.wasm"/"rapier_core2d_bg.wasm","rapier_core2d_bg.js", "rapier_core2d_bg.d.ts"/g' pkg/package.json
