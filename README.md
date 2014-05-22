# SETUP

## Install `emacs-snapshot`

### Add the repo `emacs.naquadah.org`

```
$ sudo su
# echo "deb http://mirror:3142/emacs.naquadah.org/ stable/" >> /etc/apt/sources.list
# exit
$ sudo apt-get update
```

### Install emacs-snapshot

```
$ sudo apt-get -y --force-yes install emacs-snapshot
```

## Clone
```
$ git clone git@github.com:Covetel/emacs.git
```

## Then
```
$ mv ~/.emacs ~/.emacs.backup
$ mv ~/.emacs.d ~/.emacs.d.backup
$ cd emacs
$ make emacs
```
