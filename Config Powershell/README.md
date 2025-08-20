# Config powershell with command autosuggestion

## 目录
- [操作](#操作)
- [返回上一级README](../README.md)


## 操作

1. First [download powershell 7](https://zhuanlan.zhihu.com/p/401439255)

```powershell
Get-Host | Select-Object Version

winget search powershell

# If have more than one record, then use the version ID
winget install Microsoft.PowerShell

# Finally change the default terminal in terminal settings
```

2. Config the autosuggestion autostart

Find the powershell 7 shortcut(快捷方式), right click `property` and replace the `target` with `"C:\Program Files\PowerShell\7\pwsh.exe" -noe -c "&{  Set-PSReadLineOption -PredictionSource History -ShowToolTips}"  -WorkingDirectory ~` 


*[返回目录](#目录)*