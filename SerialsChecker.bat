@echo off
title Cameron Manderfeld Spoofer V1
goto :diocane

:diocane
cls
echo Bios
wmic bios get serialnumber
wmic csproduct get uuid
echo Diskdrive
wmic diskdrive get serialnumber
echo Baseboard serialnumber
wmic baseboard get serialnumber
echo Baseboard manufacturer
wmic baseboard get manufacturer
echo MacAddress
wmic path Win32_NetworkAdapter where "PNPDeviceID like '%%PCI%%' AND NetConnectionStatus=2 AND AdapterTypeID='0'" get MacAddress
echo Press ENTER to check serial again...
pause >nul

goto :diocane