kind: manual
description: gl-shim

depends:
- filename: base.bst
  type: build
- capsules/libcapsule.bst

environment:
  PKG_CONFIG_PATH: /usr/lib/pkgconfig/

variables:
  prefix: /capsules

config:
  build-commands:
  - $(pkg-config --variable=CAPSULE_INIT_PROJECT_TOOL libcapsule-tools) libGL.so.1
  - cd libGL-proxy/ && ./configure --prefix="%{prefix}"
  - cd libGL-proxy/ && make
  install-commands:
  - cd libGL-proxy/ && make -j1 DESTDIR="%{install-root}" install

sources:
- kind: local
  path: files/gl-shim
