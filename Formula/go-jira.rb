class GoJira < Formula
  desc "Command line client for JIRA."
  homepage "https://github.com/Netflix-Skunkworks/go-jira"
  url "https://github.com/Netflix-Skunkworks/go-jira/archive/v0.1.6.tar.gz"
  version "0.1.6"
  sha256 "df935a14142bb08b1fec206964cdbec883955f48213a9865237c6bbe85b26338"

  depends_on "go" => :build

  def install
    system "make", "build", "GOBIN=#{bin}"
  end

  test do
    system "#{bin}/jira"
  end
end
