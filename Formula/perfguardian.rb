class Perfguardian < Formula
  desc "Static performance analyser for C++20 codebases"
  homepage "https://github.com/Sambit-Kumar-Mohanty-26/PerfGuardian"
  version "0.1.0"
  license "MIT"

  depends_on "llvm"

  on_macos do
    on_arm do
      url "https://github.com/Sambit-Kumar-Mohanty-26/PerfGuardian/releases/download/v0.1.0/perfguardian-macos-arm64.tar.gz"
      sha256 "1c6bddd59e5e3ccdd0dda2865163712396298b3f9893e040cd898615887b4606"
    end
    on_intel do
      url "https://github.com/Sambit-Kumar-Mohanty-26/PerfGuardian/releases/download/v0.1.0/perfguardian-macos-x86_64.tar.gz"
      sha256 "834dd3c6a09ee997a1f9f6e8bc307eaf5d67df0dcc2161376820f8fc5c86c945"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Sambit-Kumar-Mohanty-26/PerfGuardian/releases/download/v0.1.0/perfguardian-linux-x86_64.tar.gz"
      sha256 "ff5d0034f61bb5115f3a13bef4ddbb526eab058ece55185519711bfbebee9c01"
    end
  end

  def install
    bin.install "perfguardian"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/perfguardian --version")
  end
end
