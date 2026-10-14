cask "blurty" do
  version "0.4.1"
  sha256 "1b6773daec2ae04a1bda0f11fd0f11eee4943a73221e20f4d8a284a2ba1b3a47"

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
