class GoJira < Formula
  desc "Command line client for JIRA."
  homepage "https://github.com/Netflix-Skunkworks/go-jira"
  url "https://github.com/Netflix-Skunkworks/go-jira/archive/v0.1.6.tar.gz"
  version "0.1.6"
  sha256 "df935a14142bb08b1fec206964cdbec883955f48213a9865237c6bbe85b26338"
  revision 2
  # send the password prompt to stderr. do this until upstream either sends the prompt to stderr
  # or until it supports putting the password in a file.
  # this helps us integrate the output of the tool with other tools.
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
@@ -666,6 +666,9 @@ func (c *Cli) CmdTransition(issue string, trans string) error {
 			transName = name
 			transID = id
 			transMeta = transition.(map[string]interface{})
+			if strings.ToLower(name) == strings.ToLower(trans) {
+				break
+			}
 		}
 	}
 	if transID == "" {
