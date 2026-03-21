cask "termojinal" do
  version "0.4.2-beta"
  sha256 "819c4ec9e621db560b81d04142df08bd3b033857123f58d0f3c29387de3af39a"

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
