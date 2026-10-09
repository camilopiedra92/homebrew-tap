cask "cleanshot@4.8.11" do
  version "4.8.11"
  sha256 "298afb3d085ee6343dae954ba2a7429bd613e6ad9e942c8f79008688ceb11a81"

  url "https://updates.getcleanshot.com/v3/CleanShot-X-#{version}.dmg"
  name "CleanShot X"
  desc "Screen capturing tool, held at the last version a licence covers"
  homepage "https://cleanshot.com/"

  livecheck do
    skip "Pinned: the licence covers updates up to this version"
  end

  conflicts_with cask: "cleanshot"
  depends_on :macos

  app "CleanShot X.app"
end
