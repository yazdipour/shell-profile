
#Set-ExecutionPolicy -ExecutionPolicy Unrestricted
#New-Item $profile -Type File -Force
#notepad $profile
function AsAdminOrNot {
	$wid = [System.Security.Principal.WindowsIdentity]::GetCurrent()
	$prp = New-Object System.Security.Principal.WindowsPrincipal($wid)
	$adm = [System.Security.Principal.WindowsBuiltInRole]::Administrator
	$prp.IsInRole($adm)
}
function get-vs-ext {ls -Name $env:USERPROFILE/.vscode/extensions}
function turn-on-hotspot { netsh wla sta ho}
function turn-off-hotspot { netsh wla sto ho}
function fing {ping 1.1.1.1 -t}
function ding {ping 192.168.1.1 -t}
function adbconnect($p) {ADB connect $p}
function adbemulator($p) {cd $env:android_home/tools/ ; emulator.exe -avd $p}
function run-admin{Start-Process powershell -Verb runas}
function clean-bin{Get-ChildItem .\ -include bin,obj -Recurse | ForEach-Object ($_) { remove-item $_.fullname -Force -Recurse }}
function update-fork($p){git remote add upstream $p ; git fetch upstream ; git pull upstream master}
function update-ps {. $profile}
function edit-ps {code $profile -r}
#######
Set-Alias w turn-on-hotspot
Set-Alias w! turn-off-hotspot
Set-Alias c code
Set-Alias e explorer
$repo= Join-Path $env:USERPROFILE -ChildPath \Documents\Repos\
#######
if (AsAdminOrNot) {Write-Output "~Admin~Be careful!"}
else {Write-Output "~NotAdmin~"}
