$action = New-ScheduledTaskAction -Execute "shutdown.exe" -Argument "/s /t 1"
$trigger = New-ScheduledTaskTrigger -Daily -At 18:00
$settings = New-ScheduledTaskSettingsSet -RunOnlyIfIdle -IdleDuration 00:05:00 -IdleWaitTimeout 00:15:00 -WakeToRun
Register-ScheduledTask autoshutdown -Action $action -Settings $settings -Trigger $trigger
