class AzSecret2env < Formula
  desc "Execute a program with environment variables temporarily populated by Azure Key Vault secrets"
  homepage "https://github.com/wim-vdw/az-secret2env"
  version "1.1.2"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wim-vdw/az-secret2env/releases/download/v1.1.2/az-secret2env-1.1.2-darwin-arm64.tar.gz"
    sha256 "a0ae412e06d4e05e80e49c23fd7e4ca8b4557e7f4c2a2dc0ea5b4115566967d0"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wim-vdw/az-secret2env/releases/download/v1.1.2/az-secret2env-1.1.2-darwin-amd64.tar.gz"
    sha256 "63e025ff6a3d46c974d9dc663daffbe24bc52b6e9921c7475ec8d608ac439280"
  end

  def install
    bin.install "az-secret2env"
  end

  test do
    system "#{bin}/az-secret2env --version"
  end
end
