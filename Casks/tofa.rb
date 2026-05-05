cask "tofa" do
  version "0.5.1" # VERSION
  sha256 "d7e03ca6dd06cabc41d12ef3ccff262e413b9b7aaac3cf2ca2dfd53602c6abff" # SHA_DMG

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
