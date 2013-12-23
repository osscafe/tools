#!/bin/sh
# Create display override file to fix display issue for users of rMBP

# このスクリプトは、下北沢オープンソースCafeの横長モニタの表示が乱れる問題を解決するものです。
# - 対象機種(モニタ): LG Ultrawide Monitor 29EA73-P
# - 対象機種(Mac) : Macbook Pro Retina ほか

# このスクリプトをダウンロードして実行するか、
# Macのターミナルから、次のコマンドを叩けばOKです。
# curl -s https://raw.github.com/osscafe/tools/master/fix-display-issue.sh | sudo sh

TARGET_DIR="/System/Library/Displays/Overrides/DisplayVendorID-1e6d"
if [ ! -d $TARGET_DIR ]
then
  mkdir $TARGET_DIR
fi
cat << EOF > $TARGET_DIR/DisplayProductID-59f2
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
  <key>DisplayProductName</key>
  <string>LG Ultrawide Monitor @OSSCafe (29EA73-P)</string>
  <key>IODisplayEDID</key>
  <data>AP///////wAebfJZAQEBAQEXAQSlQxx4hsqVplVOoSYPUFSlS4BxT4GAgcCp
wLMAAQEBAQEBfkgA4KA4H0BAQDoApSIhAAAYAjqAGHE4LUBYLEUApSIhAAAa
AAAA/ABMRyBVTFRSQVdJREUKAAAA/QA4Sx5aGAAKICAgICAgAMc=
</data>
  <key>DisplayVendorID</key>
  <integer>7789</integer>
  <key>DisplayProductID</key>
  <integer>23026</integer>
</dict>
</plist>
EOF
