class Mkpw < Formula
  desc "A simple and secure password generator written in Odin."
  homepage "https://mkpw.net/"
  url "https://github.com/duffn/mkpw/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "b1bb4e0a3ab254b76a8bb2978113ef5362af45a6328d7c8bf51a0f39dd0382cf"
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
