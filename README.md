# My personal dotfiles

Inspired by [this post](http://iamnotmyself.com/2020/11/10/your-terminal-and-you-dotfiles/) I decided to create my own dotfiles repository which leads me step by step (and anyone who is interested in my workflow) to my favourite computer configuration. Please have in mind, that those configuration works well for me - probably there are many things you would like to have configured differently :)

Worth noting: I use this configuration on MacOS (most of things should work on any *nix operating system but not all of them).

Each piece of software collected here has explanation what it is and how do I use it below.
How to configure each piece of software is inside `install.sh` script.
 
## Kitty
### Description
As a terminal emulator I like to use [kitty](https://sw.kovidgoyal.net/kitty/), because it's super fast and simple - it just has a [single configuration file](./kitty/kitty.conf). Previously I was using [iTerm2](https://iterm2.com/) but it was significantly slower for me and configuration seemed to be harder.

### Hammerspoon
I like to have my terminal very close to me, that's why it appears and disappears with `⌘ + §`. For this I use [hammerspoon](https://www.hammerspoon.org/). I use it because... it worked :D Probably I could migrate to [Karabiner](https://github.com/pqrs-org/Karabiner-Elements) someday. 

### Karabiner
Caps lock is a funny button on a keyboard - it's functionality is so useless that I decided to remap it to `F3`. As I don't know many usages of `F3` I can use this key for lot of actions. For example Caps Lock (mapped to F3) is my `mapleader` in `VIM` - I find it super useful!

### ZSH and Oh My Zsh
> Oh My Zsh will not make you a 10x developer...but you may feel like one! [...] Strangers will come up to you in cafés and ask you, "that is amazing! are you some sort of genius?"
Quote from the [main page](https://ohmyz.sh/#install). 

Bunch of plugins that makes life brighter.
What I'm getting thanks to that:
- Beautiful appearance ([powerlevel10k](https://github.com/romkatv/powerlevel10k))
- Syntax highliting ([zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting))
- Suggestions (written in gray, taken from history) ([zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions))
- Autocompletion for some tools (i.e git, fd) (plugins: git, httpie, fd, k, gradle)
- Remainders that I didn't use defined alias ([alias-tips]())
- Opening git repository in browser with `git open` command. ([git-open](https://github.com/paulirish/git-open))
- Interactive feeling thanks to [fzf](https://github.com/junegunn/fzf) and [fzf-tab](https://github.com/Aloxaf/fzf-tab)

### Marker
### Boom
