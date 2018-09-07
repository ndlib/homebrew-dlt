class CommandlineTools < Formula
  desc "Command line tools used by Notre Dame Libraries"
  homepage "https://github.com/ndlib/commandline-tools"
  url "https://github.com/ndlib/commandline-tools/archive/v2018.1.tar.gz"
  sha256 "5cd59c6fe69be2dc1b18c5d586b4e7b3f9f14cc205f8698ab66dfffaed4a6ddb"
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
