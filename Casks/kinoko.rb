cask "kinoko" do
  version "0.1.1"
  sha256 "479d307f195ebc236de1cb31707fef79a0d455d9016f6488e7aa09e36d52652b"

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
