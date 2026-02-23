class Wimkube < Formula
  desc "Interactive Kubernetes CLI"
  homepage "https://github.com/wim-vdw/wimkube"
  version "1.5.2"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wim-vdw/wimkube/releases/download/v1.5.2/wimkube-1.5.2-darwin-arm64.tar.gz"
    sha256 "dbfc268a16d8719fdaf44c2f3956293f5887e78ae12c7838bd214f2f102a40d0"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wim-vdw/wimkube/releases/download/v1.5.2/wimkube-1.5.2-darwin-amd64.tar.gz"
    sha256 "984e3a6f5925c85d5b8620327efe065805a76586c7de2ba22561813086cb61ed"
  end

  def install
    bin.install "wimkube"
  end

  test do
    system "#{bin}/wimkube --version"
  end
end
