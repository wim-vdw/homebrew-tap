class Wimkube < Formula
  desc "Interactive Kubernetes CLI"
  homepage "https://github.com/wim-vdw/wimkube"
  version "1.8.7"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wim-vdw/wimkube/releases/download/v1.8.7/wimkube-1.8.7-darwin-arm64.tar.gz"
    sha256 "438a539d1b6df69436e4ad2893b346d83c42f66cc833b835deaba4482ed8c3c6"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wim-vdw/wimkube/releases/download/v1.8.7/wimkube-1.8.7-darwin-amd64.tar.gz"
    sha256 "360d22d1ca32a9b95f394806f9dbeb786d6ca763487cd2ddb346e1e1caf58c2d"
  end

  def install
    bin.install "wimkube"
  end

  test do
    system "#{bin}/wimkube --version"
  end
end
