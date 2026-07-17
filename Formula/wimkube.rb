class Wimkube < Formula
  desc "Interactive Kubernetes CLI"
  homepage "https://github.com/wim-vdw/wimkube"
  version "1.8.6"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wim-vdw/wimkube/releases/download/v1.8.6/wimkube-1.8.6-darwin-arm64.tar.gz"
    sha256 "f2ffd7beeab27da29a63e235c95aa47331788ba882dba72a0bdcaa1dd13bc5c0"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wim-vdw/wimkube/releases/download/v1.8.6/wimkube-1.8.6-darwin-amd64.tar.gz"
    sha256 "8c2a15730d4b389d618276baffb98c2d072ba4ea6f4379676ae2d08bebddd58f"
  end

  def install
    bin.install "wimkube"
  end

  test do
    system "#{bin}/wimkube --version"
  end
end
