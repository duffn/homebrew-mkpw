class Mkpw < Formula
  desc "A simple and secure password generator written in Odin."
  homepage "https://mkpw.net/"
  url "https://github.com/duffn/mkpw/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "d1886112ada454e54c1adfceb4cf9062ccb828e969d98fcca3bc444bcd1bb258"
  license "MIT"

  depends_on "odin" => :build

  def install
    system "odin", "build", "main", "-out:mkpw"
    bin.install "mkpw"
  end

  test do
    system bin/"mkpw"
  end
end
