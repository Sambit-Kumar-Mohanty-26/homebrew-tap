class Perfguardian < Formula
  desc "Static performance analyser for C++20 codebases"
  homepage "https://github.com/Sambit-Kumar-Mohanty-26/PerfGuardian"
  version "1.0.0"
  license "MIT"

  depends_on "llvm"

  on_macos do
    on_arm do
      url "https://github.com/Sambit-Kumar-Mohanty-26/PerfGuardian/releases/download/v1.0.0/perfguardian-macos-arm64.tar.gz"
      sha256 "5cb275045a0563ee7c6f6bb9cdbff105718551fe99a5eaa0adc815eff4700583"
    end
    on_intel do
      url "https://github.com/Sambit-Kumar-Mohanty-26/PerfGuardian/releases/download/v1.0.0/perfguardian-macos-x86_64.tar.gz"
      sha256 "98b9a67e10818437bebc7c08d8f26e75625141f3ff7d69b3dbcff7837718982f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Sambit-Kumar-Mohanty-26/PerfGuardian/releases/download/v1.0.0/perfguardian-linux-x86_64.tar.gz"
      sha256 "3c3514b0a0d2b960afeac483c243184d41f96cdc861c7ea544cefbb2232accae"
    end
  end

  def install
    bin.install "perfguardian"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/perfguardian --version")
  end
end
