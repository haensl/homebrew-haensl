class Goto < Formula
  desc "Bash completion for fast project navigation."
  homepage "https://haensl.github.io/goto"
  url "https://github.com/haensl/goto/archive/v2.1.0.tar.gz"
  sha256 "a16e159b8f6d4ac22ba919fb09e7e80e463277b5c0185836df9113022ea0c56d"
  depends_on "bash-completion"

  def install
    system "make", "install"
  end
end
