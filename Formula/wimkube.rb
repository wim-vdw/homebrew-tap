class Wimkube < Formula
  desc "Interactive Kubernetes CLI"
  homepage "https://github.com/wim-vdw/wimkube"
  version "1.8.2"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wim-vdw/wimkube/releases/download/v1.8.2/wimkube-1.8.2-darwin-arm64.tar.gz"
    sha256 "9a0094c99d0f12a055de638c848433c02346e1ba9ecad8b18cba85063c95780f"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wim-vdw/wimkube/releases/download/v1.8.2/wimkube-1.8.2-darwin-amd64.tar.gz"
    sha256 "c5c400132902b086193d1de180f174c5b8f27cac39b00e0933d95ca6c16413ba"
  end

  def install
    bin.install "wimkube"
  end

  test do
    system "#{bin}/wimkube --version"
  end
end
