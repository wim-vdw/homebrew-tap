class Wimkube < Formula
  desc "Interactive Kubernetes CLI"
  homepage "https://github.com/wim-vdw/wimkube"
  version "1.7.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wim-vdw/wimkube/releases/download/v1.7.1/wimkube-1.7.1-darwin-arm64.tar.gz"
    sha256 "36404383f5fee43e4671d68fac5dd7c9a1feda1034c699fbdd5ed8508b9c16aa"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wim-vdw/wimkube/releases/download/v1.7.1/wimkube-1.7.1-darwin-amd64.tar.gz"
    sha256 "1165b4b84a917c62369c6552f3410f69276bad67f0132d5242e115f95898a143"
  end

  def install
    bin.install "wimkube"
  end

  test do
    system "#{bin}/wimkube --version"
  end
end
