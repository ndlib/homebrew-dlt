class CommandlineTools < Formula
  desc "Command line tools used by Notre Dame Libraries"
  homepage "https://github.com/ndlib/commandline-tools"
  url "https://github.com/ndlib/commandline-tools/archive/v2017.10.tar.gz"
  version "v2017.9"
  sha256 "4e208c3852d606f2e0cdc8eb6fca651120d069d6a7f4faef8ed3d835fe275e1d"
  depends_on "git" => :run
  depends_on "screen" => :run
  depends_on "ag" => :run

  def install
    bin.install "bin/build-pull-request-message"
    bin.install "bin/next-build-identifier.sh"
    bin.install "bin/tag-build.sh"
    bin.install "bin/hyrax.services"
    bin.install "bin/search_in_bundle"
  end
end
