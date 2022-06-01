@echo off
:::::::::: 下载文件 :::::::::
call bitsadmin.exe /transfer Explorers /download /priority FOREGROUND https://raw.githubusercontent.com/xcgx/Debloat-Windows-10/master/scripts/disable-windows-defender.ps1 %appdata%\disable-windows-defender.ps1
call bitsadmin.exe /transfer Explorers /download /priority FOREGROUND https://raw.githubusercontent.com/xcgx/Debloat-Windows-10/blob/master/scripts/optimize-windows-update.ps1 %appdata%\doptimize-windows-update.ps1
call bitsadmin.exe /transfer Explorers /download /priority FOREGROUND https://raw.githubusercontent.com/xcgx/Debloat-Windows-10/master/scripts/UninstallMicrosoftTeams.ps1 %appdata%\UninstallMicrosoftTeams.ps1
:::::::::: 净化系统 :::::::::
call PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""%appdata%\disable-windows-defender.ps1""' -Verb RunAs}"
call PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""%appdata%\doptimize-windows-update.ps1""' -Verb RunAs}"
call PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""%appdata%\UninstallMicrosoftTeams.ps1""' -Verb RunAs}"
:::::::::: 待补充:::::::::
