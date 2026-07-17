class AzSecret2env < Formula
  desc "Execute a program with environment variables temporarily populated by Azure Key Vault secrets"
  homepage "https://github.com/wim-vdw/az-secret2env"
  version "1.1.4"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wim-vdw/az-secret2env/releases/download/v1.1.4/az-secret2env-1.1.4-darwin-arm64.tar.gz"
    sha256 "634873492053c38d74c7fd4dffb03d2427f329185bd821e4b7ad40fc4857f2cd"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wim-vdw/az-secret2env/releases/download/v1.1.4/az-secret2env-1.1.4-darwin-amd64.tar.gz"
    sha256 "719c21a24f45e22e94d249e050cf0b065883bd019a019c3b2322a49994aa0def"
  end

  def install
    bin.install "az-secret2env"
  end

  test do
    system "#{bin}/az-secret2env --version"
  end
end
