class AzSecret2env < Formula
  desc "Execute a program with environment variables temporarily populated by Azure Key Vault secrets"
  homepage "https://github.com/wim-vdw/az-secret2env"
  version "1.0.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wim-vdw/az-secret2env/releases/download/v1.0.0/az-secret2env-1.0.0-darwin-arm64.tar.gz"
    sha256 "0de2fb207709ae1d46f499e3b38c992228cf590f17ae0a1e00865d6416a9d8d6"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wim-vdw/az-secret2env/releases/download/v1.0.0/az-secret2env-1.0.0-darwin-amd64.tar.gz"
    sha256 "5bd348df96fb689fb968fad615fb523e1de8589078259f359a9fa46e2d4f959e"
  end

  def install
    bin.install "az-secret2env"
  end

  test do
    system "#{bin}/az-secret2env --version"
  end
end
