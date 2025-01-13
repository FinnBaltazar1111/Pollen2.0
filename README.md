# Pollen 2.0
ChromeOS User & Device Policy Editor
![Pollen](/Pollen.svg)

## How to Use
> [!NOTE]
You **need** to have Developer Mode enabled!
### Normal (Temporary)
- Open the VT-2 Shell
> [!NOTE]
To enter the VT-2 shell, press CTRL + ALT + F2 (usually the right arrow key on your Chromebook)
  - Log in as `root`
- Run the command `curl -Ls https://finnbaltazar1111.github.io/Pollen/Pollen.sh | bash`

### Disabled RootFS (Permanent)
> [!IMPORTANT]
Disabling RootFS **will** soft-brick your Chromebook if you boot back into verified mode.
- Open the VT-2 Shell
  - Log in as `root`
- Run the command `curl -Ls https://finnbaltazar1111.github.io/Pollen/RootFS.sh | bash`
- Reboot
- Log in to the VT-2 Shell again
- Run `curl -Ls https://finnbaltazar1111.github.io/Pollen/PollenFS.sh | bash`
> [!NOTE]
If you notice that policies are still being applied, visit `chrome://policy` and click "Reload Policies" or if chrome://policy is blocked, enter VT-2 and run `restart ui` as root.

## What's the difference?
The first method will only temporarily change policies, meaning changes will not be permanent. However, by disabling RootFS, policies will be edited permanently.

## What Pollen 2.0 Doesn't Do
Short answer: nothing. Pollen 2.0 *can* edit device policies (unlike original Pollen), and this feature works a lot like [*PolicyEdit*](https://github.com/ading2210/policyedit) and [*lilac*](https://github.com/mercuryworkshop/lilac), except it's *so* much easier to use.

## How Pollen 2.0 Works
There's an overlooked feature in ChromeOS that allows policies to be loaded similarly to how they would be on Linux. On Linux, you can edit policies by making files in `/etc/opt/chrome/policies/managed`. The same feature still exists within ChromeOS, so we can create a file called `Pollen.json` in `/etc/opt/chrome/policies/managed`, and the existing policies will be overridden. Device policies are written to `/var/lib/devicesettings`, where a policy file (`policy.1`/`policy.2`/`policy.3`, etc.) and a public key (`owner.key`) are written (`owner.key` is a key that is used to verify the integrity of the policy files in `/var/lib/devicesettings`. This is unnecessary, since writing `--disable-policy-key-verification` to `/etc/chrome_dev.conf` effectively disables this verification (which Pollen 2.0 does), but we still write to `owner.key` just in case this fails for any reason).

## Credits
- Discovery - Rafflesia
- Script Developer - OlyB & FinnBaltazar1111
- Device Policies - FinnBaltazar1111
- Bug Fix - r58Playz
- Logo - Nitelite
- [README](README.md) - Scaratek & FinnBaltazar1111
