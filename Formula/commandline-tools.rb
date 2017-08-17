class CommandlineTools < Formula
  desc "Command line tools used by Notre Dame Libraries"
  homepage "https://github.com/ndlib/commandline-tools"
  url "https://github.com/ndlib/commandline-tools/archive/v2017.2.tar.gz"
  version "v2017.2"
  sha256 "c1adb3ee24fdd224c6779797f3600d6a52fe0ad79e5faa2dc1288aa94308ba3e"

  def install
    system "make", "install", "INSTALL_PATH=#{bin}"
  end
end
