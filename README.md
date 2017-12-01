# My settings for VIM

## Usage

If you find yourself wanting to use these settings, do the following:

```
./colors -> ~/.vim/colors
./ftplugin -> ~/.vim/ftplugin
./.vimrc -> ~/.vimrc
```

Also create two files `~/.vimplugin` and `~/.vimlocal`. The first one contains
commands for your plugin manager. The idea is that you might need a different
set of plugins on different machines. Some plugins require paths to programs,
which can differ from machine to machine too.  
In `.vimlocal` you should should put settings that are local to the machine.  
You might use `plugin_template.vim` and `locals_template.vim` for reference.  
Alternatively, if you are on UNIX and haven't configured VIM yet, you could just
run `setup.sh`, which will do everything for you.
