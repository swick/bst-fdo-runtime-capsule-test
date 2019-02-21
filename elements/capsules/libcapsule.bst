kind: autotools
description: libcapsule

depends:
- filename: base.bst
  type: build

sources:
- kind: git
  url: https://gitlab.collabora.com/vivek/libcapsule
  track: master
  ref: 12b83f65e31e3a29d23c794a16257598da34b6d0
