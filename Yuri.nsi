Name "����ĸ���"
Caption "����ĸ��� ��װ����"
BrandingText "��ɫ����� ����Ƭ ����ĸ���"
OutFile "yurisetup.exe"
InstallDir "D:\ra2"

!include "MUIXP.nsh"
!include "LogicLib.nsh"

!define MUI_SKIN "InstallShield"
!define MUI_ICON  "yuri.ico"
!define MUI_ABORTWARNING

!insertmacro MUI_PAGE_INIT
!insertmacro MUI_PAGE_WELCOME
!define MUI_LICENSEPAGE_CHECKBOX
!insertmacro MUI_PAGE_LICENSE "yuri.txt"
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_INSTFILES
!define MUI_FINISHPAGE_NOREBOOTSUPPORT
!insertmacro MUI_PAGE_FINISH

!insertmacro MUI_LANGUAGE "SimpChinese"

VIProductVersion "2.0.0.0000"
VIAddVersionKey FileDescription "����ĸ���"
VIAddVersionKey FileVersion "�ڶ���"
VIAddVersionKey LegalCopyright "Ϫ������"

Section YURI

    SetDetailsView show
    SetDetailsPrint textonly
    DetailPrint "���ڰ�װ����ĸ���..."
    SetDetailsPrint listonly
    SetOutPath "$INSTDIR"
    SetOverwrite on
    File "conquermd.dat"
    File "yuri.lcf"
    File "ra2md.lcf"
    File "movmd03.mix"
    File "mapsmd03.mix"
    File "multimd.mix"
    DetailPrint "��Ҫ��ѹ langmd.mix, ���ļ��� 81MB, �����ĵȴ�"
    File "langmd.mix"
    DetailPrint "��Ҫ��ѹ ra2md.mix, ���ļ��� 195MB, �����ĵȴ�"
    File "ra2md.mix"
    DetailPrint "��Ҫ��ѹ thememd.mix, ���ļ��� 45MB, �����ĵȴ�"
    File "thememd.mix"
    File "gamemd.exe"
    File "gamemd.1000"
    File "yuri.exe"
    File "ra2md.exe"
    File "*.yro"
    
    CreateShortCut "$INSTDIR\����ĸ���.lnk" "$INSTDIR\ra2md.exe"
    
SectionEnd
