class Perfguardian < Formula
  desc "Static performance analyser for C++20 codebases"
  homepage "https://github.com/Sambit-Kumar-Mohanty-26/PerfGuardian"
  version "0.2.0"
  license "MIT"

  depends_on "llvm"

  on_macos do
    on_arm do
      url "https://github.com/Sambit-Kumar-Mohanty-26/PerfGuardian/releases/download/v0.2.0/perfguardian-macos-arm64.tar.gz"
      sha256 "abbc3c770840a3dd73651012f93458b90ddf57afb456c14147457db8dd13f56c"
    end
    on_intel do
      url "https://github.com/Sambit-Kumar-Mohanty-26/PerfGuardian/releases/download/v0.2.0/perfguardian-macos-x86_64.tar.gz"
      sha256 "9fdfd7bd6167af417086bc6133baf8ff5648015a5733a90b8fa6e032295337c9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Sambit-Kumar-Mohanty-26/PerfGuardian/releases/download/v0.2.0/perfguardian-linux-x86_64.tar.gz"
      sha256 "2fdb3fda8f84174eee7f4d06bd289e79798538acca2b53be3a6116b998c874b2"
    end
  end

  def install
    bin.install "perfguardian"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/perfguardian --version")
  end
end
