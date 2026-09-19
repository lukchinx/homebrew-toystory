# homebrew-toystory

Homebrew tap for [Toystory](https://github.com/lukchinx/toystory), a pixel-art
desktop pet for macOS 26 (Tahoe) on Apple Silicon.

```bash
brew tap lukchinx/toystory
brew trust lukchinx/toystory
brew install --cask --no-quarantine toystory
```

`brew trust` is required once: Homebrew refuses to load casks from third-party
taps until you trust them. The app is signed ad hoc and not notarized, so
`--no-quarantine` skips the Gatekeeper block on first launch. Without it, allow
the app once under System Settings > Privacy & Security > Open Anyway.

Upgrade with `brew upgrade --cask toystory`. Remove with `brew uninstall --cask toystory`.
