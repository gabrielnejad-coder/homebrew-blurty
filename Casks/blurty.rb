cask "blurty" do
  version "0.4.0"
  sha256 "340273e55de7aa5c763c1469a21d5f967abd38f86abec306390c4a2f5e69ece2"

  url "https://get.blurty.app/Blurty-#{version}-mac.zip"
  name "Blurty"
  desc "Dictation that talks to Claude Code, Cursor and any app"
  homepage "https://blurty.app/"

  livecheck do
    url "https://get.blurty.app/mac"
    strategy :json do |json|
      json["currentRelease"]
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Blurty.app"

  zap trash: [
    "~/Library/Application Support/Blurty",
    "~/Library/Logs/Blurty",
    "~/Library/Preferences/app.blurty.first-run",
  ]
end
