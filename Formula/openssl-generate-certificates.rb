require 'pp'
class OpenSSLGenerateCertificates < Formula
  desc "Generate self-signed certificates for client/server applications."
  homepage "https://github.com/haensl/openssl-certgen"
  url "https://github.com/haensl/openssl-certgen/archive/v1.1.2.tar.gz"
  sha256 "f574aec7300614988063687cc45c5ffbf46e0a166f28ef298b6f51b388fb3d8e"
  head "https://github.com/haensl/openssl-certgen.git"
  depends_on "openssl"

  def install
    bin.install "openssl-generate-certificates"
    system "make", "install"
  end
end
