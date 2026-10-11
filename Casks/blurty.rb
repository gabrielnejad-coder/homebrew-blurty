cask "blurty" do
  version "0.2.8"
  sha256 "70488c4a879e2504546d64f39ad0cba04dff71b41d51a7f4d1398277455a30ff"

  url "https://get.blurty.app/Blurty-#{version}-mac.zip"
  name "Blurty"
  desc "Dictation for Mac that talks to Claude Code, Cursor and any app"
  homepage "https://blurty.app/"

  livecheck do
    url "https://get.blurty.app/mac"
    strategy :json do |json|
      json["currentRelease"]
    end
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Blurty.app"

  zap trash: [
    "~/Library/Application Support/Blurty",
    "~/Library/Logs/Blurty",
    "~/Library/Preferences/app.blurty.first-run",
  ]
end
