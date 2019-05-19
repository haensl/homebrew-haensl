require 'pp'
class Mov2gif < Formula
  desc "Bash script to convert .mov videos to GIF animations."
  homepage "https://github.com/haensl/mov2gif"
  url "https://github.com/haensl/mov2gif/archive/v1.0.1.tar.gz"
  sha256 "3dc5ca62f13f8d0571846e1d72d7ecf9acd23d87b7bc6f5f8c49ce05cd00bfd5"
  head "https://github.com/haensl/mov2gif.git"
  depends_on "ffmpeg"
  depends_on "imagemagick"

  def install
    bin.install "mov2gif.sh" => "mov2gif"
  end

  test do
    system "mov2gif", "-v"
  end
end
