class Tofa < Formula
  desc "Offline, encrypted 2FA — CLI and TUI"
  homepage "https://github.com/stratif-io/tofa"
  version "0.8.0" # VERSION
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/stratif-io/tofa/releases/download/v#{version}/tofa-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "5058c8240550fbda2bd19bdaaa8696a746cc275a79fc6ccd3bc8181f15351c22" # SHA_MAC_ARM
    end
    on_intel do
      url "https://github.com/stratif-io/tofa/releases/download/v#{version}/tofa-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "a2e98291225d59c0e4040c33625623fe80d8c3323e36f850fa692891be3cbcfb" # SHA_MAC_X86
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/stratif-io/tofa/releases/download/v#{version}/tofa-#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d7a2f938568e30efd9ef63130c6576add8eb077b6260568dcb4765fffe05c606" # SHA_LINUX_ARM
    end
    on_intel do
      url "https://github.com/stratif-io/tofa/releases/download/v#{version}/tofa-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d0521fb7e4e4180f54ccda9674e7cfde48f2fac135889d21a4e3285168cd96b0" # SHA_LINUX_X86
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
