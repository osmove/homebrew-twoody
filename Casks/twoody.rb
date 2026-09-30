cask "twoody" do
  arch arm: "-arm64"

  version "0.13.35"
  sha256 arm:   "c52be287fa5d48f6097d8c3197744d1ccce3ef7f014b8d8db93c00535c3e5074",
         intel: "96220acaca0aedf4dda7c5747e6725885a26b09a7c830d1e27e21747842286d3"

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
