require 'pp'
class OpensslGenerateCertificates < Formula
  desc "Generate self-signed certificates for client/server applications."
  homepage "https://github.com/haensl/openssl-certgen"
  url "https://github.com/haensl/openssl-certgen/archive/v1.2.2.tar.gz"
  sha256 "732ec4e0ad6dc5124d34893159dcaf32a90b7fcbaefc28c5baf6f1a65fb57616"
  head "https://github.com/haensl/openssl-certgen.git"
  depends_on "openssl"

  def install
    bin.install "openssl-generate-certificates"
    system "make", "install"
  end
end
