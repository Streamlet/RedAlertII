Unicode True

OutFile "ra2md_full.exe"
!define EULA_FILE "ra2md_full.txt"
!define SETUP_NAME "尤里的复仇"
!define BRANDING_TEXT "命令与征服 红色警戒Ⅱ：尤里的复仇"
!define ICON_FILE "files\ra2md.ico"
!define INSTALL_DIR "D:\Red Alert II"

!include "ra2.nsh"

!insertmacro SETUP_COMMON
SectionGroup /e "红色警戒II" group_ra2
!insertmacro RA2MD_RA2_BASIC
!insertmacro RA2_MUSIC
!insertmacro RA2_MAPS
!insertmacro RA2_MOV
SectionGroupEnd
SectionGroup /e "尤里的复仇" group_ra2md
!insertmacro RA2MD_BASIC
!insertmacro RA2MD_MUSIC
!insertmacro RA2MD_MAPS
!insertmacro RA2MD_MOV
SectionGroupEnd
SectionGroup /e "三方补丁" group_patch
!insertmacro DDRAW_PATCH
!insertmacro SOCKET_PATCH
SectionGroupEnd
!insertmacro SECTION_CTRL
