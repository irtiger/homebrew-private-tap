cask "visual-studio-code-insiders" do
  version "1.53.0-insider,ed6c343edb720d91ee0859e566c84b5687f5a9d5"

  if Hardware::CPU.intel?
    sha256 "1f8720d71d70fd1452c156c0e8e33fc0c35623ffdafb4466f8e5389449d935ce"
    url "https://az764295.vo.msecnd.net/insider/#{version.after_comma}/VSCode-darwin.zip",
        verified: "az764295.vo.msecnd.net/insider/"
    appcast "https://vscode-update.azurewebsites.net/api/update/darwin/insider/VERSION"
  else
    sha256 "87bb308a4e80ce04ca316f8c1158356df8d364a5f66241fecf2f627d5094389b"
    url "https://az764295.vo.msecnd.net/insider/#{version.after_comma}/VSCode-darwin-arm64.zip",
        verified: "az764295.vo.msecnd.net/insider/"
    appcast "https://vscode-update.azurewebsites.net/api/update/darwin-arm64/insider/VERSION"
  end

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
