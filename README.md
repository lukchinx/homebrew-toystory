# homebrew-toystory

Homebrew tap for [Toystory](https://github.com/lukchinx/toystory), a pixel-art
desktop pet for macOS 26 (Tahoe) on Apple Silicon.

```bash
brew tap lukchinx/toystory
brew trust lukchinx/toystory
brew install --cask toystory
xattr -dr com.apple.quarantine /Applications/Toystory.app
```

`brew trust` is required once: Homebrew refuses to load casks from third-party
taps until you trust them. The app is signed ad hoc and not notarized, so
Gatekeeper blocks the first launch; the `xattr` line clears the quarantine
flag. Alternatively, open the app, dismiss the warning, and allow it once
under System Settings > Privacy & Security > Open Anyway. Homebrew 7 removed
the old `--no-quarantine` install flag.

Upgrade with `brew upgrade --cask toystory` (repeat the `xattr` step).
Remove with `brew uninstall --cask toystory`.
