$OfficeClickToRun = Get-Process | Where-Object ProcessName -Match OfficeClickToRun

if ($OfficeClickToRun.ProcessName) {
    Write-Host 'Process Detected' -ForegroundColor Red
    $askUser = Read-Host -Prompt "Do you want to kill it? (y/n)"
    if ($askUser -match 'y') {
        Stop-Process -Name 'OfficeClickToRun' -Confirm
    }
} else {
    Write-Host 'Process Not Detected' -ForegroundColor Green
}