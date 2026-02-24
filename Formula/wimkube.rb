class Wimkube < Formula
  desc "Interactive Kubernetes CLI"
  homepage "https://github.com/wim-vdw/wimkube"
  version "1.5.3"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wim-vdw/wimkube/releases/download/v1.5.3/wimkube-1.5.3-darwin-arm64.tar.gz"
    sha256 "661a76ee198e03fe5713e572419dbb5e48cdc3f94ac3839d1ef19eb2fe267c10"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wim-vdw/wimkube/releases/download/v1.5.3/wimkube-1.5.3-darwin-amd64.tar.gz"
    sha256 "10687709cceaaa07b20da46b281430cd97fbe08e673316b1fc4e93618c6317a1"
  end

  def install
    bin.install "wimkube"
  end

  test do
    system "#{bin}/wimkube --version"
  end
end
