cask "tofa" do
  version "0.12.0" # VERSION
  sha256 "4392497baa06724ece1d2ce3f34f3be98a609375da2e1fcefb5be75d8711752d" # SHA_DMG

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
