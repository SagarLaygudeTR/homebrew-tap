cask "claude-code-plans" do
  version "1.0.0"
  sha256 "c55a612ad5b484393d2986c75c7c2a1006153149917f478433364ce7c24a033e"

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
