cask "kinoko" do
  version "0.1.0"
  sha256 "ec1efcc9159ece5bb40e87b09c459426409b6f3c0cdeea7b89f000fd153c67ae"

  url "https://github.com/alextacho/kinoko/releases/download/v#{version}/Kinoko-#{version}.dmg"
  name "Kinoko"
  desc "Claude Code and Codex sessions, side by side"
  homepage "https://github.com/alextacho/kinoko"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Kinoko.app"

  # Not notarized yet: without this, macOS blocks the first launch.
  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{appdir}/Kinoko.app"]
  end

  zap trash: [
    "~/Library/Application Support/Kinoko",
    "~/Library/Application Support/AI Session Hub",
    "~/Library/Preferences/com.local.AISessionHub.plist",
  ]
end
