FROM --platform=linux/arm64 alpine:latest

RUN apk add --no-cache clang lld make musl-dev pkgconf libx11-dev libxcb-dev xcb-util-dev xcb-util-keysyms-dev xcb-util-wm-dev xorg-server-xephyr xterm font-misc-misc font-cursor-misc compiler-rt llvm-libunwind-dev

ENV CC=clang

WORKDIR /workspace
