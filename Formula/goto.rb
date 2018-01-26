require 'pp'
class Goto < Formula
  desc "Bash completion for fast project navigation."
  homepage "https://github.com/haensl/goto"
  url "https://github.com/haensl/goto/archive/v2.2.0.tar.gz"
  sha256 "8d23f9ee132d77de80f36f9260453a8e169d3c5706f0ecf3f8b3337123bccd2e"
  head "https://github.com/haensl/goto.git"
  depends_on "bash-completion"

  def install
    Pathname.new("#{prefix}/etc/bash_completion.d").install_symlink "goto.completion" "goto"
  end

  def post_install
    bash_profile = "#{ENV['HOME']}/.bash_profile"
    system "bash", "touch #{bash_profile}"
    system "bash", "\grep -q 'source #{prefix}/goto' #{bash_profile} || echo 'source #{prefix}/goto' >> #{bash_profile}"
  end
end
