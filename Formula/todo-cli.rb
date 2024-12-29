class TodoCli < Formula
  desc "To-Do list CLI application written in Go"
  homepage "https://github.com/wim-vdw/todo-cli"
  version "1.4.5"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wim-vdw/todo-cli/releases/download/v1.4.5/todo-cli_1.4.5_darwin_arm64.tar.gz"
    sha256 "fda2201c4ad2da28e4328f45d26d4c854c6035c7ef480257ccac8367fb0b70f0"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wim-vdw/todo-cli/releases/download/v1.4.5/todo-cli_1.4.5_darwin_amd64.tar.gz"
    sha256 "ac6686aae0053517be3c4479a0f4834a4e313181ffdfbf3c09654aef175d8fbb"
  end

  def install
    bin.install "todo-cli"
  end

  test do
    system "#{bin}/todo-cli --version"
  end
end
