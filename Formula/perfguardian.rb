class Perfguardian < Formula
  desc "Static performance analyser for C++20 codebases"
  homepage "https://github.com/Sambit-Kumar-Mohanty-26/PerfGuardian"
  version "0.2.1"
  license "MIT"

  depends_on "llvm"

  on_macos do
    on_arm do
      url "https://github.com/Sambit-Kumar-Mohanty-26/PerfGuardian/releases/download/v0.2.1/perfguardian-macos-arm64.tar.gz"
      sha256 "bf13843fc4b56cd00658f358ccca81badb75cc709965395b559785b45d94f9d3"
    end
    on_intel do
      url "https://github.com/Sambit-Kumar-Mohanty-26/PerfGuardian/releases/download/v0.2.1/perfguardian-macos-x86_64.tar.gz"
      sha256 "68b8079b665cf6355e3a266b7aac2c13bc404bfbf7931374f6e293c976585228"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Sambit-Kumar-Mohanty-26/PerfGuardian/releases/download/v0.2.1/perfguardian-linux-x86_64.tar.gz"
      sha256 "f75ddc837d9d8d063fdd49558e548a0d5cbb71c9257b967a52297514b98f356e"
    end
  end

  def install
    bin.install "perfguardian"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/perfguardian --version")
  end
end
