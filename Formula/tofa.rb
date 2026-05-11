class Tofa < Formula
  desc "Offline, encrypted 2FA — CLI and TUI"
  homepage "https://github.com/stratif-io/tofa"
  version "0.12.0" # VERSION
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/stratif-io/tofa/releases/download/v#{version}/tofa-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "396dcd76c29e522feb46503f8b6415841c6091c77d3c1f2ac3f598f1e48500c6" # SHA_MAC_ARM
    end
    on_intel do
      url "https://github.com/stratif-io/tofa/releases/download/v#{version}/tofa-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "53aab5f864ab869acec18cbc61fea9f8b05e6b391fee877b47f8d00cafb81977" # SHA_MAC_X86
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/stratif-io/tofa/releases/download/v#{version}/tofa-#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "770ee5eaef117cd7f57b63b4c5317bb75848eeb2aeda6816ce1557e184968ba5" # SHA_LINUX_ARM
    end
    on_intel do
      url "https://github.com/stratif-io/tofa/releases/download/v#{version}/tofa-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "35e29e6f6e5cf9fa2e42d5768f740a8300b8552c3a678232f76a74c4e23c1db1" # SHA_LINUX_X86
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
