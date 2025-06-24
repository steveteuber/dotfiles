# ghc plugin

This plugin adds two aliases for working with GitHub Copilot:

- `ghce`: wraps `gh copilot explain`
- `ghcs`: wraps `gh copilot suggest`

To enable, add `ghc` to your `plugins` array in your `.zshrc` file:

```zsh
plugins=(... ghc)
```

This plugin is generated via `gh copilot alias -- zsh | sed 's/ \(gh copilot\)/ op plugin run -- \1/'`.
