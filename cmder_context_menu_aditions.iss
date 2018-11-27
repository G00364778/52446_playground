[Registry]
; Imported Registry File: "C:\Users\121988\Desktop\env.reg"
Root: "HKLM"; Subkey: "SYSTEM\CurrentControlSet\Control\Session Manager\Environment"; ValueType: string; ValueName: "CMDER_ROOT"; ValueData: "C:\Program Files\cmder_mini"; Flags: uninsdeletevalue

; Imported Registry File: "C:\Users\121988\Desktop\cmder.reg"
Root: "HKCR"; Subkey: "Directory\Background\shell\Cmder"; ValueType: string; ValueData: "Open Cmder Here"; Flags: uninsdeletevalue
Root: "HKCR"; Subkey: "Directory\Background\shell\Cmder"; ValueType: expandsz; ValueName: "Icon"; ValueData: C:\Program Files\cmder_mini\icons\cmder.ico,0; Flags: uninsdeletekey
Root: "HKCR"; Subkey: "Directory\Background\shell\Cmder\command"; ValueType: expandsz; ValueData: C:\Program Files\cmder_mini\Cmder.exe /START %v; Flags: uninsdeletevalue
Root: "HKCR"; Subkey: "Directory\shell\Cmder"; ValueType: string; ValueData: "Open Cmder Here"; Flags: uninsdeletevalue
Root: "HKCR"; Subkey: "Directory\shell\Cmder"; ValueType: expandsz; ValueName: "Icon"; ValueData: C:\Program Files\cmder_mini\icons\cmder.ico,0; Flags: uninsdeletekey
Root: "HKCR"; Subkey: "Directory\shell\Cmder\command"; ValueType: expandsz; ValueData: C:\Program Files\cmder_mini\Cmder.exe /START %v; Flags: uninsdeletevalue

[Setup]
AppName=cmder_context
AppVersion=1.0
CreateAppDir=False
UsePreviousGroup=False
DisableProgramGroupPage=yes
