# OfficeClickToRun-Detector
## Overview
This PowerShell script detects if the OfficeClickToRun process is currently running on your system. If the process is detected, the script will prompt you to confirm whether you'd like to terminate it. If no such process is found, the script will notify you accordingly.

## How It Works
1. The script searches for the OfficeClickToRun process using the Get-Process cmdlet and filters the results to find any processes with names matching OfficeClickToRun.

2. If the process is detected:
+ It displays a message notifying you that the process has been found.
+ It prompts you with the option to kill (terminate) the process.
+ If you confirm by typing "y", the process is stopped using the Stop-Process cmdlet.
3. If the process is not detected, it simply informs you that the process is not running.
## Prerequisites
+ PowerShell (version 5.0 or later recommended)
+ Proper permissions to run scripts and manage processes on your system.
## Usage

1. Open PowerShell as Administrator (required to manage processes).
2. Run the script from PowerShell:
```.\officeToClick_Detecter.ps1```
3. If the script detects the OfficeClickToRun process, it will ask if you'd like to terminate it:
+ Type ```y``` to stop the process.
+ Type ```n``` to leave the process running.
