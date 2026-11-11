class Wimkube < Formula
  desc "Interactive Kubernetes CLI"
  homepage "https://github.com/wim-vdw/wimkube"
  version "1.8.8"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wim-vdw/wimkube/releases/download/v1.8.8/wimkube-1.8.8-darwin-arm64.tar.gz"
    sha256 "e9a7cb0678e6590ede6b1c961fea661c455369113b93a33988d91f7c88874c0f"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wim-vdw/wimkube/releases/download/v1.8.8/wimkube-1.8.8-darwin-amd64.tar.gz"
    sha256 "ec9207d805b864491bddd1318de56f3aac27f4796c3b3d1c4ae18d1fb8d11c06"
  end

  def install
    bin.install "wimkube"
  end

  test do
    system "#{bin}/wimkube --version"
  end
end
