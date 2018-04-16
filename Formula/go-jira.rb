class GoJira < Formula
  desc "Command line client for JIRA."
  homepage "https://github.com/Netflix-Skunkworks/go-jira"
  url "https://github.com/Netflix-Skunkworks/go-jira/archive/v0.1.14.tar.gz"
  sha256 "561f388a0dcb6da531469fa913f9e5377f30f406b2afab78f6a0dd66b5352384"
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
diff --git a/Makefile b/Makefile
index 36b2f96..10de1f6 100644
--- a/Makefile
+++ b/Makefile
@@ -35,7 +35,7 @@ DIST=$(CWD)$(SEP)dist
 GOBIN ?= $(CWD)
 
 CURVER ?= $(patsubst v%,%,$(shell [ -d .git ] && git describe --abbrev=0 --tags || grep ^\#\# CHANGELOG.md | awk '{print $$2; exit}'))
-LDFLAGS:=-X jira.VERSION=$(CURVER) -w
+LDFLAGS:=-X gopkg.in/Netflix-Skunkworks/go-jira.v0.VERSION=$(CURVER) -w
 
 # use make DEBUG=1 and you can get a debuggable golang binary
 # see https://github.com/mailgun/godebug
diff --git a/password.go b/password.go
index a0ea242..a5c9456 100644
--- a/password.go
+++ b/password.go
@@ -3,6 +3,7 @@ package jira
 import (
 	"bytes"
 	"fmt"
+	"os"
 	"os/exec"
 	"strings"
 
@@ -36,7 +37,7 @@ func (c *Cli) GetPass(user string) string {
 	if passwd != "" {
 		return passwd
 	}
-	fmt.Printf("Jira Password [%s]: ", user)
+	fmt.Fprintf(os.Stderr, "Jira Password [%s]: ", user)
 	pw, err := gopass.GetPasswdMasked()
 	if err != nil {
 		return ""
