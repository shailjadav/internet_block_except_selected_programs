@echo off
echo Blocking all incoming and outgoing connections...
netsh advfirewall set allprofiles firewallpolicy blockinbound,blockoutbound

echo Creating an exception for Programs...
netsh advfirewall firewall add rule name="Allow Google Chrome" dir=in action=allow program="C:\Program Files\Google\Chrome\Application\chrome.exe" enable=yes
netsh advfirewall firewall add rule name="Allow Google Chrome" dir=out action=allow program="C:\Program Files\Google\Chrome\Application\chrome.exe" enable=yes

netsh advfirewall firewall add rule name="Allow Google fs" dir=in action=allow program="C:\Program Files\Google\Drive File Stream\73.0.4.0\GoogleDriveFS.exe" enable=yes
netsh advfirewall firewall add rule name="Allow Google fs" dir=out action=allow program="C:\Program Files\Google\Drive File Stream\73.0.4.0\GoogleDriveFS.exe" enable=yes

netsh advfirewall firewall add rule name="Allow brave" dir=in action=allow program="C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe" enable=yes
netsh advfirewall firewall add rule name="Allow brave" dir=out action=allow program="C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe" enable=yes

netsh advfirewall firewall add rule name="Allow fdm" dir=in action=allow program="C:\Program Files\Softdeluxe\Free Download Manager\fdm.exe" enable=yes
netsh advfirewall firewall add rule name="Allow fdm" dir=out action=allow program="C:\Program Files\Softdeluxe\Free Download Manager\fdm.exe" enable=yes


echo Internet access is now blocked for all applications except Selected Programs.
pause
