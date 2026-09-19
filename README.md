# homebrew-toystory

Homebrew tap for [Toystory](https://github.com/lukchinx/toystory), a pixel-art
desktop pet for macOS 26 on Apple Silicon.

```bash
brew tap lukchinx/toystory
brew install --cask --no-quarantine toystory
```

The app is signed ad hoc and not notarized. `--no-quarantine` skips the
Gatekeeper prompt; without it, allow the app once under
System Settings > Privacy & Security > Open Anyway.

Upgrade with `brew upgrade --cask toystory`. Remove with `brew uninstall --cask toystory`.
