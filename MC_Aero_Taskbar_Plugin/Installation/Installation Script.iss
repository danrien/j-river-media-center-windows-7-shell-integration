; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
AppName=Media Center Windows 7 Taskbar Plugin for J. River Media Center 18+
AppVerName=Media Center Windows 7 Taskbar Plugin for J. River Media Center 18+
AppPublisher=David Vedvick
AppPublisherURL=www.davidvedvick.info
AppSupportURL=http://code.google.com/p/j-river-media-center-windows-7-shell-integration/issues/list
AppUpdatesURL=http://code.google.com/p/j-river-media-center-windows-7-shell-integration/downloads/list
DefaultDirName={pf}\J River\Media Center 18\Plugins\MC_Aero_Taskbar_Plugin
DefaultGroupName=Media Center Aero Taskbar Plugin
DisableProgramGroupPage=yes
OutputBaseFilename=MC_Aero_Taskbar_Plugin
Compression=lzma
SolidCompression=yes
DirExistsWarning=No

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "..\bin\Release\*.dll"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "..\bin\Release\*.exe"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{cm:UninstallProgram, Plugin}"; Filename: "{uninstallexe}"

[Registry]
Root: HKLM; Subkey: "Software\J. River\Media Jukebox\Plugins\Interface\MC_Aero_Taskbar_Plugin"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\J. River\Media Jukebox\Plugins\Interface\MC_Aero_Taskbar_Plugin"; ValueType: dword; ValueName: "IVersion"; ValueData: "00000001"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\J. River\Media Jukebox\Plugins\Interface\MC_Aero_Taskbar_Plugin"; ValueType: string; ValueName: "Company"; ValueData: "Last Hope Software"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\J. River\Media Jukebox\Plugins\Interface\MC_Aero_Taskbar_Plugin"; ValueType: string; ValueName: "Version"; ValueData: ".94"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\J. River\Media Jukebox\Plugins\Interface\MC_Aero_Taskbar_Plugin"; ValueType: string; ValueName: "URL"; ValueData: "www.davidvedvick.info"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\J. River\Media Jukebox\Plugins\Interface\MC_Aero_Taskbar_Plugin"; ValueType: string; ValueName: "Copyright"; ValueData: "Copyright (c) 2011 - 2013, David Vedvick."; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\J. River\Media Jukebox\Plugins\Interface\MC_Aero_Taskbar_Plugin"; ValueType: dword; ValueName: "PluginMode"; ValueData: "00000001"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\J. River\Media Jukebox\Plugins\Interface\MC_Aero_Taskbar_Plugin"; ValueType: string; ValueName: "ProdID"; ValueData: "MCPlugin.MC_Aero_Taskbar_Plugin"; Flags: uninsdeletekey

[Run]
Filename: "{win}\Microsoft.NET\Framework\v4.0.30319\regasm"; Parameters: "/Codebase MC_Aero_Taskbar_Plugin.dll"; WorkingDir: "{app}\"; StatusMsg: "Registering Plugin"; Flags:runhidden

[UninstallRun]
Filename: "{win}\Microsoft.NET\Framework\v4.0.30319\regasm"; Parameters: "/unregister MC_Aero_Taskbar_Plugin.dll"; WorkingDir: "{app}\"; StatusMsg: "Registering Plugin"; Flags:runhidden