cask "tofa" do
  version "0.12.4" # VERSION
  sha256 "a0b2088f87a406b81f9d702c4f855feb9affab3bb882531a66878e60fe7e05bf" # SHA_DMG

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
