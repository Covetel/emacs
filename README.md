# SETUP

## Install `emacs-snapshot`

### Add the repo `emacs.naquadah.org`

```bash
$ sudo su
# echo "deb http://mirror:3142/emacs.naquadah.org/ stable/" >> /etc/apt/sources.list
# exit
$ sudo apt-get update
```

### Install emacs-snapshot

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
