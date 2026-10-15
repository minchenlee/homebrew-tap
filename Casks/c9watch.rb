cask "c9watch" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.11.1"
  sha256 arm:   "9a028887597f3113959ca9f458e5d1b3a2fb434789d32c86850e1a494ef589dd",
         intel: "af54129b38eca03929e5bdd9343eb4d9960dbb383cf44f3ffa640edc80de68f7"

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
