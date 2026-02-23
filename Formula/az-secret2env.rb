class AzSecret2env < Formula
  desc "Execute a program with environment variables temporarily populated by Azure Key Vault secrets"
  homepage "https://github.com/wim-vdw/az-secret2env"
  version "1.0.5"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wim-vdw/az-secret2env/releases/download/v1.0.5/az-secret2env-1.0.5-darwin-arm64.tar.gz"
    sha256 "6681e1e4f6f447992fc12c5705133d2f67cbe188a7706586a99824b0d8641fb9"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wim-vdw/az-secret2env/releases/download/v1.0.5/az-secret2env-1.0.5-darwin-amd64.tar.gz"
    sha256 "e9d1fc116c32df4c233238da89eb66120862a8246c34b59d10b32babfc8dacc0"
  end

  def install
    bin.install "az-secret2env"
  end

  test do
    system "#{bin}/az-secret2env --version"
  end
end
