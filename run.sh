#!/bin/sh
g++ --version
./abi-dumper.pl --version
./vtable-dumper -dumpversion
./ctags --version
g++ -Iinclude  -Og -g3 -shared -Wl,-soname,libfoo.so -o libfoo.so foo.cc
PATH=.:$PATH ./abi-dumper.pl -extra-info ./DEBUG -loud -mixed-headers -lver 1 libfoo.so -public-headers include -o foo.dump
