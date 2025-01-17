class Mkpw < Formula
  desc "A simple and secure password generator written in Odin."
  homepage "https://mkpw.net/"
  url "https://github.com/duffn/mkpw/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "cca78ac22ed4b6b37521fa32cd4a11765a8203e1cad3fa8355c3782b8661a165"
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
