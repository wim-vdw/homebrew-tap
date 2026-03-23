class Wimkube < Formula
  desc "Interactive Kubernetes CLI"
  homepage "https://github.com/wim-vdw/wimkube"
  version "1.8.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wim-vdw/wimkube/releases/download/v1.8.0/wimkube-1.8.0-darwin-arm64.tar.gz"
    sha256 "8e687f5789bd1389f5a22bb9398da38fc2a94f535dc0af4c0cfa3ef9855655b1"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wim-vdw/wimkube/releases/download/v1.8.0/wimkube-1.8.0-darwin-amd64.tar.gz"
    sha256 "0a82e6f1b8f7948a1dd173011a92d4f78d7a2f24aaca0bfda941a52ebc3d81d3"
  end

  def install
    bin.install "wimkube"
  end

  test do
    system "#{bin}/wimkube --version"
  end
end
