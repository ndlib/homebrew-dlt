class CommandlineTools < Formula
  desc "Command line tools used by Notre Dame Libraries"
  homepage "https://github.com/ndlib/commandline-tools"
  url "http://github.com/ndlib/commandline-tools/archive/v2017.4.tar.gz"
  version "v2017.4"
  sha256 "c18bd517dca8e26e5c89b2a21e6679d4f1e1aedbc9b0f7468e9aeeb8eca9a33b"

  depends_on "git" => :run
  depends_on "screen" => :run

  def install
    bin.install "bin/next-build-identifier.sh"
    bin.install "bin/tag-build.sh"
    bin.install "bin/hyrax.services"
  end
end
