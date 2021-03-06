Unicode True

OutFile "ra2_full.exe"
!define EULA_FILE "ra2_full.txt"
!define SETUP_NAME "红色警戒Ⅱ"
!define BRANDING_TEXT "命令与征服：红色警戒Ⅱ"
!define ICON_FILE "files\ra2.ico"
!define INSTALL_DIR "D:\Red Alert II"

!include "ra2.nsh"

!insertmacro SETUP_COMMON
SectionGroup /e "红色警戒II" group_ra2
!insertmacro RA2_BASIC
!insertmacro RA2_MUSIC
!insertmacro RA2_MAPS
!insertmacro RA2_MOV
SectionGroupEnd
SectionGroup /e "三方补丁" group_patch
!insertmacro DDRAW_PATCH
!insertmacro SOCKET_PATCH
SectionGroupEnd
!insertmacro SECTION_CTRL
