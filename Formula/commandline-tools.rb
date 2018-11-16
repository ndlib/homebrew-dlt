class CommandlineTools < Formula
  desc "Command line tools used by Notre Dame Libraries"
  homepage "https://github.com/ndlib/commandline-tools"
  url "https://github.com/ndlib/commandline-tools/archive/v2018.2.tar.gz"
  sha256 "a38b76a929e63c5c98042745cf3e48cdaa147459c75fdb4e2d91badc5733ea7a"
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
