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

  caveats <<~EOS
    Toystory is signed ad hoc and is not notarized, so Gatekeeper blocks the
    first launch. Clear the quarantine flag once after installing:

      xattr -dr com.apple.quarantine /Applications/Toystory.app

    Or open the app, dismiss the warning, then allow it once under
    System Settings > Privacy & Security > Open Anyway.
  EOS
end
