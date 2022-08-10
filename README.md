# My personal dotfiles

Inspired by [this post](http://iamnotmyself.com/2020/11/10/your-terminal-and-you-dotfiles/) I decided to create my own dotfiles repository which leads me step by step (and anyone who is interested in my workflow) to my favourite computer configuration. Please have in mind, that those configuration works well for me - probably there are many things you would like to have configured differently :)

Worth noting: I use this configuration on MacOS (most of things should work on any *nix operating system but not all of them).

Each piece of software collected here has explanation what it is and how do I use it below.
How to configure each piece of software is inside `install.sh` script.

If you see anything I could do better, please [inform me about this](https://github.com/piotr-proszowski/dotfiles/issue://github.com/piotr-proszowski/dotfiles/issues)!
 
## Kitty
As a terminal emulator I like to use [kitty](https://sw.kovidgoyal.net/kitty/), because it's super fast and simple - it just has a [single configuration file](./kitty/kitty.conf). Previously I was using [iTerm2](https://iterm2.com/) but it was significantly slower for me and configuration seemed to be harder.

## Hammerspoon
I like to have my terminal very close to me, that's why it appears and disappears with `⌘ + §`. For this I use [hammerspoon](https://www.hammerspoon.org/). I use it because... it worked :D Probably I could migrate to [Karabiner](https://github.com/pqrs-org/Karabiner-Elements) someday. 

## Karabiner
Caps lock is a funny button on a keyboard - it's functionality is so useless that I decided to remap it to `F3`. As I don't know many usages of `F3` I can use this key for lot of actions. For example Caps Lock (mapped to F3) is my `mapleader` in `VIM` - I find it super useful!

## ZSH and Oh My Zsh
Quote from the [main page](https://ohmyz.sh/#install):
> Oh My Zsh will not make you a 10x developer...but you may feel like one! [...] Strangers will come up to you in cafés and ask you, "that is amazing! are you some sort of genius?"

Bunch of plugins that makes life brighter.
What I'm getting thanks to using this:
- Beautiful appearance ([powerlevel10k](https://github.com/romkatv/powerlevel10k))
- Syntax highliting ([zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting))
- Suggestions (written in gray, taken from history) ([zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions))
- Autocompletion for some tools (i.e git, fd) (plugins: git, httpie, fd, k, gradle)
- Remainders that I didn't use defined alias ([alias-tips]())
- Opening git repository in browser with `git open` command. ([git-open](https://github.com/paulirish/git-open))
- Interactive tabs, history and others [fzf](https://github.com/junegunn/fzf) and [fzf-tab](https://github.com/Aloxaf/fzf-tab)

## Enhancd
Jump easily to any place that was visited in the past. Just type `cd` and enjoy. ([Enhancd repo](https://github.com/b4b4r07/enhancd)).

## Tmux
Once you have a cool terminal you want use it more... So you split terminal into smaller panes, create new windows and sessions, you name those so you can come back later to it and start working on something new. This is the power of tmux.

My most favourite functionalities (with my keybindings):
- horizontal split: `⌃ + b`, `o` 
- vertical split: `⌃ + b`, `e` 
- vim like movements between splits: `C⌃ + b`, `h/j/k/l`
- (un)focus given pane (maximize/minimize it): `⌃ + b`, `z`
- rotate pane: `⌃ + b`, `r`
- rearrange panes: `⌃ + b`, `↩`
- create new window: `⌃ + b`, `c`
- navigate between windows: `⌃ + b`, `0-9`
- rename window: `⌃ + b`, `,`
- move window: `⌃ + b`, `.`
- navigate between windows and panes: `⌃ + b`, `w`
- entering visual mode (to navigate history and copy): `⌃ + b`, `[`
- yanking/copying with `y`

## Marker
[It's an awesome tool](https://github.com/pindexis/marker) for saving commands you've created/encountered. With `⌃ + SPACE` you can retrieve those and easily find (they all are mapped to description). Super useful tool.

## Boom
Used for saving bookmarks.
- `boom category name http://example.org` - adds new bookmark of `http://example.org` with name `name` to category `category`.
- `boom name` (if name is unique across categories) or `boom category name` - retrieves previously saved bookmark and copy it
- `boom` - shows categories
- `boom category` - show bookmarks in category

## K
[K is the new l, yo!](https://github.com/supercrabtree/k)

## Fd
Find simplified. [fd repo](https://github.com/sharkdp/fd)
Just type `fd anything` to search for any file containing `anything` in current dir.

## The silver searcher
[Silver searcher repo](https://github.com/ggreer/the_silver_searcher)
What a great tool, super fast compared to `grep` and much more intuitive. Just type `ag something` to find occurences in all files in current directory (recursively) containing `something`.

## Sd
[S]earch & [d]isplace.
Simplified `sed`. [sd repo](https://github.com/chmln/sd).

## Jq
A tool that is the number 1 for working with jsons. [jq repo](https://github.com/stedolan/jq)

## Git
I recommend using git from CLI - I find it very convenient to use, especially with some cool aliases. You can find what aliases I use [here](./git).

For fun I would recommend also looking at [Jakub Nabrdalik's git kurwa](https://github.com/jakubnabrdalik/gitkurwa) (I took many aliases from there).

In [Vim](#Vim) section I show some plugins that help interacting with git code review.

## CopyQ
Awesome clipboard manager - I always have few hundreds most recent objects (text and images) close at hand. `⌘ + E` opens and closes the app.
[Copyq repo](https://github.com/hluk/CopyQ)

## Htop
Nice tool for monitoring resources on the system.
[Htop official website](https://htop.dev/)

## httpie
[Httpie repo](https://github.com/httpie/httpie)
Awesome http client (much more intuitive than curl).

## Vimium
[Awesome plugin browser](https://github.com/philc/vimium) that allows you to navigate the browser with your keyboard only.
I keep the config so I can experiment with it's settings.

It's also worth to mention this trick: [How to leave search bar with keyboard](https://xavierchow.github.io/2016/03/07/vimium-leave-address-bar/)

## Yabai + skhd
Tile manager plus shortcut maker. Make sense with all those open windows!
Configuration stolen from: https://blog.dsubachev.com/install-a-tiling-window-manager-on-your-mac/

[Yabai repo](https://github.com/koekeishiya/yabai)
[skhd repo](https://github.com/koekeishiya/skhd)

## Spectacle
[Official page](https://www.spectacleapp.com/)
Moving and resizing windows on MacOS

## Bartib 
Simple time tracker - useful for reflection for what my time goes.
[Bartib repo](https://github.com/nikolassv/bartib)

## Vim
Because I'm using Vim a lot I decided to create special list for it: [LINK](./vim/README.md)
