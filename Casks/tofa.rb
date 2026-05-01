cask "tofa" do
  version "PLACEHOLDER_VERSION" # VERSION
  sha256 "PLACEHOLDER_SHA_DMG" # SHA_DMG

  url "https://github.com/cabichahine/tofa/releases/download/v#{version}/tofa-#{version}.dmg"

  name "tofa"
  desc "Eye-candy terminal OTP manager"
  homepage "https://github.com/cabichahine/tofa"

  app "tofa.app"

  zap trash: [
    "~/.config/tofa",
  ]
end
