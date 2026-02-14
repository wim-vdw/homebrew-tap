class Wimkube < Formula
  desc "Interactive Kubernetes CLI"
  homepage "https://github.com/wim-vdw/wimkube"
  version "1.0.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wim-vdw/wimkube/releases/download/v1.0.0/wimkube-1.0.0-darwin-arm64.tar.gz"
    sha256 "5c36077cc83378d47b7b6aa6ea0a5427b0604e0a1bb57e43e5a6ba98b75cc2e6"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wim-vdw/wimkube/releases/download/v1.0.0/wimkube-1.0.0-darwin-amd64.tar.gz"
    sha256 "429e781e89fafc10b507583427abb5866d7b4ec17e221a2767bbe4e420d7afb7"
  end

  def install
    bin.install "wimkube"
  end

  test do
    system "#{bin}/wimkube --version"
  end
end
