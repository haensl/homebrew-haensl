require 'pp'
class OpenSSLGenerateCertificates < Formula
  desc "Generate self-signed certificates for client/server applications."
  homepage "https://github.com/haensl/openssl-certgen"
  url "https://github.com/haensl/openssl-certgen/archive/v1.2.0.tar.gz"
  sha256 "69dc00aa7f2e3ddafbb16bad8cd49d3b0519bb469d88f379b63de4065a277b17"
  head "https://github.com/haensl/openssl-certgen.git"
  depends_on "openssl"

  def install
    bin.install "openssl-generate-certificates"
    system "make", "install"
  end
end
