Name "尤里的复仇过场动画"
Caption "尤里的复仇过场动画 安装程序"
BrandingText "红色警戒Ⅱ 资料片 尤里的复仇"
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
VIAddVersionKey FileDescription "尤里的复仇过场动画"
VIAddVersionKey FileVersion "第二版"
VIAddVersionKey LegalCopyright "溪流制作"

Section YURIMOV

    SetDetailsView show
    SetDetailsPrint textonly
    DetailPrint "正在安装尤里的复仇过场动画..."
    SetDetailsPrint listonly
    SetOutPath "$INSTDIR"
    SetOverwrite on
    SetCompress off
    DetailPrint "将要解压 movmd03.mix, 该文件有 375MB, 请耐心等待"
    File "movies\movmd03.mix"
    SetCompress auto

SectionEnd
