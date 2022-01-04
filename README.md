### Description 
  Emacs configuration file written with org mode. the .el configuration file will be automatically generated at startup.

### Installation
 Clone it into your home dir:
 ```
 git clone git://github.com/FabienCesari/.emacs.d .emacs.d/
 ```
then
```
cd .emacs.d/
git submodule init
git submodule update
cd externals/emacs-w3m
autoconf
./configure
make
make install
```
