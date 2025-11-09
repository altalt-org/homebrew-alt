cask "alt" do
  version "0.0.15"
  sha256 "b4bc074ee953279d7dd27fc907b4dd7f303c044bf87d15a2855d7b12ccc26fcd" # 첫 릴리스 후 실제 SHA256으로 교체됩니다

  url "https://d31j0e9r0hmts6.cloudfront.net/Alt-0.0.15-arm64.dmg", # 첫 릴리스 후 실제 다운로드 URL로 교체됩니다
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

