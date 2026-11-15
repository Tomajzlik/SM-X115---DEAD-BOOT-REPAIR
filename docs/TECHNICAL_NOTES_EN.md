# SM-X115 ONLY — BOOTLOADER BIT 6 / U6

**DO NOT USE WITH BIT 7, BIT 9 OR ANY OTHER REVISION. X110 AND X115 PACKAGES ARE NOT INTERCHANGEABLE.**

## Consequences and limitations
Recovery may erase user data. Factory identity may be lost or changed: IMEI (LTE model only), original Wi-Fi/Bluetooth MAC addresses and serial number (SN). The repaired X115 showed unknown IMEI/baseband, altered identity values and no working calls/LTE. This does not establish that the limited recovery profile caused the loss: NV/EFS was already damaged before it ran. This package CANNOT restore factory identity and contains no donor NV/EFS. X110 is a Wi-Fi model and normally has no cellular calls/LTE.

## Prepare Windows
Extract the entire ZIP to a short local path such as D:/X115_RECOVERY or D:/X110_RECOVERY. Do not run tools inside the ZIP. Preserve folders and check SHA256SUMS.txt. Install Microsoft VC++ x86/x64 from 03_DRIVERS/Runtime if VCRUNTIME is missing. Samsung USB driver supports Odin. Install the MediaTek Preloader driver from an administrator terminal: pnputil /add-driver "FULL_PATH/03_DRIVERS/MediaTek/cdc-acm.inf" /install.

Windows may block the old usb2ser.sys because of Memory integrity. For a temporary repair you may manually turn off Memory integrity under Windows Security → Device security → Core isolation, then restart. Do not disable Defender, Secure Boot or signature enforcement. After recovery uninstall the specific added driver and re-enable Memory integrity. Obtain its oemNN.inf name from the installation output; do not assume a fixed number.

## Recovery
Original limited recovery from 13 November 2026: X115XXS6CYI2 EUX/OXM, 17 images. Open 02_SP_FLASH_TOOL/SPFlashToolV6.exe. Download-XML: 01_SPFT_RECOVERY/download_agent/flash.xml. Authentication: SM-X115_U3.auth in the same folder. Verify 17 checked rows and populated Location fields. This profile does not write Preloader, GPT/PIT, super, userdata or NV/EFS. Do NOT apply the original assumptions after A16: the A15 recovery attempt on 14 November after A16 failed at the grd_fw signature check. No current A16 experiments are included.

Use Download Only. NEVER use Format All, Firmware Upgrade, GPT/PIT writes, efuse writes or another device's EFS/NVRAM. Verify actual GPT addresses before writing. With the tool waiting for connection and USB attached, hold Power + Volume Down until vibration, then release. Do not unplug during transfer. Stop on Security deny, signature or layout errors: earlier partitions may already have been written. Do not repeat unchanged. Download OK confirms transfer, not successful boot.

Once Download Mode returns, complete recovery with matching full official A15 BIT 6 firmware in Odin. The X115 original firmware ZIP is included in 05_OFFICIAL_A15. Extract it and use matching BL/AP/CP/CSC; CSC rather than HOME_CSC wipes data. Disable Re-Partition and Nand Erase, leave PIT empty. Do not relock the bootloader with modified images or an uncertain state.
