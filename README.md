# TCL Android / Google TV Modding & Debloat Toolkit 📺⚡️

Complete, reversible ADB scripts, custom launcher configurations, themes, and utilities to optimize and customize your TCL Android / Google TV.

---

## 🚀 What is Included
* **tcl-debloat/debloat-tcl.sh**: Safely disables predefined TCL bloatware and telemetry packages via ADB, logging everything into `disabled-by-us.txt`.
* **tcl-debloat/full-restore-tcl.sh**: Re-enables all disabled packages, restores the default Google TV Home launcher, and removes custom launchers.
* **Themes, Addons & Tools**: Full toolkit for advanced customization and modding.

---

## 🛠️ How to Use It

### 1. Prerequisites
1. On your TCL TV, go to **Settings** -> **System** -> **About** and click on **Build** 7 times to unlock **Developer Options**.
2. Go back to **System** -> **Developer Options** and enable **USB Debugging** (and Network Debugging if available).
3. Connect your computer to the TV via ADB:
   `adb connect YOUR_TV_IP_ADDRESS`

### 2. Debloat your TV (Remove Bloatware)
Make the script executable and run it:
`chmod +x tcl-debloat/debloat-tcl.sh`
`./tcl-debloat/debloat-tcl.sh`

### 3. Restore Everything (Revert Changes)
If you want to revert all changes and bring back the stock Google TV interface:
`chmod +x tcl-debloat/full-restore-tcl.sh`
`./tcl-debloat/full-restore-tcl.sh`

---

## ⚠️ Disclaimer
Use these tools at your own risk. Always keep the generated backup log (`disabled-by-us.txt`) safe so you can easily revert changes.
