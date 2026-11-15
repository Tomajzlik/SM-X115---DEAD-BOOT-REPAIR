# POUZE SM-X115 — BOOTLOADER BIT 6 / U6

**NEPOUŽÍVAT PRO BIT 7, BIT 9 ANI JINOU REVIZI. X110 A X115 NEJSOU ZAMĚNITELNÉ.**

## Důsledky a omezení
Obnova může smazat uživatelská data. Může dojít ke ztrátě nebo změně tovární identity: IMEI (jen LTE model), původních MAC adres Wi-Fi/Bluetooth a sériového čísla SN. U opravovaného X115 po obnově zůstaly IMEI i základní pásmo neznámé a byly pozorovány odlišné identifikační údaje; volání/LTE nefungovalo. Není prokázáno, že to způsobil tento omezený profil, protože NV/EFS byla poškozena již předtím. Tento balíček původní identitu NEOBNOVÍ a neobsahuje donorové NV/EFS. X110 je Wi-Fi model, bez běžné funkce volání/LTE.

## Příprava PC
Celý ZIP rozbal do krátké místní cesty, např. D:/X115_RECOVERY nebo D:/X110_RECOVERY. Nespouštěj aplikace přímo uvnitř ZIPu. Zachovej složky. Ověř SHA256SUMS.txt. Nainstaluj Microsoft VC++ x86 a x64 z 03_DRIVERS/Runtime, pokud chybí VCRUNTIME. Samsung USB driver je pro Odin. MediaTek cdc-acm.inf je pro Preloader/BROM; instalace vyžaduje správce: pnputil /add-driver "CELÁ_CESTA/03_DRIVERS/MediaTek/cdc-acm.inf" /install.

Starý usb2ser.sys může Windows blokovat kvůli Integritě paměti. Nejde o chybu firmwaru. Pro jednorázovou opravu lze ručně dočasně vypnout Integritu paměti v Zabezpečení Windows → Zabezpečení zařízení → Izolace jádra a restartovat. Nevypínej Defender, Secure Boot ani kontrolu podpisů. Po opravě odinstaluj konkrétní přidaný ovladač a ochranu znovu zapni; číslo oemNN.inf zjisti z výstupu instalace, nekopíruj naslepo cizí číslo.

## Obnova
Původní omezená obnova ze 13. 11. 2026, sestavení X115XXS6CYI2 EUX/OXM, 17 obrazů. Otevři 02_SP_FLASH_TOOL/SPFlashToolV6.exe. Download-XML: 01_SPFT_RECOVERY/download_agent/flash.xml. Authentication: SM-X115_U3.auth ve stejné složce. Ověř 17 zaškrtnutých řádků a neprázdné Location. Preloader, GPT/PIT, super, userdata a NV/EFS se tímto profilem nezapisují. Původní předpoklady se NESMÍ přenášet na A16: pokus s A15 profilem po A16 dne 14. 11. selhal na podpisu grd_fw. Tento archiv neobsahuje dnešní A16 experimenty.

Používej pouze Download Only. NIKDY Format All, Firmware Upgrade, zápis GPT/PIT, efuse nebo cizí EFS/NVRAM. Před zápisem ověř skutečnou GPT a adresy. Kabel ponech připojený; po spuštění čekání na spojení podrž zapínání + hlasitost dolů do vibrace, pak pusť. Přenos neodpojuj. Při Security deny, neplatném podpisu nebo chybě rozložení okamžitě zastav a neopakuj stejný pokus: některé oddíly už mohou být zapsané. Download OK potvrzuje přenos, nikoli start.

Po obnově Download Mode dokonči obnovu odpovídajícím kompletním originálním A15 BIT 6 přes Odin. Pro X115 je originální ZIP přiložen v 05_OFFICIAL_A15; rozbal jej a načti BL/AP/CP/CSC stejného sestavení, CSC místo HOME_CSC znamená smazání dat. Re-Partition a Nand Erase vypnuté, PIT prázdné. Nezamykat BL při nejasném stavu nebo upravených obrazech.
