Name "����ĸ����������"
Caption "����ĸ���������� ��װ����"
BrandingText "��ɫ����� ����Ƭ ����ĸ���"
OutFile "yurimov.exe"
InstallDir "D:\ra2"

!include "MUIXP.nsh"
!include "LogicLib.nsh"

!define MUI_SKIN "InstallShield"
!define MUI_ICON  "yuri.ico"
!define MUI_ABORTWARNING

!insertmacro MUI_PAGE_INIT
!insertmacro MUI_PAGE_WELCOME
!define MUI_LICENSEPAGE_CHECKBOX
!insertmacro MUI_PAGE_LICENSE "yurimov.txt"
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_INSTFILES
!define MUI_FINISHPAGE_NOREBOOTSUPPORT
!insertmacro MUI_PAGE_FINISH

!insertmacro MUI_LANGUAGE "SimpChinese"

VIProductVersion "2.0.0.0000"
VIAddVersionKey FileDescription "����ĸ����������"
VIAddVersionKey FileVersion "�ڶ���"
VIAddVersionKey LegalCopyright "Ϫ������"

Section YURIMOV

    SetDetailsView show
    SetDetailsPrint textonly
    DetailPrint "���ڰ�װ����ĸ����������..."
    SetDetailsPrint listonly
    SetOutPath "$INSTDIR"
    SetOverwrite on
    SetCompress off
    DetailPrint "��Ҫ��ѹ movmd03.mix, ���ļ��� 375MB, �����ĵȴ�"
    File "movies\movmd03.mix"
    SetCompress auto

SectionEnd
