cask "alt" do
  version "0.1.14"
  sha256 "2e9203d5aef2800c6e603b0b6a6649d7076323b058b56ae17e96d685131605bc" # 첫 릴리스 후 실제 SHA256으로 교체됩니다

  url "https://cdn.altalt.io/Alt-0.1.14-arm64.dmg", # 첫 릴리스 후 실제 다운로드 URL로 교체됩니다
      verified: "altalt-dev.s3.ap-northeast-2.amazonaws.com"
  name "Alt"
  desc "Desktop application for AI-powered lecture note taking and management"
  homepage "https://altalt.io"

  livecheck do
    url "https://altalt.io"
    strategy :page_match
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  app "Alt.app"

  zap trash: [
    "~/Library/Application Support/Alt",
    "~/Library/Preferences/com.alt.app.plist",
    "~/Library/Saved Application State/com.alt.app.savedState",
  ]
end

