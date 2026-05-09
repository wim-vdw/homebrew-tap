class Wimkube < Formula
  desc "Interactive Kubernetes CLI"
  homepage "https://github.com/wim-vdw/wimkube"
  version "1.8.3"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wim-vdw/wimkube/releases/download/v1.8.3/wimkube-1.8.3-darwin-arm64.tar.gz"
    sha256 "919409d2b324ba60ce60a98ac3ae4d2a9c16446acd79454f7ad08d9ee66106bb"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wim-vdw/wimkube/releases/download/v1.8.3/wimkube-1.8.3-darwin-amd64.tar.gz"
    sha256 "d6e6f7e873cb0683c936f368d3e4a853fc0b3fcded568fcc0edad92a4722b7f9"
  end

  def install
    bin.install "wimkube"
  end

  test do
    system "#{bin}/wimkube --version"
  end
end
