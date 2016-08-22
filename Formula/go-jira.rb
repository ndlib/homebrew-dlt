class GoJira < Formula
  desc "Command line client for JIRA."
  homepage "https://github.com/Netflix-Skunkworks/go-jira"
  url "https://github.com/Netflix-Skunkworks/go-jira/archive/v0.1.6.tar.gz"
  version "0.1.6"
  sha256 "ee0ba0dab048d8a087c6c4278d13ed92fb96c95ea4157bfa77e7b4a7bf176fcf"

  depends_on "go" => :build

  def install
    system "make", "build", "GOBIN=#{bin}"
  end

  test do
    system "#{bin}/jira"
  end
end
