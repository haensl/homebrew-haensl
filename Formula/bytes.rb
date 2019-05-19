require 'pp'
class Bytes < Formula
  desc "Bash tool to calculate the disk space consumed by files within a directory."
  homepage "https://github.com/haensl/bytes"
  url "https://github.com/haensl/bytes/archive/v1.5.1.tar.gz"
  sha256 "1ab6df98ac9703eedae4687d40e0807eeae03c5cb9a296f3d3981cf84349a63e"
  head "https://github.com/haensl/bytes.git"

  def install
    bin.install "bytes.sh" => "bytes"
    man1.install "man/bytes.1.gz"
  end

  test do
    system "bytes", "-v"
  end
end
