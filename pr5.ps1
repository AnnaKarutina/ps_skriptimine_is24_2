﻿Get-Process | Where{$_.ProcessName -eq 'notepad'} | Select ProcessName, Id