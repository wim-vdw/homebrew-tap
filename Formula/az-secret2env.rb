class AzSecret2env < Formula
  desc "Execute a program with environment variables temporarily populated by Azure Key Vault secrets"
  homepage "https://github.com/wim-vdw/az-secret2env"
  version "1.0.2"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wim-vdw/az-secret2env/releases/download/v1.0.2/az-secret2env-1.0.2-darwin-arm64.tar.gz"
    sha256 "45cb45f40654811bb6b41febabf680b27a040470029f40b53c7fa175257e3c9d"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wim-vdw/az-secret2env/releases/download/v1.0.2/az-secret2env-1.0.2-darwin-amd64.tar.gz"
    sha256 "32dd7ed67301351cd01286f38a30c128cc388e9c21f43eb274b7e4f7cbd32043"
  end

  def install
    bin.install "az-secret2env"
  end

  test do
    system "#{bin}/az-secret2env --version"
  end
end
