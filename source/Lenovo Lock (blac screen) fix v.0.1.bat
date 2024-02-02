@echo off
Echo Setting DynamicLock registry key to disable
REG ADD HKLM\SOFTWARE\Policies\Microsoft\PassportForWork\DynamicLock /v DynamicLock /t REG_DWORD /d 0 /f > NULL
echo(
Echo Setting Service Lenovo Smart Standby to start disabled
sc config "LenovoSmartStandby" start= disabled > Null
echo(
Echo Stopping service Lenovo Smart Standby 
sc stop "LenovoSmartStandby" > NULL
echo(
pause