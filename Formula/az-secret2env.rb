class AzSecret2env < Formula
  desc "Execute a program with environment variables temporarily populated by Azure Key Vault secrets"
  homepage "https://github.com/wim-vdw/az-secret2env"
  version "1.1.5"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wim-vdw/az-secret2env/releases/download/v1.1.5/az-secret2env-1.1.5-darwin-arm64.tar.gz"
    sha256 "7ed0aed9ae8d86ab66f6a541d8751c05862b55941c70b049f90f1996c24e39a2"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wim-vdw/az-secret2env/releases/download/v1.1.5/az-secret2env-1.1.5-darwin-amd64.tar.gz"
    sha256 "0e4fd2e4db16888dc08babc924411f35880ed30c96c27790f6a2a1cc425615d0"
  end

  def install
    bin.install "az-secret2env"
  end

  test do
    system "#{bin}/az-secret2env --version"
  end
end
