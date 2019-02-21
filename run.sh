#!/bin/bash

## building
if [ ! -d runtime ]; then
    bst build all.bst
    bst checkout all.bst runtime
fi

bwrap \
    --ro-bind ./runtime /usr \
    --symlink usr/lib /lib \
    --symlink usr/lib64 /lib64 \
    --symlink usr/bin /bin \
    --symlink usr/sbin /sbin \
    --symlink usr/app /app \
    --symlink usr/capsules /capsules \
    --proc /proc \
    --dev /dev \
    --dev-bind /dev/dri /dev/dri \
    --dir /tmp \
    --ro-bind /tmp/.X11-unix /tmp/.X11-unix \
    --dir /host \
    --ro-bind / /host \
    --unshare-pid \
    --setenv PATH "/usr/bin:/bin:/app/bin" \
    --setenv LD_LIBRARY_PATH "/app/lib:/capsules/lib" \
    --setenv DISPLAY ":0" \
    /usr/bin/bash

