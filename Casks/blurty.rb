cask "blurty" do
  version "0.2.9"
  sha256 "d4311bc2a60e2d6055ff449a0d78e6e0f138a87690866da7edd2afb425621e0f"

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
  depends_on macos: :ventura

  app "Blurty.app"

  zap trash: [
    "~/Library/Application Support/Blurty",
    "~/Library/Logs/Blurty",
    "~/Library/Preferences/app.blurty.first-run",
  ]
end
