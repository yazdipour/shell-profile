# Shell Profile

## Powershell Profile

[▶ My Powershell Profile](profile.ps1)

To initiate powershell profile

```powershell
Set-ExecutionPolicy -ExecutionPolicy Unrestricted
New-Item $profile -Type File -Force
notepad $profile
# To Update
. $profile
```

## Bash
[▶ My Bashrc](profile.sh)

```shell
nano ~/.bashrc
# To Update
source ~/.bashrc 
```


## Zsh
[▶ My zshrc](profile-zsh.sh)

```shell
nano ~/.zshrc
```