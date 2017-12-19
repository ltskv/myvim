# My settings for VIM

## Usage

If you find yourself wanting to use these settings, `git clone` this repository,
and copy or link the following directories:

```
colors -> ~/.vim/colors
ftplugin -> ~/.vim/ftplugin
plugin -> ~/.vim/plugin
```

In `plugin/settings.vim` are settings that you can use on every workstation.
You can put into `~/.vimrc` settings that are local to the machine (such as
plugins, settings for plugins, font settings, etc.). Some reasonable default
local settings can be found in `.vimrc_template`.

If you are on UNIX and haven't configured VIM yet, you could just
run `setup.sh`, which will create links from the repository to the `~/.vim`
folder and install plugin manager Vundle. Because of links, you shouldn't move
or remove the directory in which you cloned this repo. The benefit is that you
can get updates to the settings with just `git pull`.

## Recommended terminal colors

The included colorschemes were meant to be used with the following terminal
color settings:

```
0:  #000000 (snowhite)
0:  #101010 (pitchblack)
1:  #c00000
2:  #00c000
3:  #c0c000
4:  #0000c0
5:  #c000c0
6:  #00afaf
7:  #c0c0c0
8:  #808080
9:  #ff0000
10: #00ff00
11: #ffff00
12: #0000ff
13: #ff00ff
14: #00c0c0
15: #ffffff (snowhite)
15: #eeeeee (pitchblack)
```
