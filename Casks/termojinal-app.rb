cask "termojinal-app" do
  version "0.6.0-beta"
  sha256 "717ea057b2a5a1fcf8334e2630926b4459daf5da243369aacc46317c4dc24bdd"

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
