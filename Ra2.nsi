Name "红色警戒Ⅱ"
Caption "红色警戒Ⅱ 安装程序"
BrandingText "命令与征服 红色警戒Ⅱ"
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
VIAddVersionKey FileDescription "红色警戒Ⅱ"
VIAddVersionKey FileVersion "第二版"
VIAddVersionKey LegalCopyright "溪流制作"

Section RA2

    SetDetailsView show
    SetDetailsPrint textonly
    DetailPrint "正在安装红色警戒Ⅱ..."
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
    DetailPrint "将要解压 language.mix, 该文件有 50MB, 请耐心等待"
    File "language.mix"
    DetailPrint "将要解压 ra2.mix, 该文件有 268MB, 请耐心等待"
    File "ra2.mix"
    DetailPrint "将要解压 theme.mix, 该文件有 73MB, 请耐心等待"
    File "theme.mix"
    File "wdt.mix"
    File "binkw32.dll"
    File "blowfish.dll"
    File "game.exe"
    File "ra2.exe"
    File "*.mmx"
    SetOutPath "$INSTDIR\taunts"
    File "taunts\*.*"
    
    CreateShortCut "$INSTDIR\红色警戒Ⅱ.lnk" "$INSTDIR\ra2.exe"
    
SectionEnd
