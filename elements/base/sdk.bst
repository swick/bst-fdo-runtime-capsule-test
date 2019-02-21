kind: import
description: Import the base freedesktop SDK
sources:
- kind: ostree
  url: flathub:repo/
  track: runtime/org.freedesktop.Sdk/x86_64/18.08
  ref: 01bce7b34fdb2d708b2812cb5c3152e690d2c22bb9b86a482b2ee5f853b8f303
config:
  source: files
  target: usr
