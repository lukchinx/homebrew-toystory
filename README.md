# homebrew-toystory

Homebrew tap for [Toystory](https://github.com/lukchinx/toystory), a pixel-art
desktop pet for macOS 26 (Tahoe) on Apple Silicon.

```bash
brew install --cask lukchinx/toystory/toystory
```

The fully qualified name taps this repository automatically and lets Homebrew 7
load the cask without a separate `brew trust` step. The app is signed ad hoc
and not notarized; the cask's `postflight` clears the macOS quarantine flag so
the first launch is not blocked by Gatekeeper.

Upgrade with `brew upgrade --cask lukchinx/toystory/toystory`.
Remove with `brew uninstall --cask toystory`.
