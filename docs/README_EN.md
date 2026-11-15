# 🔴 USE AT YOUR OWN RISK

> [!CAUTION]
> **Recovery may erase data or cause loss/changes of the original serial number (SN) and MAC addresses.**
>
> On X115, if IMEI is lost, expect cellular service and Galaxy Store to stop working. Wi-Fi and Bluetooth can work without IMEI, but cannot be guaranteed after NV data damage.
>
> **SM-X115 ONLY — BIT 6 / U6. No other model or revision.**
>
> Original recovery used on 13 November 2026. Not guaranteed for every device state; do not apply blindly after A16.

## Quick guide

1. Download all four .zip.001 through .zip.004 parts into one folder. Open .zip.001 in 7-Zip and extract everything.

2. Install needed VC++ and USB drivers from 03_DRIVERS. For the MTK driver, right-click INSTALOVAT_MTK.cmd → Run as administrator.

3. Run 02_SP_FLASH_TOOL/SPFlashToolV6.exe.

4. Download-XML: select 01_SPFT_RECOVERY/download_agent/flash.xml. Authentication File: select SM-X115_U3.auth in that same folder.

5. Choose Download Only. Check that 17 rows are selected and Location paths are populated. Do not change other options.

6. Click Download and connect the tablet by USB. If it is not detected, hold Power + Volume Down until vibration, then release. Do not unplug during writing.

7. After Download OK, unplug USB. To enter Download Mode, hold both volume buttons and reconnect USB; confirm any prompt with a short Volume Up press.

**STOP on any error; do not repeat the same write. If Download Mode does not appear, do not start another write.**

Finally flash matching official A15 BIT 6 with Odin: BL, AP, CP and CSC from 05_OFFICIAL_A15. CSC wipes data. Re-Partition and Nand Erase OFF, PIT empty.

[Technical details and driver troubleshooting](TECHNICAL_NOTES_EN.md)
