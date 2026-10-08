cask "c9watch" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.10.0"
  sha256 arm:   "bef232417dcf41386c9f359debc96c6e916da398af517393b1ec2f6f417a44e6",
         intel: "33acbf70974060bc31c66ce6b01e68a338fc7dc0c0077ff3d1f8a7f9297534e4"

  url "https://github.com/minchenlee/c9watch/releases/download/v#{version}/c9watch_v#{version}_#{arch}.dmg"
  name "c9watch"
  desc "Dashboard for Claude Code and Codex sessions running on your machine"
  homepage "https://c9watch.mclee.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "c9watch.app"
end
