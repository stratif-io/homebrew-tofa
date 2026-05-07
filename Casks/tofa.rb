cask "tofa" do
  version "0.9.0" # VERSION
  sha256 "48ca06eef185d15f8982c8b4111dc4f784028c9092d6bed093a2875aa1c01a4b" # SHA_DMG

  url "https://github.com/stratif-io/tofa/releases/download/tofa-macos-v#{version}/tofa-app-#{version}.dmg"

  name "TOFA"
  desc "Offline, encrypted 2FA menu bar app"
  homepage "https://github.com/stratif-io/tofa"

  app "Tofa.app"

  zap trash: [
    "~/Library/Application Support/tofa",
    "~/Library/Preferences/io.stratif.tofa.plist",
    "~/Library/Logs/tofa",
  ]
end
