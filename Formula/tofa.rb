class Tofa < Formula
  desc "Offline, encrypted 2FA — CLI and TUI"
  homepage "https://github.com/stratif-io/tofa"
  version "0.6.0" # VERSION
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/stratif-io/tofa/releases/download/v#{version}/tofa-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "a84eaeb33cf7582cc0bbcacc3e4354feec93139b5fa4cba67dd803ed46faa1b1" # SHA_MAC_ARM
    end
    on_intel do
      url "https://github.com/stratif-io/tofa/releases/download/v#{version}/tofa-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "c28eefe05ba2a6b1e64846e3d65ede19cc8857bfb503303a61378390d10ea917" # SHA_MAC_X86
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/stratif-io/tofa/releases/download/v#{version}/tofa-#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e1ece81085d4e52e7f36770f00596cf0e6c888aca158ec93a2cba910977d3918" # SHA_LINUX_ARM
    end
    on_intel do
      url "https://github.com/stratif-io/tofa/releases/download/v#{version}/tofa-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "25539b1e7c370c991964c891c3b11978aeb50e1e66c64fd576b89cf45778e571" # SHA_LINUX_X86
    end
  end

  def install
    bin.install "tofa"
    generate_completions_from_executable(bin/"tofa", "completions")
  end

  test do
    assert_match "tofa", shell_output("#{bin}/tofa --version")
  end
end
