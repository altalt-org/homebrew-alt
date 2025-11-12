cask "alt" do
  version "0.0.17"
  sha256 "d1f2c48f40b8bf0dbf98f46ab01da24ff67c7172408a81572bf71ed71a27b72b" # 첫 릴리스 후 실제 SHA256으로 교체됩니다

  url "https://d31j0e9r0hmts6.cloudfront.net/Alt-0.0.17-arm64.dmg", # 첫 릴리스 후 실제 다운로드 URL로 교체됩니다
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

