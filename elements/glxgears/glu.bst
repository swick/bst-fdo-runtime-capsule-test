kind: autotools
description: glu

depends:
- filename: base.bst
  type: build

variables:
  prefix: /app

sources:
- kind: git
  url: https://gitlab.freedesktop.org/mesa/glu
  track: master
  ref: 0bf42e41c8b63fc2488dd8d41f696310b5a5a6a7

