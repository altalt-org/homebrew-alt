cask "alt" do
  version "0.0.14"
  sha256 "d8b9b1ca11db33a93fc3918dd7ad645e4b40186d481b8be8560b85e3995a2aae" # 첫 릴리스 후 실제 SHA256으로 교체됩니다

  url "https://altalt-dev.s3.ap-northeast-2.amazonaws.com/alt/darwin/arm64/Alt-0.0.14-arm64.dmg", # 첫 릴리스 후 실제 다운로드 URL로 교체됩니다
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

