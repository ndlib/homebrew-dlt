class CommandlineTools < Formula
  desc "Command line tools used by Notre Dame Libraries"
  homepage "https://github.com/ndlib/commandline-tools"
  url "https://github.com/ndlib/commandline-tools/archive/v2018.1.tar.gz"
  sha256 "2bb273f0b21f787928d21f0c6c41d98d0fe20324"
  depends_on "git"
  depends_on "screen"
  depends_on "the_silver_searcher"

  def install
    bin.install "bin/build-pull-request-message"
    bin.install "bin/next-build-identifier.sh"
    bin.install "bin/tag-build.sh"
    bin.install "bin/hyrax.services"
    bin.install "bin/search_in_bundle"
    bin.install "bin/changelog.sh"
  end
end
