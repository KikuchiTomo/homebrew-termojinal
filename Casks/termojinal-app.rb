cask "termojinal-app" do
  version "0.9.7-beta"
  sha256 "a4c01267115d90ea4e05cc3921cde4c49d0c629135311e0f7564a87ed27cf569"

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
