class Wimkube < Formula
  desc "Interactive Kubernetes CLI"
  homepage "https://github.com/wim-vdw/wimkube"
  version "1.1.4"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wim-vdw/wimkube/releases/download/v1.1.4/wimkube-1.1.4-darwin-arm64.tar.gz"
    sha256 "7fbdf1ccba3d649b04d5e680deeb4becf2f2e61df647dbb56296591221410db4"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wim-vdw/wimkube/releases/download/v1.1.4/wimkube-1.1.4-darwin-amd64.tar.gz"
    sha256 "ee7b81e351b569da023b0580684b4a2b806e2e7cfe23347f43c93bf0046323f7"
  end

  def install
    bin.install "wimkube"
  end

  test do
    system "#{bin}/wimkube --version"
  end
end
