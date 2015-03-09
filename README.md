# auto.gitconfig.proxy

Automatic onfiguration gitconfig' proxy setting for OSX

## How to use

### Edit plist

Edit ````ProgramArguments```` element.
 
    <key>ProgramArguments</key>
    <array>
    <string>/path/to/auto.gitconfig.proxy/update.sh</string>
      <string>your proxy</string>
      <string>your port</string>
    </array>
  
### load(to load it automatically when booting)

    cd /Users/[your name]/Library/LaunchAgents/
    ln -s /path/to/com.sonson.gitconfig.proxy.plist /Users/[your name]/Library/LaunchAgents/com.sonson.gitconfig.proxy.plist
    launchctl load com.sonson.gitconfig.proxy.plist
    
### unload

    cd /Users/[your name]/Library/LaunchAgents/
    launchctl unload com.sonson.gitconfig.proxy.plist
