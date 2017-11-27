class CommandlineTools < Formula
  desc "Command line tools used by Notre Dame Libraries"
  homepage "https://github.com/ndlib/commandline-tools"
  url "https://github.com/ndlib/commandline-tools/archive/v2017.7.tar.gz"
  version "v2017.7"
  sha256 "a9090fe1d008517eb1e65ed521f5b3a65d397c6835189cf7aba6f7bfa625ff3f"
  depends_on "git" => :run
  depends_on "screen" => :run

  def install
    bin.install "bin/build-pull-request-message"
    bin.install "bin/next-build-identifier.sh"
    bin.install "bin/tag-build.sh"
    bin.install "bin/hyrax.services"
  end
end
