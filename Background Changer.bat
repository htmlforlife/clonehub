rundll32.exe user32.dll, UpdatePerUserSystemParameters
rundll32.exe user32.dll, UpdatePerUserSystemParameters
mkdir C:\memetemp
powershell -command (new-object System.Net.WebClient).DownloadFile('https://raw.githubusercontent.com/NicolasBonet/Caleto/master/example/example.bmp','C:\memetemp\file.bmp')
powershell -command Function Set-WallPaper($Value){ Set-ItemProperty -path 'HKCU:\Control Panel\Desktop\' -name wallpaper -value $value; rundll32.exe user32.dll, UpdatePerUserSystemParameters 1, True; rundll32.exe user32.dll, UpdatePerUserSystemParameters 1, True}; Set-WallPaper -value C:\memetemp\file.bmp
sleep 3
rundll32.exe user32.dll, UpdatePerUserSystemParameters
rundll32.exe user32.dll, UpdatePerUserSystemParameters
del /Q C:\memetemp
rd /Q C:\memetemp