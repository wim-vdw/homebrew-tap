class Wimkube < Formula
  desc "Interactive Kubernetes CLI"
  homepage "https://github.com/wim-vdw/wimkube"
  version "1.8.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wim-vdw/wimkube/releases/download/v1.8.1/wimkube-1.8.1-darwin-arm64.tar.gz"
    sha256 "b9ea6d7e02bb4669751fae581e2f7db4edceb725dc30462d56566cb322c634e9"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wim-vdw/wimkube/releases/download/v1.8.1/wimkube-1.8.1-darwin-amd64.tar.gz"
    sha256 "9c8d1413c2af61319d67567bc5c9968d842666ae812a759a7f3e007054026a70"
  end

  def install
    bin.install "wimkube"
  end

  test do
    system "#{bin}/wimkube --version"
  end
end
