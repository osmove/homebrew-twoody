cask "twoody" do
  arch arm: "-arm64"

  version "0.13.122"
  sha256 arm:   "ba24d5370b171e9347b2c0c2b42b1c1a022d8cb6c5585e50494d00c9e890cb77",
         intel: "0192cdf246be71dcca822b6cf88e4293bc07dcb63c65967dd888e0f605578584"

  url "https://downloads.twoody.com/desktop/Twoody-#{version}#{arch}.dmg"
  name "Twoody"
  desc "Private AI assistant that runs local models"
  homepage "https://www.twoody.com/"

  livecheck do
    url "https://downloads.twoody.com/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :ventura

  app "Twoody.app"

  zap trash: [
    "~/Library/Application Support/twoody-desktop",
    "~/Library/Caches/com.twoody.desktop",
    "~/Library/Caches/com.twoody.desktop.ShipIt",
    "~/Library/HTTPStorages/com.twoody.desktop",
    "~/Library/Logs/twoody-desktop",
    "~/Library/Preferences/com.twoody.desktop.plist",
    "~/Library/Saved Application State/com.twoody.desktop.savedState",
  ]
end
