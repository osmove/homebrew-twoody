cask "twoody" do
  arch arm: "-arm64"

  version "0.13.76"
  sha256 arm:   "80d3525bb496269eb3d73e4687f930f0c47a0eea2832f8d6e5e7b2d12b309194",
         intel: "6ba1e9f66e4dbfd9164f6313846ab6179049f8014a7c42badadaa121b50a96c3"

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
