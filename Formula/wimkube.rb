class Wimkube < Formula
  desc "Interactive Kubernetes CLI"
  homepage "https://github.com/wim-vdw/wimkube"
  version "1.7.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wim-vdw/wimkube/releases/download/v1.7.0/wimkube-1.7.0-darwin-arm64.tar.gz"
    sha256 "6dfe8ad01548e099e13661d5bd9666ed7dd455825cf3e58625280b7d20d681e1"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wim-vdw/wimkube/releases/download/v1.7.0/wimkube-1.7.0-darwin-amd64.tar.gz"
    sha256 "8d00e262efac451e2a971e6a7de41e4a062e4055a2629189ab66d97039f7a9ba"
  end

  def install
    bin.install "wimkube"
  end

  test do
    system "#{bin}/wimkube --version"
  end
end
