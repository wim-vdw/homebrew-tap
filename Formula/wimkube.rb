class Wimkube < Formula
  desc "Interactive Kubernetes CLI"
  homepage "https://github.com/wim-vdw/wimkube"
  version "1.8.5"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wim-vdw/wimkube/releases/download/v1.8.5/wimkube-1.8.5-darwin-arm64.tar.gz"
    sha256 "15ac78186c8b50b329fa2a239e3e953b58a0136d362368dbcdba4bada19cdb7a"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wim-vdw/wimkube/releases/download/v1.8.5/wimkube-1.8.5-darwin-amd64.tar.gz"
    sha256 "7f43b4005956e6819a49113f2e57fbe174dbd33fc3ff0aa3226d0fcf57c5cee6"
  end

  def install
    bin.install "wimkube"
  end

  test do
    system "#{bin}/wimkube --version"
  end
end
