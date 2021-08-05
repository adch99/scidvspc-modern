
#define AppVersion '4.22.1'
#define AppName    'Scid vs PC Modern (Testing)'
#define ActiveTclUrl 'http://www.activestate.com/activetcl/downloads'



[Setup]
AppName={# AppName}
AppVerName={# AppName} {# AppVersion}
AppVersion={# AppVersion}
AppPublisher=Steven Atkinson
AppPublisherURL=http://scidvspc.sourceforge.net
AppCopyright=Steven Atkinson (C) 2009 - 2021  Steven Atkinson (and others)
DefaultDirName={commonpf64}\{# AppName}-{# AppVersion}
UsePreviousAppDir=no
DefaultGroupName={# AppName}
DisableStartupPrompt=yes
WindowShowCaption=yes
WindowVisible=no

LicenseFile=COPYING.txt

Compression=bzip/9
SourceDir=.
OutputDir=.
OutputBaseFilename={# AppName}-{# AppVersion}
ChangesAssociations=yes

[Tasks]
Name: "desktopicon"; Description: "Create a &desktop icon"; GroupDescription: "Additional icons:"
Name: associate_pgn; Description: "&Associate PGN files"; GroupDescription: "Other tasks:";
Name: associate_si4; Description: "&Associate SI4 files"; GroupDescription: "Other tasks:";


[Registry]
Root: "HKCU"; Subkey: "Software\Classes\.pgn"; Flags: uninsdeletevalue; Tasks: associate_pgn
Root: "HKCU"; Subkey: "Software\Classes\.pgn"; ValueType: string; ValueData: "scid"; Flags: uninsdeletevalue; Tasks: associate_pgn
Root: "HKCU"; Subkey: "Software\Classes\scid"; Flags: uninsdeletevalue; Tasks: associate_pgn
Root: "HKCU"; Subkey: "Software\Classes\scid\shell\open\command"; ValueType: string; ValueData: """{app}\bin\scid"" ""%1"""; Flags: uninsdeletevalue; Tasks: associate_pgn

Root: "HKCU"; Subkey: "Software\Classes\.si4"; Flags: uninsdeletevalue; Tasks: associate_si4
Root: "HKCU"; Subkey: "Software\Classes\.si4"; ValueType: string; ValueData: "scid"; Flags: uninsdeletevalue; Tasks: associate_si4
Root: "HKCU"; Subkey: "Software\Classes\scid"; Flags: uninsdeletevalue; Tasks: associate_si4
Root: "HKCU"; Subkey: "Software\Classes\scid\shell\open\command"; ValueType: string; ValueData: """{app}\bin\scid"" ""%1"""; Flags: uninsdeletevalue; Tasks: associate_si4

[Dirs]
Name: "{userappdata}\scidvspc"
Name: "{userdocs}\{# AppName}"

[Files]
Source: "bin\*";  DestDir: "{app}\bin"; Flags: recursesubdirs createallsubdirs promptifolder
Source: "lib\*"; DestDir: "{app}\lib";  Flags: recursesubdirs promptifolder
Source: "doc\*"; DestDir: "{app}\doc";  Flags: recursesubdirs promptifolder
Source: "COPYING.txt"; DestDir: "{app}"; Flags: recursesubdirs promptifolder
Source: "README.txt"; DestDir: "{app}"; Flags: recursesubdirs promptifolder
Source: "README.html"; DestDir: "{app}"; Flags: recursesubdirs promptifolder
Source: "images\*"; DestDir: "{app}\images"; Flags: recursesubdirs promptifolder
Source: "conf\*"; DestDir: "{userappdata}\scidvspc"; Flags: recursesubdirs createallsubdirs promptifolder

[Icons]
Name: "{group}\{# AppName}"; Filename: "{app}\bin\scid.exe"; Comment: "{# AppName}!"; WorkingDir: {app}\bin
Name: "{group}\Uninstall {# AppName}"; Filename: "{uninstallexe}";
Name: "{userdesktop}\{# AppName}"; Filename: "{app}\bin\scid.exe"; Tasks: desktopicon; Comment: "Desktop {# AppName}!"; WorkingDir: {app}\bin

[Run]
Filename: "{app}\bin\scid.exe"; Description: "{cm:LaunchProgram,{#StringChange(AppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent


[Code]
procedure URLLabelOnClick(Sender: TObject);
var
  ErrorCode: Integer;
begin
  ShellExecAsOriginalUser('open', '{# ActiveTclUrl}', '', '', SW_SHOWNORMAL, ewNoWait, ErrorCode);
end;

var
  tclPage: TOutputMsgWizardPage;

procedure InitializeWizard();
begin

end;
