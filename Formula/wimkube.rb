class Wimkube < Formula
  desc "Interactive Kubernetes CLI"
  homepage "https://github.com/wim-vdw/wimkube"
  version "1.3.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wim-vdw/wimkube/releases/download/v1.3.0/wimkube-1.3.0-darwin-arm64.tar.gz"
    sha256 "fa11be96f37f2a278cb989c53c0fbc48e453e23cdf49f3af079e1174cb1e6464"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wim-vdw/wimkube/releases/download/v1.3.0/wimkube-1.3.0-darwin-amd64.tar.gz"
    sha256 "21bec6f457ab88630dc6e49a81d96eda7ef3652286dfb7183985c73161d8adb2"
  end

  def install
    bin.install "wimkube"
  end

  test do
    system "#{bin}/wimkube --version"
  end
end
