class AzSecret2env < Formula
  desc "Execute a program with environment variables temporarily populated by Azure Key Vault secrets"
  homepage "https://github.com/wim-vdw/az-secret2env"
  version "1.0.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wim-vdw/az-secret2env/releases/download/v1.0.1/az-secret2env-1.0.1-darwin-arm64.tar.gz"
    sha256 "3b6e2898ffebf7359bdc452a9a616cbcf31e96f3a7a1d263a2f866913f469d37"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wim-vdw/az-secret2env/releases/download/v1.0.1/az-secret2env-1.0.1-darwin-amd64.tar.gz"
    sha256 "05f23eff9d48a00cc444a2bf80ed8b19a313ea359830c273b3fcdf69771d947e"
  end

  def install
    bin.install "az-secret2env"
  end

  test do
    system "#{bin}/az-secret2env --version"
  end
end
