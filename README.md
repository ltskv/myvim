# My settings for VIM

## Contents

* `colors/`: A light and a dark colorscheme.
* `plugin/settings.vim`: Main configuration file with settings usable on
  all of my computers.
* `.vimrc_template`: A template used to populate the `~/.vimrc`, which contains
  settings that are local to each different computer.
* `plugin/statusline.vim`: Configuration of the statusline.
* `plugin/comment.vim`: Yet another implementation of filetype-based
  commenting/uncommenting.
* `plugin/pudb.vim`: **NEW**. Set breakpoints for PuDB from Vim.
* `setup.sh`: Copies `.vimrc_template` as `~/.vimrc` (asks first), installs
  plugin manager [Vundle](https://github.com/VundleVim/Vundle.vim) (asks too),
  and creates the following symlinks (without asking, but not overwriting
  if the targets exist):

```
colors -> ~/.vim/colors
ftplugin -> ~/.vim/ftplugin
plugin -> ~/.vim/plugin
```
The `plugin/{comment,pudb,statusline}.vim` and also the colorschemes are
probably independent of the rest of the code and can be used just by copying
them to `~/.vim/{plugin,colors}` (or copying their code to `~/.vimrc`?). The
`plugin/settings.vim` is rather opinionated and isn't really intended to be
used as an independent plugin.
