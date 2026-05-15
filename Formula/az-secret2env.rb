class AzSecret2env < Formula
  desc "Execute a program with environment variables temporarily populated by Azure Key Vault secrets"
  homepage "https://github.com/wim-vdw/az-secret2env"
  version "1.1.3"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wim-vdw/az-secret2env/releases/download/v1.1.3/az-secret2env-1.1.3-darwin-arm64.tar.gz"
    sha256 "65c839ea791f75bf74ba43fa9af4ab4eeef2bd5178a3be200ad0b5c34ab673bb"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wim-vdw/az-secret2env/releases/download/v1.1.3/az-secret2env-1.1.3-darwin-amd64.tar.gz"
    sha256 "3bb37fbbabf6f352f19da85b3ef62e8591a5825c3041e9322df5dd4e209d3b19"
  end

  def install
    bin.install "az-secret2env"
  end

  test do
    system "#{bin}/az-secret2env --version"
  end
end
