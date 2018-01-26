class Goto < Formula
  desc "Bash completion for fast project navigation."
  homepage "https://haensl.github.io/goto"
  url "https://github.com/haensl/goto/archive/v2.2.0.tar.gz"
  sha256 "8d23f9ee132d77de80f36f9260453a8e169d3c5706f0ecf3f8b3337123bccd2e"
  depends_on "bash-completion"

  def install
    bash_completion.install_symlink "goto.completion" "goto"
  end

  def post_install
    system "bash", "\grep -q 'source #{prefix}/goto' ${HOME}/.bash_profile || echo 'source #{prefix}/goto' >> ${HOME}/.bash_profile"
  end
end
