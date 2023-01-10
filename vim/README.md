# Vim ROCKS!

Even [30 years](https://en.wikipedia.org/wiki/Vim_(text_editor)#:~:text=Basing%20his%20work%20on%20Stevie,Vi%20IMproved%22%20late%20in%201993.) from it's first release - this software is still alive and kicking!

Below you can find configurations and plugins I use together with vim.

## Autosave
```
" autosave
autocmd TextChanged,TextChangedI <buffer> silent write
" autosave for vimwiki
autocmd CursorHold * update
set noswapfile
```

This is life changer. I set up this configuration once I lost my notes after meeting and didn't have such situation.

## Mapping leader as F3
I use karabiner to map Capslock into F3 and set F3 as a leader. This way I get super handy leader and lot of available shortcuts.

## Plugins

### AnyJump
I'm surprised how well it works. Just by pressing leader and j it displays all definitions and references of the thing under cursor. It deals pretty well even with Kotlin. And doesn't need indexing which consumes so much resources as in case of IntelliJ.

### YouCompleteMe
Autocomplete plugin. It works nice, using it mostly for autosuggestions. I was hoping that it will work better for jumping between references and definitions, however AnyJums wins in that matter.


### NerdTree
Awesome tree navigator. It gives this nice IDE feeling.

### Vimwiki
I just love this tool for making notes. It remainds me `Obsidian` - but Obsidian is paid for commercial usage unfortunately. However, vimwiki supports linking and with `the silver searcher` (just below) searching things is super fast.

Just notice the autosave I use for vimwiki:
```
autocmd CursorHold * update
let g:vimwiki_dir_link="index"
let g:vimwiki_auto_chdir=1
set noswapfile
```

### vimwiki-sync
It's also worth to continously backup notes on some remote server - in case of emergency ;) For that I use git and plugin [vimwiki-sync](https://github.com/michal-h21/vimwiki-sync)

### vim commentary
Allows me to comment with `gcc`. Why vim didn't have such a feature? I don't know.

### Fzf vim
Mostly useful for searching files. I mapped leader + f to `Ag` so I have similar experience as in IntelliJ for files searching.

## gh-line
Takes you from the vim to github page (with line highlighted or to blame or just the main page of project). Super useful, especially when I want to give a link to some ticket or in the message.


Those are most beneficial features, however maybe I missed something.
If you noticed something I'm using and it's not mentioned here - please let me know! :)
