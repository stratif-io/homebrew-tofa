cask "tofa" do
  version "0.12.5" # VERSION
  sha256 "13a4427bd41b2de28c4a389bbce6ea196f035d6b782bc5bc84eb2af2fd5f8692" # SHA_DMG

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
