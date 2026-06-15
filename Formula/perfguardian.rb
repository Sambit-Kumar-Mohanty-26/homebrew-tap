class Perfguardian < Formula
  desc "Static performance analyser for C++20 codebases"
  homepage "https://github.com/Sambit-Kumar-Mohanty-26/PerfGuardian"
  version "0.3.0"
  license "MIT"

  depends_on "llvm"

  on_macos do
    on_arm do
      url "https://github.com/Sambit-Kumar-Mohanty-26/PerfGuardian/releases/download/v0.3.0/perfguardian-macos-arm64.tar.gz"
      sha256 "8391ab57c345d7890feec98b19eed01f566fdd074086ce5d1acc5376dcabc998"
    end
    on_intel do
      url "https://github.com/Sambit-Kumar-Mohanty-26/PerfGuardian/releases/download/v0.3.0/perfguardian-macos-x86_64.tar.gz"
      sha256 "3d92cdbbf075fc365bd522020b6a7d72a65d453b85611ad26340a4a3a8a6a123"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Sambit-Kumar-Mohanty-26/PerfGuardian/releases/download/v0.3.0/perfguardian-linux-x86_64.tar.gz"
      sha256 "b97ff0fa8355a400c9b72206b7af9655c39cba23f6ce36d942330d1db1fa246f"
    end
  end

  def install
    bin.install "perfguardian"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/perfguardian --version")
  end
end
