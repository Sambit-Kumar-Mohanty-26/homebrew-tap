class Perfguardian < Formula
  desc "Static performance analyser for C++20 codebases"
  homepage "https://github.com/Sambit-Kumar-Mohanty-26/PerfGuardian"
  version "0.4.0"
  license "MIT"

  depends_on "llvm"

  on_macos do
    on_arm do
      url "https://github.com/Sambit-Kumar-Mohanty-26/PerfGuardian/releases/download/v0.4.0/perfguardian-macos-arm64.tar.gz"
      sha256 "b42e2af6457469ea0f01fc0511a978a41248cacd037bd2d705f42e4cd16b8db8"
    end
    on_intel do
      url "https://github.com/Sambit-Kumar-Mohanty-26/PerfGuardian/releases/download/v0.4.0/perfguardian-macos-x86_64.tar.gz"
      sha256 "492ab10b83e43f87a2b6bb4087f2fe9169d0fcc1c2bafc2b60e66d3a9bdf8392"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Sambit-Kumar-Mohanty-26/PerfGuardian/releases/download/v0.4.0/perfguardian-linux-x86_64.tar.gz"
      sha256 "82820de5167dccecfdfb9d3a3e2ecc7780b97d800a8dd833202c439b6e517219"
    end
  end

  def install
    bin.install "perfguardian"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/perfguardian --version")
  end
end
