class AzSecret2env < Formula
  desc "Execute a program with environment variables temporarily populated by Azure Key Vault secrets"
  homepage "https://github.com/wim-vdw/az-secret2env"
  version "1.0.3"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wim-vdw/az-secret2env/releases/download/v1.0.3/az-secret2env-1.0.3-darwin-arm64.tar.gz"
    sha256 "dc78dafbdc39dd58c4f36c3038ca6c7b13b52da60c79121c8a3b996d39beb948"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wim-vdw/az-secret2env/releases/download/v1.0.3/az-secret2env-1.0.3-darwin-amd64.tar.gz"
    sha256 "6e9c273f14b89cb535300514e7e3fb0cb4ce790fe92959743b9b2e9ba2df8c2e "
  end

  def install
    bin.install "az-secret2env"
  end

  test do
    system "#{bin}/az-secret2env --version"
  end
end
