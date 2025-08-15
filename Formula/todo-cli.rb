class TodoCli < Formula
  desc "To-Do list CLI application written in Go"
  homepage "https://github.com/wim-vdw/todo-cli"
  version "1.4.7"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wim-vdw/todo-cli/releases/download/v1.4.7/todo-cli_1.4.7_darwin_arm64.tar.gz"
    sha256 "a7cab9a3cd45037ea58a7b2a8336d415d0a20adcc99e8a5483877f4c06b9ea9b"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wim-vdw/todo-cli/releases/download/v1.4.7/todo-cli_1.4.7_darwin_amd64.tar.gz"
    sha256 "ad1867440c47d0b16a3fbd7ddee2182811d1bfee166ae1f6ef858db98cc5399a"
  end

  def install
    bin.install "todo-cli"
  end

  test do
    system "#{bin}/todo-cli --version"
  end
end
