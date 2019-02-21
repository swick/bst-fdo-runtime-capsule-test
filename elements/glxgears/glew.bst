kind: manual
description: glew

depends:
- filename: base.bst
  type: build

config:
  build-commands:
  - make GLEW_DEST="%{prefix}" DESTDIR="%{install-root}" LIBDIR="%{prefix}/lib"
  install-commands:
  - make -j1 GLEW_DEST="%{prefix}" DESTDIR="%{install-root}" LIBDIR="%{prefix}/lib" install

variables:
  prefix: /app

sources:
- kind: tar
  url: https://glew.s3.amazonaws.com/nigels-com/glew/319/319.1/glew-2.2.0.tgz
  ref: 326fef3d945c214a3242fe4447da5a447a132dfa348422a8319ed143b31f181c
