cask "twoody" do
  arch arm: "-arm64"

  version "0.13.12"
  sha256 arm:   "d501eb7ff0fce94eaf2369608b16c891b75c83d05f5e593f9f4cb3e9ddac3137",
         intel: "a01422185d0ea0eea1e0c000ff75f608e192110a35a8c13736757d3c93157aa7"

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
