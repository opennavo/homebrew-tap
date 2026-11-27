cask "opennavo" do
  version "0.1.38"
  sha256 "5144296dbf51e1e9c91604b8588eb6d2a60188dbdb966dd576fa50676f743f98"

  url "https://github.com/opennavo/OpenNavo/releases/download/desktop-v#{version}/OpenNavo_#{version}_universal.dmg"
  name "OpenNavo"
  desc "Graphical interface for installing and updating command-line packages"
  homepage "https://opennavo.com/"

  livecheck do
    url :url
    strategy :github_latest
    regex(/^desktop[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  depends_on macos: :ventura

  app "OpenNavo.app"

  zap trash: [
    "~/Library/Application Support/com.opennavo.desktop",
    "~/Library/Caches/com.opennavo.desktop",
    "~/Library/HTTPStorages/com.opennavo.desktop",
    "~/Library/Logs/com.opennavo.desktop",
    "~/Library/Preferences/com.opennavo.desktop.plist",
    "~/Library/Saved Application State/com.opennavo.desktop.savedState",
    "~/Library/WebKit/com.opennavo.desktop",
  ]
end
