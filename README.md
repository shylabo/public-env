# envfiles

## Init

```
./init.sh
```

### GUI

```bash
# App store
- final cut pro
- LINE

# Browser
- docker
- Source Next (Virus security)
    - https://www.sourcenext.com/mypage/action/productPage?productgp=0000011033&menucode=01
```

### mac sys config

```bash
defaults write -g ApplePressAndHoldEnabled -bool false # aaaaaaaaaaaaaaa
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 10
defaults write com.apple.symbolichotkeys.plist AppleSymbolicHotKeys -dict-add 79 "<dict><key>enabled</key><true/><key>value</key><dict><key>parameters</key><array><integer>0</integer><integer>38</integer><integer>131072</integer></array><key>type</key><string>standard</string></dict></dict>"
defaults write com.apple.symbolichotkeys.plist AppleSymbolicHotKeys -dict-add 80 "<dict><key>enabled</key><true/><key>value</key><dict><key>parameters</key><array><integer>0</integer><integer>37</integer><integer>131072</integer></array><key>type</key><string>standard</string></dict></dict>"
defaults write -g com.apple.keyboard.modifiermapping.1452-628-0 -array '<dict><key>HIDKeyboardModifierMappingDst</key><integer>2</integer><key>HIDKeyboardModifierMappingSrc</key><integer>0</integer></dict>'

# Add input source Japanese
defaults write com.apple.HIToolbox AppleEnabledInputSources -array-add '{ InputSourceKind = "Keyboard Layout"; "KeyboardLayout ID" = 252; "KeyboardLayout Name" = "ABC - Extended"; }'

sudo reboot
```

### Check list

- [ ] Security soft | https://www.sourcenext.com/mypage/action/productPage?productgp=0000011033&menucode=01
- [ ] iTerm Config (bg, screen divider)
- [ ] VPN
