#!/bin/bash

BACKUP_FILE="disabled-by-us.txt"

echo "=== 1. Re-enabling disabled TCL & Google packages ==="
if [ -f "$BACKUP_FILE" ]; then
  while IFS= read -r pkg || [ -n "$pkg" ]; do
    [ -z "$pkg" ] && continue
    echo "Enabling $pkg..."
    adb shell pm enable --user 0 "$pkg"
  done < "$BACKUP_FILE"
else
  echo "Warning: $BACKUP_FILE not found! Re-enabling default TCL packages..."
  for pkg in com.tcl.messagebox com.tcl.waterfall.overseas com.tcl.assistant com.tcl.esticker com.tcl.miracast com.tcl.MultiScreenInteraction_TV com.google.android.tungsten.setupwraith com.google.android.apps.tv.launcherx; do
    adb shell pm enable --user 0 "$pkg"
  done
fi

echo "=== 2. Restoring default Google TV Home Launcher ==="
adb shell cmd package set-home-activity --user 0 com.google.android.apps.tv.launcherx/com.google.android.apps.tv.launcherx.home.HomeActivity
adb shell input keyevent KEYCODE_HOME

echo "=== 3. Uninstalling custom launcher (com.gathin.tvhome) ==="
adb uninstall com.gathin.tvhome

echo "=== Done! Remember to disable USB Debugging on your TV and reboot. ==="
