require 'pp'
class M4a2mp3 < Formula
  desc "Bash tool to convert .m4a files to MP3."
  homepage "https://github.com/haensl/m4a2mp3"
  url "https://github.com/haensl/m4a2mp3/archive/v1.0.0.tar.gz"
  sha256 "47e1ec22a8315b73dd8b2eb975a7c7ee7f10ea5a98f272f38cc26333e61934e9"
  head "https://github.com/haensl/m4a2mp3.git"
  depends_on "ffmpeg"

  def install
    bin.install "m4a2mp3.sh" => "m4a2mp3"
    system "make", "install"
  end

  test do
    system "m4a2mp3", "-v"
  end
end
