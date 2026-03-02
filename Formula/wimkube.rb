class Wimkube < Formula
  desc "Interactive Kubernetes CLI"
  homepage "https://github.com/wim-vdw/wimkube"
  version "1.6.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wim-vdw/wimkube/releases/download/v1.6.0/wimkube-1.6.0-darwin-arm64.tar.gz"
    sha256 "1d116e2bf7252b706868f9caf671456851833c1e24838ad707465a1519416755"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wim-vdw/wimkube/releases/download/v1.6.0/wimkube-1.6.0-darwin-amd64.tar.gz"
    sha256 "7a85fd1bcd6f9f545a03d2e243baaa6e72d5dbd3c18998c64899c89c042aa71a"
  end

  def install
    bin.install "wimkube"
  end

  test do
    system "#{bin}/wimkube --version"
  end
end
