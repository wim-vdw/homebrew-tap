class Wimkube < Formula
  desc "Interactive Kubernetes CLI"
  homepage "https://github.com/wim-vdw/wimkube"
  version "1.5.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wim-vdw/wimkube/releases/download/v1.5.1/wimkube-1.5.1-darwin-arm64.tar.gz"
    sha256 "83a7cba33f744bca8e5b6ee8700e0bf115d0f30e5fbc66c97350802c8a3fe60a"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wim-vdw/wimkube/releases/download/v1.5.1/wimkube-1.5.1-darwin-amd64.tar.gz"
    sha256 "647969d2a3dc5cc31535378f5974b8db623000bb8b77b55f432765efe444cdb6"
  end

  def install
    bin.install "wimkube"
  end

  test do
    system "#{bin}/wimkube --version"
  end
end
