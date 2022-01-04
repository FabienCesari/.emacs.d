#+TITLE: Emacs Configuration README.
#+AUTHOR:  Fabien Cesari
#+EMAIL: fabien.cesari@gmail.com

## Description 
  Emacs configuration file written with org mode. the .el configuration file will be automatically generated at startup.

## Installation
 Clone it into your home dir:
 `git clone git://github.com/FabienCesari/.emacs.d .emacs.d/`
then
- cd .emacs.d/
- git submodule init
- git submodule update
- cd externals/cedet
- make EMACS=emacs
- cd externals/org-mode
- make autoloads

 Install auctex and aspell for the configuration to work properely

 Install doxygen in order to use doxymacs.

 Install Latex if you want to export pdf with the org mode

  Fabien
