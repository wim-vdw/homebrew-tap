class Wimkube < Formula
  desc "Interactive Kubernetes CLI"
  homepage "https://github.com/wim-vdw/wimkube"
  version "1.9.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wim-vdw/wimkube/releases/download/v1.9.0/wimkube-1.9.0-darwin-arm64.tar.gz"
    sha256 "23d90f09755ebf276534231eb8b94101bf7c7968bd07c1c91be918267b384560"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wim-vdw/wimkube/releases/download/v1.9.0/wimkube-1.9.0-darwin-amd64.tar.gz"
    sha256 "3a361e583eecd753d73d529dc2fec738063ad90ea877bd41a0a35b1d75ade350"
  end

  def install
    bin.install "wimkube"
  end

  test do
    system "#{bin}/wimkube --version"
  end
end
