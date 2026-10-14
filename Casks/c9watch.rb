cask "c9watch" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.10.1"
  sha256 arm:   "e52eca7b9364fcd3b00ab4f24944b612b5903307b8e004daf0060abeda0a0d95",
         intel: "d9a1913cb4ca0e3169600e2dfeb0e253f6296139bc4b4bbff47720b481fffa26"

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
