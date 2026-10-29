cask "kinoko" do
  version "0.1.2"
  sha256 "fb2a309dfc0f51ef65f4ab3c610b4e937a8d359805544063f63c36de057f3824"

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
