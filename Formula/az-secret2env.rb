class AzSecret2env < Formula
  desc "Execute a program with environment variables temporarily populated by Azure Key Vault secrets"
  homepage "https://github.com/wim-vdw/az-secret2env"
  version "1.0.4"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wim-vdw/az-secret2env/releases/download/v1.0.4/az-secret2env-1.0.4-darwin-arm64.tar.gz"
    sha256 "14c21b849b0a3ee9fe1b43992c8e335658f7229efbaa0ce9b08c0017ad7a8499"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wim-vdw/az-secret2env/releases/download/v1.0.4/az-secret2env-1.0.4-darwin-amd64.tar.gz"
    sha256 "4ab9a5ebfc2d964b9f5c15776b8fa65113e6dd44b457264f017422f11a7878ec"
  end

  def install
    bin.install "az-secret2env"
  end

  test do
    system "#{bin}/az-secret2env --version"
  end
end
