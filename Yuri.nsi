Name "尤里的复仇"
Caption "尤里的复仇 安装程序"
BrandingText "红色警戒Ⅱ 资料片 尤里的复仇"
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
VIAddVersionKey FileDescription "尤里的复仇"
VIAddVersionKey FileVersion "第二版"
VIAddVersionKey LegalCopyright "溪流制作"

Section YURI

    SetDetailsView show
    SetDetailsPrint textonly
    DetailPrint "正在安装尤里的复仇..."
    SetDetailsPrint listonly
    SetOutPath "$INSTDIR"
    SetOverwrite on
    File "conquermd.dat"
    File "yuri.lcf"
    File "ra2md.lcf"
    File "movmd03.mix"
    File "mapsmd03.mix"
    File "multimd.mix"
    DetailPrint "将要解压 langmd.mix, 该文件有 81MB, 请耐心等待"
    File "langmd.mix"
    DetailPrint "将要解压 ra2md.mix, 该文件有 195MB, 请耐心等待"
    File "ra2md.mix"
    DetailPrint "将要解压 thememd.mix, 该文件有 45MB, 请耐心等待"
    File "thememd.mix"
    File "gamemd.exe"
    File "gamemd.1000"
    File "yuri.exe"
    File "ra2md.exe"
    File "*.yro"
    
    CreateShortCut "$INSTDIR\尤里的复仇.lnk" "$INSTDIR\ra2md.exe"
    
SectionEnd
