cask "toystory" do
  version "0.4.11"
  sha256 "1f10e19795a19f5d3cefba1c348df9ae39f39d15274fdfb3713f328e57f1652c"

  url "https://github.com/lukchinx/toystory/releases/download/v#{version}/Toystory-#{version}.zip"
  name "Toystory"
  desc "Pixel-art desktop pet that walks along the bottom of your screen"
  homepage "https://github.com/lukchinx/toystory"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Toystory.app"

  # Toystory is signed ad hoc and not notarized, so Gatekeeper would block the
  # first launch. Clear the quarantine flag Homebrew applied on download.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Toystory.app"]
  end

  caveats <<~EOS
    Toystory is signed ad hoc and is not notarized. The installer cleared the
    macOS quarantine flag so the app opens without a Gatekeeper prompt.
    Upgrade with: brew upgrade --cask lukchinx/toystory/toystory
  EOS
end
