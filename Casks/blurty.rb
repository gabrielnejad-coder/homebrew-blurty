cask "blurty" do
  version "0.3.0"
  sha256 "a17662e1832426f7bdd43b5329adf0454f0a8a673487fdff1c20a2ddf82ef9be"

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
