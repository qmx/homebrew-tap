class Sterna < Formula
  desc "Persistent task memory for AI coding agents"
  homepage "https://github.com/qmx/sterna"
  license "MIT"
  head "https://github.com/qmx/sterna.git", branch: "master"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "st", shell_output("#{bin}/st --help")
  end
end
