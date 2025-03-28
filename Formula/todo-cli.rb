class TodoCli < Formula
  desc "To-Do list CLI application written in Go"
  homepage "https://github.com/wim-vdw/todo-cli"
  version "1.4.6"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wim-vdw/todo-cli/releases/download/v1.4.6/todo-cli_1.4.6_darwin_arm64.tar.gz"
    sha256 "5c77f1cdd465df470a88517b493c1209b310c968c3256cfc463ff0b088cd7824"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wim-vdw/todo-cli/releases/download/v1.4.6/todo-cli_1.4.6_darwin_amd64.tar.gz"
    sha256 "148dffabaff48bbffa91eecf9332f2fca68ab864b307e186f8d9bb0e22f9e065"
  end

  def install
    bin.install "todo-cli"
  end

  test do
    system "#{bin}/todo-cli --version"
  end
end
