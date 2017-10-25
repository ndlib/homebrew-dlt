class CommandlineTools < Formula
  desc "Command line tools used by Notre Dame Libraries"
  homepage "https://github.com/ndlib/commandline-tools"
  url "https://github.com/ndlib/commandline-tools/archive/v2017.6.tar.gz"
  version "v2017.6"
  sha256 "918226ae2ad38aaa600e87f7c28bdd2c1571af712bf81136029aa12539d518af"
  depends_on "git" => :run
  depends_on "screen" => :run

  def install
    bin.install "bin/next-build-identifier.sh"
    bin.install "bin/tag-build.sh"
    bin.install "bin/hyrax.services"
  end
end
