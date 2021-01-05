cask "visual-studio-code-insiders-arm64" do
  version "1.53.0-insider,a48ef56fbf7767f55a193d7d5687addd1fc9239c"
  sha256 "933fac74a20f854ba9d261e1a67fb13da6f6f9137ad9f953780b15fbbc4b9e70"

  url "https://az764295.vo.msecnd.net/insider/#{version.after_comma}/VSCode-darwin-arm64.zip",
      verified: "az764295.vo.msecnd.net/insider/"
  appcast "https://vscode-update.azurewebsites.net/api/update/darwin-arm64/insider/VERSION"
  name "Microsoft Visual Studio Code - Insiders"
  name "VS Code - Insiders"
  desc "Open-source code editor"
  homepage "https://code.visualstudio.com/insiders"

  auto_updates true

  app "Visual Studio Code - Insiders.app"
  binary "#{appdir}/Visual Studio Code - Insiders.app/Contents/Resources/app/bin/code", target: "code-insiders"

  zap trash: [
    "~/Library/Application Support/Code - Insiders",
    "~/Library/Caches/Code - Insiders",
    "~/Library/Caches/com.microsoft.VSCodeInsiders",
    "~/Library/Caches/com.microsoft.VSCodeInsiders.ShipIt",
    "~/Library/Preferences/com.microsoft.VSCodeInsiders.helper.plist",
    "~/Library/Preferences/com.microsoft.VSCodeInsiders.plist",
    "~/Library/Saved Application State/com.microsoft.VSCodeInsiders.savedState",
  ]
end
