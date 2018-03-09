require 'pp'
class OpenSSLGenerateCertificates < Formula
  desc "Generate self-signed certificates for client/server applications."
  homepage "https://github.com/haensl/openssl-certgen"
  url "https://github.com/haensl/openssl-certgen/archive/v1.1.0.tar.gz"
  sha256 "3afa31accbdab3b0e05e1c8c9fe8e9d0daa373498e77995dcea21d7ddbb737f0"
  head "https://github.com/haensl/openssl-certgen.git"
  depends_on "openssl"

  def install
    bin.install "openssl-generate-certificates"
    system "make", "install"
  end
end
