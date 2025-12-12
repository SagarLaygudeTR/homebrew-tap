cask "claude-code-plans" do
  version "1.0.1"
  sha256 "8058fdc52ee69fbf2839816fa0042e8f417bb4f7570e8d0ffd6a36d89e4c272e"

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
