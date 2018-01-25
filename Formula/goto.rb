class Goto < Formula
  desc "Bash completion for fast project navigation."
  homepage "https://haensl.github.io/goto"
  url "https://github.com/haensl/goto/archive/v2.1.0.tar.gz"
  sha256 "6e858bda33b115a5b0de3825345c19ecc8fe301f1c038266c70636afb65f5434"
  depends_on "bash-completion"

  def install
    bin.install "goto"
    (etc+'bash_completion.d').install_symlink "goto.completion" "goto"
  end
end
