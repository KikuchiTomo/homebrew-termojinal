cask "termojinal-app" do
  version "0.9.4-beta"
  sha256 "6e41b249652bacc3432ffb5462ae39fa23f2de4b221ceeed212f6d1aa88414ce"

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
