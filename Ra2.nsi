Name "��ɫ�����"
Caption "��ɫ����� ��װ����"
BrandingText "���������� ��ɫ�����"
OutFile "ra2setup.exe"
InstallDir "D:\ra2"

!include "MUIXP.nsh"
!include "LogicLib.nsh"

!define MUI_SKIN "InstallShield"
!define MUI_ICON  "ra2.ico"
!define MUI_ABORTWARNING

!insertmacro MUI_PAGE_INIT
!insertmacro MUI_PAGE_WELCOME
!define MUI_LICENSEPAGE_CHECKBOX
!insertmacro MUI_PAGE_LICENSE "ra2.txt"
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_INSTFILES
!define MUI_FINISHPAGE_NOREBOOTSUPPORT
!insertmacro MUI_PAGE_FINISH

!insertmacro MUI_LANGUAGE "SimpChinese"

VIProductVersion "2.0.0.0000"
VIAddVersionKey FileDescription "��ɫ�����"
VIAddVersionKey FileVersion "�ڶ���"
VIAddVersionKey LegalCopyright "Ϫ������"

Section RA2

    SetDetailsView show
    SetDetailsPrint textonly
    DetailPrint "���ڰ�װ��ɫ�����..."
    SetDetailsPrint listonly
    SetOutPath "$INSTDIR"
    SetOverwrite on
    File "conquer.dat"
    File "ra2.lcf"
    File "ra2.tlb"
    File "movies01.mix"
    File "movies02.mix"
    File "maps01.mix"
    File "maps02.mix"
    File "multi.mix"
    DetailPrint "��Ҫ��ѹ language.mix, ���ļ��� 50MB, �����ĵȴ�"
    File "language.mix"
    DetailPrint "��Ҫ��ѹ ra2.mix, ���ļ��� 268MB, �����ĵȴ�"
    File "ra2.mix"
    DetailPrint "��Ҫ��ѹ theme.mix, ���ļ��� 73MB, �����ĵȴ�"
    File "theme.mix"
    File "wdt.mix"
    File "binkw32.dll"
    File "blowfish.dll"
    File "game.exe"
    File "ra2.exe"
    File "*.mmx"
    SetOutPath "$INSTDIR\taunts"
    File "taunts\*.*"
    
    CreateShortCut "$INSTDIR\��ɫ�����.lnk" "$INSTDIR\ra2.exe"
    
SectionEnd
