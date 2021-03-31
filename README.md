# dotfiles

My personal dotfiles repository.

## Quickstart

### Prerequisites

Before you begin please install [Homebrew](https://brew.sh/#install) and [Oh My Zsh](https://ohmyz.sh/#install).

### Installation

Clone the bare repository into `$HOME/.dotfiles`, which will be used to track the dotfiles:

```
git clone --bare git@github.com:steveteuber/dotfiles.git $HOME/.dotfiles
alias dotfiles="git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
```

### Usage

#### Checkout

Initial checkout the actual content from the `.dotfiles` repository to `$HOME`:

```
dotfiles config --local status.showUntrackedFiles no"
dotfiles checkout
```

#### Add, commit and push

Now you can add and commit dotfiles from any directory. Use the `dotfiles` alias combined with git commands:

```
dotfiles add .zshrc
dotfiles commit -m "Add .zshrc"
dotfiles push -u origin main
```
