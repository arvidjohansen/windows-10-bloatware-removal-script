$excludedApps = '.*photos.*|.*calculator.*|.*alarms.*|.*sticky.*|.*soundrecorder.*|.*zunevideo.*'

$unwantedApps = Get-AppxPackage -PackageTypeFilter Bundle | Where-Object {$_.Name -notmatch $excludedApps}

If ($unwantedApps) {

    $unwantedApps | Remove-AppxPackage
}
