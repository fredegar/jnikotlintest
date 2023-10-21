#!/bin/sh
kotlinc kotlin/src/*.kt -d kotlin/build

mkdir -p ./c/build

clang -shared \
-v \
-o c/build/libHello.dylib \
-I /Library/Java/JavaVirtualMachines/jdk-20.jdk/Contents/Home/include \
-I /Library/Java/JavaVirtualMachines/jdk-20.jdk/Contents/Home/include/darwin \
c/src/*.c \
-fPIC
