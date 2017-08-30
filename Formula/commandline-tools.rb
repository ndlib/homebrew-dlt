class CommandlineTools < Formula
  desc "Command line tools used by Notre Dame Libraries"
  homepage "https://github.com/ndlib/commandline-tools"
  url "https://github.com/ndlib/commandline-tools/archive/v2017.3.tar.gz"
  version "v2017.3"
  sha256 "54276ca1a44b115f8535c8f15861e9ae557839750ca1f8f651ae406a23bc7f2f"

  def install
    system "make", "install", "INSTALL_PATH=#{bin}"
  end
end
