#!/bin/bash

if [ $(id -u) -ne 0 ]; then
    echo "Run this script as root (sudo su)"
    exit
fi

echo "+##############################################+"
echo "# Welcome To Pollen! (RootFS)                   #"
echo "# The User Policy Editor                       #"
echo "# -------------------------------------------- #"
echo "# Developers:                                  #"
echo "# - OlyB                                       #"
echo "# - Rafflesia                                  #"
echo "# - r58Playz                                   #"
echo "+##############################################+"
echo "May Ultrablue Rest in Peace, o7"

sleep 1

mkdir -p /etc/opt/chrome/policies/managed
echo '{
  "SystemFeaturesDisableList": ['*'],
  "EditBookmarksEnabled":false,
  "ChromeOsMultiProfileUserBehavior": "not-allowed",
  "DeveloperToolsAvailability": 2,
  "DefaultPopupsSetting":2,
  "AllowDeletingBrowserHistory":false,
  "AllowDinosaurEasterEgg":false,
  "IncognitoModeAvailability":1,
  "AllowScreenLock":false,
  "ExtensionAllowedTypes": null,
  "ExtensionInstallAllowlist": null,
  "ExtensionInstallBlocklist": ['*'],
  "ExtensionInstallForcelist": null,
  "ExtensionSettings": null,
  "PasswordManagerEnabled":false,
  "TaskManagerEndProcessEnabled":false,
  "UptimeLimit":3600,
  "SystemTerminalSshAllowed":false,
  "SystemTimezone":"",
  "IsolatedAppsDeveloperModeAllowed":false,
  "ForceGoogleSafeSearch":true,
  "ForceYouTubeRestrict":2,
  "EasyUnlockAllowed":false,
  "DisableSafeBrowsingProceedAnyway":true,
  "DeviceAllowNewUsers":false,
  "DevicePowerAdaptiveChargingEnabled":false,
  "DeviceGuestModeEnabled":false,
  "DeviceUnaffiliatedCrostiniAllowed":false,
  "VirtualMachinesAllowed":false,
  "CrostiniAllowed":false,
  "DefaultCookiesSetting":2,
  "VmManagementCliAllowed":false,
  "WifiSyncAndroidAllowed":false,
  "DeveloperToolsDisabled":true,
  "DeviceBlockDevmode":true,
  "UserBorealisAllowed":false,
  "InstantTetheringAllowed":false,
  "NearbyShareAllowed":false,
  "PinnedLauncherApps":null,
  "PrintingEnabled":false,
  "SmartLockSigninAllowed":false,
  "PhoneHubAllowed":false,
  "LacrosAvailability": "lacros_disallowed",
  "WallpaperImage": null,
  "ArcPolicy":null,
  "DnsOverHttpsMode":"off",
  "BrowserLabsEnabled":false,
  "ChromeOsReleaseChannelDelegated":false,
  "SafeSitesFilterBehavior":1,
  "SafeBrowsingProtectionLevel":2,
  "DownloadRestrictions":3,
  "NetworkThrottlingEnabled":{"download_rate_kbits":0,"enabled":true,"upload_rate_kbits":0},
  "NetworkPredictionOptions":2,
  "DeviceUserAllowlist": ""
}' > /etc/opt/chrome/policies/managed/pollen.json

echo ""
echo "Pollen (RootFS) has been successfully applied!"
