class Mkpw < Formula
  desc "A simple and secure password generator written in Odin."
  homepage "https://mkpw.net/"
  url "https://github.com/duffn/mkpw/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "e0e9b171763805b546acbe32b260fe0f0f5d3e0d6663a3f0f455b47c7a9212b0"
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
