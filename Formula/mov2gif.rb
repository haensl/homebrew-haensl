require 'pp'
class Mov2Gif < Formula
  desc "Bash script to convert .mov videos to GIF animations."
  homepage "https://github.com/haensl/mov2gif"
  url "https://github.com/haensl/mov2gif/archive/v1.0.0.tar.gz"
  sha256 "42d5b016504c3b82d2d5e47681d2f64618f7419bb58e3f9dc0b7ea301278660c"
  head "https://github.com/haensl/mov2gif.git"
  depends_on "ffmpeg"
  depends_on "imagemagick"

  def install
    system "make", "install"
  end
end
