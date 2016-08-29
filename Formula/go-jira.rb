class GoJira < Formula
  desc "Command line client for JIRA."
  homepage "https://github.com/Netflix-Skunkworks/go-jira"
  url "https://github.com/Netflix-Skunkworks/go-jira/archive/v0.1.7.tar.gz"
  version "0.1.7"
  sha256 "82edcfd74b6ef2a187d2ebc3c1f95097db188313212480e40abaf5f4486efbd4"
  # send the password prompt to stderr. do this until upstream either sends the
  # prompt to stderr or until it supports putting the password in a file. this
  # helps us integrate the output of the tool with other tools.
  patch :DATA

  depends_on "go" => :build

  def install
    system "make", "build", "GOBIN=#{bin}"
  end

  test do
    system "#{bin}/jira"
  end
end

__END__
diff --git a/commands.go b/commands.go
index 684949c..c1f3c5e 100644
--- a/commands.go
+++ b/commands.go
@@ -21,7 +21,7 @@ func (c *Cli) CmdLogin() error {
 		req, _ := http.NewRequest("GET", uri, nil)
 		user, _ := c.opts["user"].(string)
 
-		fmt.Printf("Jira Password [%s]: ", user)
+		fmt.Fprintf(os.Stderr, "Jira Password [%s]: ", user)
 		pw, err := gopass.GetPasswdMasked()
 		if err != nil {
 			return err
