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


I will proceed with this readme next time. All configurations already sit in this directory and will be updated frequently. README.md will grow with time ;)
