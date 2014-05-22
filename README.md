# SETUP

## Install `emacs-snapshot`

1. Add the repo `emacs.naquadah.org`

```bash
$ echo "deb http://mirror:3142/emacs.naquadah.org/ stable/" >> /etc/apt/sources.list
$ sudo apt-get update
```

1. Install emacs-snapshot

```bash
$ sudo apt-get -y install emacs-snapshot
```

## Clone
```bash
$ git clone git@github.com:Covetel/emacs.git
```

## Then
```bash
$ mv ~/.emacs ~/.emacs.backup
$ mv ~/.emacs.d ~/.emacs.d.backup
$ cd emacs
$ make emacs
```
