require 'pp'
class Goto < Formula
  desc "Bash completion for fast project navigation."
  homepage "https://github.com/haensl/goto"
  url "https://github.com/haensl/goto/archive/v2.2.1.tar.gz"
  sha256 "893f3a38c1ef2d01724c0b11faf7495fc36409a606296af14bbe236756d87949"
  head "https://github.com/haensl/goto.git"
  depends_on "bash-completion"

  def install
    Pathname.new("#{etc}/bash_completion.d").install "goto.completion" => "goto"
    lib.install "goto"
  end

  def caveats; <<-EOF
    Add the following to your ~/.bash_profile:

      source #{lib}/goto

    Set the path(s) to your projects via the environment variable GOTOPATH, i.e. add the following to your ~/.bash_profile:

      export GOTOPATH=${HOME}/code
    EOF
  end
end
