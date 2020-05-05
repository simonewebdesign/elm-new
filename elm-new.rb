class ElmNew < Formula
  version '2.0.0'
  desc "Creates a new Elm project's basic structure"
  homepage "https://simonewebdesign.github.io/elm-new/"
  url "https://github.com/simonewebdesign/elm-new/archive/v2.0.0.tar.gz"
  sha256 "412bbcc7d4c01f233e92def5dcffb7287f38f42b78ddcff1d5aa2b55773cd7e2"

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
