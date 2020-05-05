class ElmNew < Formula
  desc "Creates a new Elm project's basic structure"
  homepage "https://simonewebdesign.github.io/elm-new/"
  url "https://github.com/simonewebdesign/elm-new/archive/v1.3.0.tar.gz"
  sha256 "5b9978079136fd2f6db611b7d6825c68f3055efc642341737d92a93a501c2b5a"

  def install
    system "make", "install", "PREFIX=#{prefix}"

    bash_completion.install "elm-new-completion.bash"
    fish_completion.install "elm-new.fish"
    zsh_completion.install "elm-new.zsh" => "_elm-new"
  end

  test do
    system "#{bin}/elm-new", "--version"
  end
end
