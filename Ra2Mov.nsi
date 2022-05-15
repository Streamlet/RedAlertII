Name "红色警戒Ⅱ过场动画"
Caption "红色警戒Ⅱ过场动画 安装程序"
BrandingText "命令与征服 红色警戒Ⅱ"
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
VIAddVersionKey FileDescription "红色警戒Ⅱ过场动画"
VIAddVersionKey FileVersion "第二版"
VIAddVersionKey LegalCopyright "溪流制作"

Section RA2MOV

    SetDetailsView show
    SetDetailsPrint textonly
    DetailPrint "正在安装红色警戒Ⅱ过场动画..."
    SetDetailsPrint listonly
    SetOutPath "$INSTDIR"
    SetOverwrite on
    SetCompress off
    DetailPrint "将要解压 movies01.mix, 该文件有 340MB, 请耐心等待"
    File "movies\movies01.mix"
    DetailPrint "将要解压 movies02.mix, 该文件有 290MB, 请耐心等待"
    File "movies\movies02.mix"
    SetCompress auto

SectionEnd
