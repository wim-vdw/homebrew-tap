class AzSecret2env < Formula
  desc "Execute a program with environment variables temporarily populated by Azure Key Vault secrets"
  homepage "https://github.com/wim-vdw/az-secret2env"
  version "1.1.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wim-vdw/az-secret2env/releases/download/v1.1.0/az-secret2env-1.1.0-darwin-arm64.tar.gz"
    sha256 "2a851a94c0c3031be797f6ebcb682722aa12ef701924a86a02cd711089d6af9f"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wim-vdw/az-secret2env/releases/download/v1.1.0/az-secret2env-1.1.0-darwin-amd64.tar.gz"
    sha256 "ff24abb91ca8e148483ec5dbf588fb808ba2094d5ca2e4e7821e42db9cc80553"
  end

  def install
    bin.install "az-secret2env"
  end

  test do
    system "#{bin}/az-secret2env --version"
  end
end
