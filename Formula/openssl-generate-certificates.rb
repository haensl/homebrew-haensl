require 'pp'
class OpenSSLGenerateCertificates < Formula
  desc "Generate self-signed certificates for client/server applications."
  homepage "https://github.com/haensl/openssl-certgen"
  url "https://github.com/haensl/openssl-certgen/archive/v1.1.1.tar.gz"
  sha256 "7b2656daa0fc74397cc933c1666c35d91748b96c66384592bd755a3936b8421d"
  head "https://github.com/haensl/openssl-certgen.git"
  depends_on "openssl"

  def install
    bin.install "openssl-generate-certificates"
    system "make", "install"
  end
end
