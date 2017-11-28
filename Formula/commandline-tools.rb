class CommandlineTools < Formula
  desc "Command line tools used by Notre Dame Libraries"
  homepage "https://github.com/ndlib/commandline-tools"
  url "https://github.com/ndlib/commandline-tools/archive/v2017.9.tar.gz"
  version "v2017.9"
  sha256 "a9b3a9c2304f1e0cf44838c96b57b5c1ff0b7e8935de1c89c7643e75b8df59d1"
  depends_on "git" => :run
  depends_on "screen" => :run

  def install
    bin.install "bin/build-pull-request-message"
    bin.install "bin/next-build-identifier.sh"
    bin.install "bin/tag-build.sh"
    bin.install "bin/hyrax.services"
  end
end
