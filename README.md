# Samsung SM-X115 — BIT 6 / U6 only

**Never use this package for another model, BIT 7/9, or an unverified Android 16 downgrade.**

[Česky](docs/README_CS.md) · [English](docs/README_EN.md) · [Русский](docs/README_RU.md)

## Historical recovery package — original successful case

This preserves the **limited 17-image recovery used on 13 November 2026** to regain Download Mode on one SM-X115, followed by a complete official A15 Odin installation. It is not a universal dead-boot cure and does not guarantee success on another device.

Firmware: X115XXS6CYI2 / EUX-OXM / Android 15 / BIT 6. **Do not apply this A15 profile blindly after A16.** A later A15-profile attempt after A16 failed at the grd_fw signature check after earlier partitions had already been written. The experimental A16 hybrid is not included.

## Download and join the archive

[Open the release](https://github.com/Tomajzlik/SM-X115---DEAD-BOOT-REPAIR/releases/tag/v2026.11.15-u6-original-recovery). GitHub limits individual release assets to less than 2 GiB, so download **all four** files .zip.001 through .zip.004, plus **PARTS_MANIFEST.json**, **JOIN_AND_VERIFY.ps1** and **SHA256SUMS.txt**, into one folder.

Right-click/run JOIN_AND_VERIFY.ps1 with PowerShell (or execute it from a PowerShell prompt). It checks each part, joins them into **SM-X115_BIT6_ORIGINAL_RECOVERY_PUBLIC.zip**, then checks the final SHA-256. Do not flash anything if verification fails. An existing output ZIP is never overwritten. Extract the resulting ZIP with a Zip64-capable archive tool. The four parts are not four independent ZIP files. Do not use GitHub's automatic “Source code” ZIP as the recovery package.

The complete ZIP includes the original limited recovery images, DA/auth/schema/XML, SP Flash Tool V6, MediaTek and Samsung USB drivers, VC++ x86/x64 installers, Odin, and the full official A15 firmware ZIP for the second stage. Only the original 17-image profile is selected for SPFT; Preloader, GPT/PIT, super, userdata and NV/EFS are not selected by that profile.

Raw diagnostic logs containing device identifiers and a stale intermediate GPT report were omitted from this public copy. Recovery image bytes are unchanged.

## Before writing

Read the matching language guide. Back up your own boot regions and NV/EFS and verify actual GPT, storage type and bootloader revision. Use **Download Only**, never Format All, Firmware Upgrade or Nand Erase. Stop on a signature/layout error; do not retry unchanged because earlier partitions may already have been written. “Download OK” confirms transfer, not successful boot.

Recovery may cause data loss or invalid/changed factory identity (SN, original Wi-Fi/Bluetooth MAC, and IMEI/cellular service on LTE models). This is not proof that the limited profile itself caused identity loss in the original case: NV/EFS was already damaged. These packages do not restore factory identity and contain no donor NV/EFS. SM-X110 is Wi-Fi-only.

Third-party firmware and tools retain their original ownership and terms. These are community recovery archives, not official Samsung repair tools or a manufacturer-supported procedure. See [sources](SOURCES.txt).
