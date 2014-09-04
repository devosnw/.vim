.vim
====

My .vim configuration & plugins.

Get started
-----------

### 1. Clone the repo

**Option A (the ninja way. requires `git` 1.6.5 or later)**

```bash
$ git clone --recursive git@github.com:devosnw/.vim.git
```

**Option B (the manual way)**

1) Clone the repo. Most likely do this in your home directory.

```bash
$ git clone git@github.com:devosnw/.vim.git
```

2) Setup the submodules. This will pull down all the submodules & make them
ready to use.

```bash
$ cd .vim
$ git submodule init
$ git submodule update
```

### 2) Link the `vimrc` file into your home directory

`vim` will now read this file the next time it starts.

```bash
$ ln -s ~/.vim/vimrc ~/.vimrc
```
