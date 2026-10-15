cask "c9watch" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.11.0"
  sha256 arm:   "8860f6366842eb08e05ff01c2962c15fdca0d217f27cc8352f422a0c5cee31ee",
         intel: "5e4c3c1b8b1b2d200d042ede7afce0467679eacf26541830ed7c4709e43f65bd"

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
