require 'pp'
class Goto < Formula
  desc "Bash completion for fast project navigation."
  homepage "https://github.com/haensl/goto"
  url "https://github.com/haensl/goto/archive/v2.2.0.tar.gz"
  sha256 "8d23f9ee132d77de80f36f9260453a8e169d3c5706f0ecf3f8b3337123bccd2e"
  head "https://github.com/haensl/goto.git"
  depends_on "bash-completion"

  def install
    pp bash_completion
    bash_completion.install_symlink "goto.completion" "goto"
  end

  def post_install
    system "bash", "test -f ${HOME}/.bash_profile || touch ${HOME}/.bash_profile"
    system "bash", "\grep -q 'source #{prefix}/goto' ${HOME}/.bash_profile || echo 'source #{prefix}/goto' >> ${HOME}/.bash_profile"
  end
end
