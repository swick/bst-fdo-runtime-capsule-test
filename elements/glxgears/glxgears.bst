kind: make
description: glxgears

depends:
- filename: base.bst
  type: build
- glxgears/glu.bst
- glxgears/glew.bst

variables:
  prefix: /app

sources:
- kind: local
  path: files/glxgears
