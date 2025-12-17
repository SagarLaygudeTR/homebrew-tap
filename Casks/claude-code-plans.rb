cask "claude-code-plans" do
  version "1.0.2"
  sha256 "47a023e2f768a18818d6508dfdd7fc90e19c013cbe74a63244d07d62f35109eb"

  url "https://github.com/SagarLaygudeTR/claude-code-plans/releases/download/v#{version}/Claude.Code.Plans-#{version}-arm64-mac.zip"
  name "Claude Code Plans"
  desc "View and browse Claude Code plan files"
  homepage "https://github.com/SagarLaygudeTR/claude-code-plans"

  depends_on arch: :arm64

  app "Claude Code Plans.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Claude Code Plans.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/claude-code-plans",
    "~/Library/Preferences/com.claude.code-plans.plist",
  ]
end
