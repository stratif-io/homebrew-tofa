class Tofa < Formula
  desc "Offline, encrypted 2FA — CLI and TUI"
  homepage "https://github.com/stratif-io/tofa"
  version "0.12.1" # VERSION
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/stratif-io/tofa/releases/download/v#{version}/tofa-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "8dfc5eb0b476283e4cda5ca639b32aebfc8aa408fa490c7b0143cf6154e7dae8" # SHA_MAC_ARM
    end
    on_intel do
      url "https://github.com/stratif-io/tofa/releases/download/v#{version}/tofa-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "db02d82834f5941422c355ba6175bfd5350da886afd36278ef9827bb13f16a86" # SHA_MAC_X86
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/stratif-io/tofa/releases/download/v#{version}/tofa-#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4d139321ed5db2476080947675f72eaa7097e4b4211c9f258145116ac699dd84" # SHA_LINUX_ARM
    end
    on_intel do
      url "https://github.com/stratif-io/tofa/releases/download/v#{version}/tofa-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e1d2124529ec10ff4933f1a68f313fb6561abdd0844b73c824639fbfabf9da5e" # SHA_LINUX_X86
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
