# 🔴 NA VLASTNÍ RIZIKO

> [!CAUTION]
> **Obnova může způsobit ztrátu dat nebo ztrátu/změnu původního SN a MAC adres.**
>
> U X115 při ztrátě IMEI počítejte s nefunkční mobilní sítí a Galaxy Store. Wi-Fi a Bluetooth mohou fungovat i bez IMEI; po poškození NV dat ale jejich funkčnost nelze zaručit.
>
> **POUZE SM-X115 — BIT 6 / U6. Ne pro jiný model nebo revizi.**
>
> Původní obnova použitá 13. 11. 2026. Není zaručena pro každý stav zařízení; nepoužívat naslepo po A16.

## Stručný návod

1. Stáhni všechny čtyři části .zip.001 až .zip.004 do stejné složky. Otevři .zip.001 v 7-Zipu a rozbal vše.

2. Ve složce 03_DRIVERS nainstaluj potřebné VC++ a USB ovladače. MTK ovladač: klikni pravým na INSTALOVAT_MTK.cmd → Spustit jako správce.

3. Spusť 02_SP_FLASH_TOOL/SPFlashToolV6.exe.

4. Download-XML: vyber 01_SPFT_RECOVERY/download_agent/flash.xml. Authentication File: vyber SM-X115_U3.auth ze stejné složky.

5. Zvol Download Only. Musí být zaškrtnuto 17 položek a vyplněné cesty Location. Jiné volby neměň.

6. Klikni Download a připoj tablet k USB. Když se nepřipojí, drž zapínání + hlasitost dolů do vibrace a potom pusť. Během zápisu kabel neodpojuj.

7. Po Download OK odpoj USB. Pro Download Mode drž obě hlasitosti a znovu připoj USB; případnou výzvu potvrď krátce hlasitostí nahoru.

**Při jakékoli chybě STOP — stejný zápis neopakuj. Když se Download Mode neobjeví, další zápis nespouštěj.**

Nakonec nahraj originální A15 BIT 6 přes Odin: BL, AP, CP a CSC z 05_OFFICIAL_A15. CSC smaže data. Re-Partition a Nand Erase vypnuté, PIT prázdné.

[Technické podrobnosti a problémy s ovladači](TECHNICAL_NOTES_CS.md)
