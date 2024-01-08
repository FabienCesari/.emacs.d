### Description 
  Emacs configuration file written with org mode. the .el configuration file will be automatically generated at startup.

### Installation
 Clone it into your home dir:
 ```
 git clone git://github.com/FabienCesari/.emacs.d --recursive
 ```
 require texinfo

then
```
```
cd externals/emacs-w3m
autoconf
./configure
make
make install
```
```
cd ../haskell-mode
make EMACS=emacs
```

install SuperCollider emacs interface scel -
evaluate in SC:

```
Quarks.install("https://github.com/supercollider/scel");

```
