class GoJira < Formula
  desc ""
  homepage "https://github.com/Netflix-Skunkworks/go-jira"
  url "https://github.com/Netflix-Skunkworks/go-jira/archive/v0.1.3.tar.gz"
  version "0.1.3"
  sha256 "8f282a9d6107621fc9fa8d4534af2a4798be4f1608f936e30943da3acbd2321c"

  depends_on "go" => :build

  def install
    system "make", "build", "GOBIN=#{bin}"
  end

  test do
    system "#{bin}/jira"
  end
end
