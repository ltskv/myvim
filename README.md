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
