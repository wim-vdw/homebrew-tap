class Wimkube < Formula
  desc "Interactive Kubernetes CLI"
  homepage "https://github.com/wim-vdw/wimkube"
  version "1.1.3"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wim-vdw/wimkube/releases/download/v1.1.3/wimkube-1.1.3-darwin-arm64.tar.gz"
    sha256 "60668c556753f9c42cb406130854338cb7f223d47e0f8e07c7405d83775c7b84"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wim-vdw/wimkube/releases/download/v1.1.3/wimkube-1.1.3-darwin-amd64.tar.gz"
    sha256 "9b24468f8ea2df7b4cc912bc5eb194363b99eed6976b67b83314f7f5dcbfd638"
  end

  def install
    bin.install "wimkube"
  end

  test do
    system "#{bin}/wimkube --version"
  end
end
