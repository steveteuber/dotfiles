# dotfiles

My personal dotfiles repository.

## Installation

Install [chezmoi](https://www.chezmoi.io/) and all dotfiles on a new,
empty machine with a single command:

```bash
export PATH=/opt/homebrew/bin:$PATH
sh -c "$(curl -fsSL chezmoi.io/get)" -- init --apply steveteuber
```
