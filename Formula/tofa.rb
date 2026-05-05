class Tofa < Formula
  desc "Offline, encrypted 2FA — CLI and TUI"
  homepage "https://github.com/stratif-io/tofa"
  version "0.4.0" # VERSION
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/stratif-io/tofa/releases/download/v#{version}/tofa-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "7ad840343d5c2e40f9a9d8e3c33f55e2001bd064610468dcd8ccbaa833c1ee07" # SHA_MAC_ARM
    end
    on_intel do
      url "https://github.com/stratif-io/tofa/releases/download/v#{version}/tofa-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "543f1e73c05062f2ad676cdb72b6404c82a9192d9392f4c705340ac2892e8569" # SHA_MAC_X86
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/stratif-io/tofa/releases/download/v#{version}/tofa-#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "938a3d3ae268058de82c84076b237fbc814096cb32c783bb502aeac493e21967" # SHA_LINUX_ARM
    end
    on_intel do
      url "https://github.com/stratif-io/tofa/releases/download/v#{version}/tofa-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2b25723f9bc42cdd1b8563ca923929a287179398d1a12e66f32bc771b88c8ae1" # SHA_LINUX_X86
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
