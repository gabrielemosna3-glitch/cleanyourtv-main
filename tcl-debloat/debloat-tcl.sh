#!/bin/bash

BACKUP_FILE="disabled-by-us.txt"
> "$BACKUP_FILE"

PACKAGES=(
  "com.tcl.messagebox"
  "com.tcl.waterfall.overseas"
  "com.tcl.assistant"
  "com.tcl.esticker"
)

echo "Starting TCL Google TV debloat..."

for pkg in "${PACKAGES[@]}"; do
  echo "Disabling $pkg..."
  if adb shell pm disable-user --user 0 "$pkg" | grep -q "disabled-user"; then
    echo "$pkg" >> "$BACKUP_FILE"
    echo " -> Saved to $BACKUP_FILE"
  else
    echo " -> Skipped or not found: $pkg"
  fi
done

echo "Done! Disabled packages saved in $BACKUP_FILE."
