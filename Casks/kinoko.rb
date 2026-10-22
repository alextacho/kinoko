cask "kinoko" do
  version "0.1.0"
  sha256 "f2efef94d13062cd1fd6a623318e0055976693b140929361a8f0c45eb4310061"

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
