cask "kinoko" do
  version "0.1.3"
  sha256 "73aa032c14e31b8b3b6ad0f089b6d3ffe623fe3f2d06e06f68a667adf7372d65"

  url "https://github.com/alextacho/kinoko/releases/download/v#{version}/Kinoko-#{version}.dmg"
  name "Kinoko"
  desc "Claude Code and Codex sessions, side by side"
  homepage "https://github.com/alextacho/kinoko"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Kinoko.app"

  zap trash: [
    "~/Library/Application Support/Kinoko",
    "~/Library/Application Support/AI Session Hub",
    "~/Library/Preferences/com.local.AISessionHub.plist",
  ]
end
