#!/bin/bash

cd ~/documents/sources/root
source $HOME/bin/root/ROOT.sh

./configure --fail-on-missing \
       --enable-builtin-pcre \
       --enable-builtin-freetype \
       --enable-cintex \
       --enable-explicitlink \
       --enable-gdml \
       --enable-genvector \
       --enable-mathmore \
       --enable-minuit2 \
       --enable-mysql \
       --enable-python \
       --enable-qt \
       --enable-qtgsi \
       --enable-reflex \
       --enable-roofit \
       --enable-table \
       --enable-unuran \
       --with-pythia8-incdir=/usr/include/Pythia8 \
       >& log.configure

make -j4 >& log.make
make install >& log.install
