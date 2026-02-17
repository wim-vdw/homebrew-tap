class Wimkube < Formula
  desc "Interactive Kubernetes CLI"
  homepage "https://github.com/wim-vdw/wimkube"
  version "1.5.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wim-vdw/wimkube/releases/download/v1.5.0/wimkube-1.5.0-darwin-arm64.tar.gz"
    sha256 "545d38aed1fceab11088ae661079b7383b677cc55cee77795678907a01ad7305"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wim-vdw/wimkube/releases/download/v1.5.0/wimkube-1.5.0-darwin-amd64.tar.gz"
    sha256 "36db1b713d3b4a2657800cb9c1b49e5af6f6cc3d668a9c2ce330fc83732f5bc9"
  end

  def install
    bin.install "wimkube"
  end

  test do
    system "#{bin}/wimkube --version"
  end
end
