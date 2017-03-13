# aaa

```diff
diff --git a/.gitignore b/.gitignore
index e22d009..078189d 100644
--- a/.gitignore
+++ b/.gitignore
@@ -55,3 +55,4 @@ build-iPhoneSimulator/

 # End of https://www.gitignore.io/api/ruby.kitchen/
 .kitchen.local.yml
+/.kitchen/
diff --git a/Gemfile b/Gemfile
index 41bece9..596e4ff 100644
--- a/Gemfile
+++ b/Gemfile
@@ -1,6 +1,6 @@
 source "https://rubygems.org"

-gem "rezept"
+gem "rezept", ">= 0.3.0"
 gem "kitchen-ec2"
 gem "kitchen-provisioner-local_shell"
 gem "winrm", "~> 2.0"
diff --git a/Gemfile.lock b/Gemfile.lock
index bf9af40..3672130 100644
--- a/Gemfile.lock
```
