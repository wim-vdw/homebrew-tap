class Wimkube < Formula
  desc "Interactive Kubernetes CLI"
  homepage "https://github.com/wim-vdw/wimkube"
  version "1.1.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wim-vdw/wimkube/releases/download/v1.1.1/wimkube-1.1.1-darwin-arm64.tar.gz"
    sha256 "13bc001e79051a759865784ca397f005c5380e2b488aadd1db9dd5fee348afe2"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wim-vdw/wimkube/releases/download/v1.1.1/wimkube-1.1.1-darwin-amd64.tar.gz"
    sha256 "08a22b3f538c95f2ddd3ecdab1094d25e8440e662c021420f48f5f44390ce411"
  end

  def install
    bin.install "wimkube"
  end

  test do
    system "#{bin}/wimkube --version"
  end
end
