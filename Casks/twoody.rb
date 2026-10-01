cask "twoody" do
  arch arm: "-arm64"

  version "0.13.47"
  sha256 arm:   "0a8d0f5a1ad52f810864a70b9d2d81cfa50b0fcd7b0b9c65ab9b307671e08552",
         intel: "579ef10b571b936629528c8572c1f9db86f87c710543541e330f4c4dc2fac61c"

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
