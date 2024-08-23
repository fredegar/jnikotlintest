#!/bin/sh
kotlinc kotlin/src/*.kt -d kotlin/build

mkdir -p ./c/build

clang -shared \
-v \
-o c/build/libHello.dylib \
-I $JAVA_HOME/include \
-I $JAVA_HOME/include/darwin \
c/src/*.c \
-fPIC
