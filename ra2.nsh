!include "config.nsh"

!include "MUI2.nsh"
!include "LogicLib.nsh"
!include "WinVer.nsh" 

####################################################################################################

!macro SETUP_COMMON

Name "${SETUP_NAME}"
Caption "${SETUP_NAME} 安装程序"
BrandingText "${BRANDING_TEXT}"
InstallDir "${INSTALL_DIR}"

!define MUI_SKIN "InstallShield"
!define MUI_ICON "${ICON_FILE}"
!define MUI_ABORTWARNING

!insertmacro MUI_PAGE_INIT
!insertmacro MUI_PAGE_WELCOME
!define MUI_LICENSEPAGE_CHECKBOX
!insertmacro MUI_PAGE_LICENSE "${EULA_FILE}"
!insertmacro MUI_PAGE_COMPONENTS
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_INSTFILES
!define MUI_FINISHPAGE_NOREBOOTSUPPORT
!define MUI_FINISHPAGE_LINK_LOCATION "https://www.streamlet.org/"
!define MUI_FINISHPAGE_LINK "欢迎访问溪流网站"
!insertmacro MUI_PAGE_FINISH

!insertmacro MUI_LANGUAGE "SimpChinese"

VIProductVersion "3.0.0.0"
VIAddVersionKey FileDescription "${SETUP_NAME}"
VIAddVersionKey FileVersion "第三版"
VIAddVersionKey LegalCopyright "溪流制作"

!macroend

####################################################################################################

!macro TOUCH_FILE FILE_NAME
    FileOpen $0 "${FILE_NAME}" w
    FileClose $0
!macroend
####################################################################################################

!macro RA2_BASIC

Section "红色警戒Ⅱ" ra2_basic

    SectionIn RO

    SetDetailsView show
    SetDetailsPrint textonly
    DetailPrint "正在安装${__SECTION__}..."
    SetDetailsPrint listonly
    SetOutPath "$INSTDIR"
    SetOverwrite on
    File "files\ra2_basic\conquer.dat"
    File "files\ra2_basic\ra2.lcf"
    File "files\ra2_basic\ra2.tlb"
    !insertmacro TOUCH_FILE "movies01.mix"
    !insertmacro TOUCH_FILE "movies02.mix"
    File "files\ra2_basic\maps01.mix"
    File "files\ra2_basic\maps02.mix"
    File "files\ra2_basic\multi.mix"
    DetailPrint "将要解压 language.mix, 该文件有 50MB, 请耐心等待"
    File "files\ra2_basic\language.mix"
    DetailPrint "将要解压 ra2.mix, 该文件有 268MB, 请耐心等待"
    File "files\ra2_basic\ra2.mix"
    File "files\ra2_basic\binkw32.dll"
    File "files\ra2_basic\blowfish.dll"
    File "files\ra2_basic\game.exe"
    File "files\ra2_basic\ra2.exe"

SectionEnd

!macroend

!macro RA2MD_RA2_BASIC

Section "核心组件" ra2md_ra2_core

    SectionIn RO

    SetDetailsView show
    SetDetailsPrint textonly
    DetailPrint "正在安装${__SECTION__}..."
    SetDetailsPrint listonly
    SetOutPath "$INSTDIR"
    SetOverwrite on
    DetailPrint "将要解压 language.mix, 该文件有 50MB, 请耐心等待"
    File "files\ra2_basic\language.mix"
    DetailPrint "将要解压 ra2.mix, 该文件有 268MB, 请耐心等待"
    File "files\ra2_basic\ra2.mix"
    File "files\ra2_basic\binkw32.dll"
    File "files\ra2_basic\blowfish.dll"

SectionEnd

Section "红色警戒Ⅱ" ra2md_ra2_basic

    SetDetailsView show
    SetDetailsPrint textonly
    DetailPrint "正在安装${__SECTION__}..."
    SetDetailsPrint listonly
    SetOutPath "$INSTDIR"
    SetOverwrite on
    File "files\ra2_basic\conquer.dat"
    File "files\ra2_basic\ra2.lcf"
    File "files\ra2_basic\ra2.tlb"
    !insertmacro TOUCH_FILE "movies01.mix"
    !insertmacro TOUCH_FILE "movies02.mix"
    File "files\ra2_basic\maps01.mix"
    File "files\ra2_basic\maps02.mix"
    File "files\ra2_basic\multi.mix"
    File "files\ra2_basic\game.exe"
    File "files\ra2_basic\ra2.exe"

SectionEnd

!macroend

####################################################################################################

!macro RA2_MUSIC

Section "背景音乐" ra2_music

    SetDetailsView show
    SetDetailsPrint textonly
    DetailPrint "正在安装${__SECTION__}..."
    SetDetailsPrint listonly
    SetOutPath "$INSTDIR"
    SetOverwrite on
    DetailPrint "将要解压 theme.mix, 该文件有 73MB, 请耐心等待"
    File "files\ra2_music\theme.mix"
    File "files\ra2_music\wdt.mix"
    SetOutPath "$INSTDIR\taunts"
    File "files\ra2_music\taunts\*.*"

SectionEnd

!macroend

####################################################################################################

!macro RA2_MAPS

Section "补充地图" ra2_maps

    SetDetailsView show
    SetDetailsPrint textonly
    DetailPrint "正在安装${__SECTION__}..."
    SetDetailsPrint listonly
    SetOutPath "$INSTDIR"
    SetOverwrite on
    File "files\ra2_maps\*.mmx"

SectionEnd

!macroend

####################################################################################################

!macro RA2_MOV

Section "过场动画" ra2_mov

    SetDetailsView show
    SetDetailsPrint textonly
    DetailPrint "正在安装${__SECTION__}..."
    SetDetailsPrint listonly
    SetOutPath "$INSTDIR"
    SetOverwrite on
    DetailPrint "将要解压 movies01.mix, 该文件有 340MB, 请耐心等待"
    File "files\ra2_mov\movies01.mix"
    DetailPrint "将要解压 movies02.mix, 该文件有 290MB, 请耐心等待"
    File "files\ra2_mov\movies02.mix"

SectionEnd

!macroend

####################################################################################################

!macro RA2MD_BASIC

Section "尤里的复仇" ra2md_basic

    SectionIn RO

    SetDetailsView show
    SetDetailsPrint textonly
    DetailPrint "正在安装${__SECTION__}..."
    SetDetailsPrint listonly
    SetOutPath "$INSTDIR"
    SetOverwrite on
    File "files\ra2md_basic\conquermd.dat"
    File "files\ra2md_basic\yuri.lcf"
    File "files\ra2md_basic\ra2md.lcf"
    !insertmacro TOUCH_FILE "movmd03.mix"
    File "files\ra2md_basic\mapsmd03.mix"
    File "files\ra2md_basic\multimd.mix"
    DetailPrint "将要解压 langmd.mix, 该文件有 81MB, 请耐心等待"
    File "files\ra2md_basic\langmd.mix"
    DetailPrint "将要解压 ra2md.mix, 该文件有 195MB, 请耐心等待"
    File "files\ra2md_basic\ra2md.mix"
    File "files\ra2md_basic\gamemd.exe"
    File "files\ra2md_basic\yuri.exe"
    File "files\ra2md_basic\ra2md.exe"

SectionEnd

!macroend

####################################################################################################

!macro RA2MD_MUSIC

Section "背景音乐" ra2md_music

    SetDetailsView show
    SetDetailsPrint textonly
    DetailPrint "正在安装${__SECTION__}..."
    SetDetailsPrint listonly
    SetOutPath "$INSTDIR"
    SetOverwrite on
    DetailPrint "将要解压 thememd.mix, 该文件有 45MB, 请耐心等待"
    File "files\ra2md_music\thememd.mix"

SectionEnd

!macroend

####################################################################################################

!macro RA2MD_MAPS

Section "补充地图" ra2md_maps

    SetDetailsView show
    SetDetailsPrint textonly
    DetailPrint "正在安装${__SECTION__}..."
    SetDetailsPrint listonly
    SetOutPath "$INSTDIR"
    SetOverwrite on
    File "files\ra2md_maps\*.yro"

SectionEnd

!macroend

####################################################################################################

!macro RA2MD_MOV

Section "过场动画" ra2md_mov

    SetDetailsView show
    SetDetailsPrint textonly
    DetailPrint "正在安装${__SECTION__}..."
    SetDetailsPrint listonly
    SetOutPath "$INSTDIR"
    SetOverwrite on
    DetailPrint "将要解压 movmd03.mix, 该文件有 375MB, 请耐心等待"
    File "files\ra2md_mov\movmd03.mix"

SectionEnd

!macroend

####################################################################################################

!macro DDRAW_PATCH

Section "DDraw 补丁" ddraw_patch

    SetDetailsView show
    SetDetailsPrint textonly
    DetailPrint "正在安装 ${__SECTION__}..."
    SetDetailsPrint listonly
    SetOutPath "$INSTDIR"
    SetOverwrite on
    File "files\ddraw_patch\ddraw.dll"

SectionEnd

!macroend

####################################################################################################

!macro SOCKET_PATCH

Section "联机补丁" socket_patch

    SetDetailsView show
    SetDetailsPrint textonly
    DetailPrint "正在安装${__SECTION__}..."
    SetDetailsPrint listonly
    SetOutPath "$INSTDIR"
    SetOverwrite on
    File "files\socket_patch\wsock32.dll"

SectionEnd

!macroend

####################################################################################################

!macro SECTION_CTRL

Function .onInit

    !ifdef ddraw_patch
    ${If} ${AtLeastWin8}
        IntOp $0 ${SF_SELECTED} | ${SF_RO}
        SectionSetFlags ${ddraw_patch} $0
    ${Else}
        SectionSetFlags ${ddraw_patch} 0
    ${EndIf}
    !endif

FunctionEnd

!insertmacro MUI_FUNCTION_DESCRIPTION_BEGIN
    !ifdef group_ra2
    !insertmacro MUI_DESCRIPTION_TEXT ${group_ra2}       "红色警戒II组件"
    !endif
    !ifdef group_ra2md
    !insertmacro MUI_DESCRIPTION_TEXT ${group_ra2md}     "尤里的复仇组件"
    !endif
    !ifdef group_patch
    !insertmacro MUI_DESCRIPTION_TEXT ${group_patch}     "三方补丁"
    !endif
    !ifdef ra2_basic
    !insertmacro MUI_DESCRIPTION_TEXT ${ra2_basic}       "红色警戒II运行所需的基础组件"
    !endif
    !ifdef ra2md_ra2_core
    !insertmacro MUI_DESCRIPTION_TEXT ${ra2md_ra2_core}  "尤里的复仇运行所需的红色警戒II核心组件"
    !endif
    !ifdef ra2md_ra2
    !insertmacro MUI_DESCRIPTION_TEXT ${ra2md_ra2_basic} "红色警戒II运行所需的基础组件"
    !endif
    !ifdef ra2_music
    !insertmacro MUI_DESCRIPTION_TEXT ${ra2_music}       "红色警戒II背景音乐资源"
    !endif
    !ifdef ra2_maps
    !insertmacro MUI_DESCRIPTION_TEXT ${ra2_maps}        "官方补充发布的红色警戒II地图"
    !endif
    !ifdef ra2_mov
    !insertmacro MUI_DESCRIPTION_TEXT ${ra2_mov}         "红色警戒II过场动画"
    !endif
    !ifdef ra2md_basic
    !insertmacro MUI_DESCRIPTION_TEXT ${ra2md_basic}     "尤里的复仇运行所需的必须组件"
    !endif
    !ifdef ra2md_music
    !insertmacro MUI_DESCRIPTION_TEXT ${ra2md_music}     "尤里的复仇背景音乐资源"
    !endif
    !ifdef ra2md_maps
    !insertmacro MUI_DESCRIPTION_TEXT ${ra2md_maps}      "官方补充发布的尤里的复仇地图"
    !endif
    !ifdef ra2md_mov
    !insertmacro MUI_DESCRIPTION_TEXT ${ra2md_mov}       "尤里的复仇过场动画"
    !endif
    !ifdef ddraw_patch
    !insertmacro MUI_DESCRIPTION_TEXT ${ddraw_patch}     "CnCNet 版本的 DDraw 补丁，Windows 8 以上运行需要"
    !endif
    !ifdef socket_patch
    !insertmacro MUI_DESCRIPTION_TEXT ${socket_patch}    "局域网联机补丁"
    !endif
!insertmacro MUI_FUNCTION_DESCRIPTION_END

!macroend
