cask "termojinal-app" do
  version "0.9.1-beta"
  sha256 "d583aff267efabedbf968ea9b4500bec086d800c1b3d0102b4a4f4e9c43c027f"

  url "https://github.com/KikuchiTomo/termojinal/releases/download/v#{version}/termojinal-#{version}-macos-universal.tar.gz"
  name "Termojinal"
  desc "GPU-accelerated terminal emulator with AI agent coordination"
  homepage "https://github.com/KikuchiTomo/termojinal"

  depends_on formula: "kikuchitomo/termojinal/termojinal"

  app "Termojinal.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/Termojinal.app"]
  end

  zap trash: [
    "~/.config/termojinal",
    "~/.local/share/termojinal",
  ]
end
