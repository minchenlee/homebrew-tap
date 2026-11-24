cask "c9watch" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.12.0"
  sha256 arm:   "3143e0646ec4ebd4e3e56c80b5b6994c35704c76c97c8332427ff5394b795cd0",
         intel: "874b2df7625e39b534d1daa4518d3d6898e9e092d173735d1b3e797c848c4499"

  url "https://github.com/minchenlee/c9watch/releases/download/v#{version}/c9watch_v#{version}_#{arch}.dmg"
  name "c9watch"
  desc "Monitor Claude Code, Codex, Cursor Agent and Pi sessions on your machine"
  homepage "https://c9watch.mclee.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "c9watch.app"
end
