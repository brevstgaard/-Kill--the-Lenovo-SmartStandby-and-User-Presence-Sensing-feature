# -Kill--the-Lenovo-SmartStandby-and-User-Presence-Sensing-feature
Fix for the back screen (lock) when steeping away from the laptop on models like Yoga X13.

This will make sure that LenovoSmartStandby is disabled and the feature isn't having an annoying impact as is actually has.

This is done by a:
1. REG ADD HKLM\SOFTWARE\Policies\Microsoft\PassportForWork\DynamicLock /v DynamicLock /t REG_DWORD /d 0 /f > NULL
2. sc config "LenovoSmartStandby" start= disabled > Null
3. sc stop "LenovoSmartStandby" > NULL

You will manually need to go under BIOS and deactivate "User Presence Sensing". - Other than that, this should do it.
