class Wimkube < Formula
  desc "Interactive Kubernetes CLI"
  homepage "https://github.com/wim-vdw/wimkube"
  version "1.8.4"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wim-vdw/wimkube/releases/download/v1.8.4/wimkube-1.8.4-darwin-arm64.tar.gz"
    sha256 "427edf3222d81b1aadc04d616f2b9be31318d80d68556ced9efc17ab93b7e69d"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wim-vdw/wimkube/releases/download/v1.8.4/wimkube-1.8.4-darwin-amd64.tar.gz"
    sha256 "55c5592637933337a576df59a71e7dfb3f7ecae98e7fd43c72f7283a19acd20b"
  end

  def install
    bin.install "wimkube"
  end

  test do
    system "#{bin}/wimkube --version"
  end
end
