Name "��ɫ������������"
Caption "��ɫ������������ ��װ����"
BrandingText "���������� ��ɫ�����"
OutFile "ra2mov.exe"
InstallDir "D:\ra2"

!include "MUIXP.nsh"
!include "LogicLib.nsh"

!define MUI_SKIN "InstallShield"
!define MUI_ICON  "ra2.ico"
!define MUI_ABORTWARNING

!insertmacro MUI_PAGE_INIT
!insertmacro MUI_PAGE_WELCOME
!define MUI_LICENSEPAGE_CHECKBOX
!insertmacro MUI_PAGE_LICENSE "ra2mov.txt"
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_INSTFILES
!define MUI_FINISHPAGE_NOREBOOTSUPPORT
!insertmacro MUI_PAGE_FINISH

!insertmacro MUI_LANGUAGE "SimpChinese"

VIProductVersion "2.0.0.0000"
VIAddVersionKey FileDescription "��ɫ������������"
VIAddVersionKey FileVersion "�ڶ���"
VIAddVersionKey LegalCopyright "Ϫ������"

Section RA2MOV

    SetDetailsView show
    SetDetailsPrint textonly
    DetailPrint "���ڰ�װ��ɫ������������..."
    SetDetailsPrint listonly
    SetOutPath "$INSTDIR"
    SetOverwrite on
    SetCompress off
    DetailPrint "��Ҫ��ѹ movies01.mix, ���ļ��� 340MB, �����ĵȴ�"
    File "movies\movies01.mix"
    DetailPrint "��Ҫ��ѹ movies02.mix, ���ļ��� 290MB, �����ĵȴ�"
    File "movies\movies02.mix"
    SetCompress auto

SectionEnd
