;开始
;--------------------------------
;相关声明

!define Name "红色警戒Ⅱ、尤里的复仇" ;名称
!define Ver "整合精简版" ;版本号
!define CmpName "溪流网站" ;公司名
!define InstroFile "Readme.txt" ;说明文件
!define EULA "eula.txt" ;许可协议
;--------------------------------
;包含头文件
;默认起始目录为 NSIS 安装目录下的“Include”目录

!include "MUI.nsh"  ;用于支持新的界面风格了
!include "Sections.nsh"  ;用于支持“Section”

;--------------------------------

;安装程序图标
!define MUI_ICON  "install.ico"
;卸载程序图标
!define MUI_UNICON "install.ico"
;在安装程序上部显示的图片
!define MUI_HEADERIMAGE
!define MUI_HEADERIMAGE_BITMAP "${NSISDIR}\Contrib\Graphics\Header\win.bmp"
;当用户退出安装程序显示一个信息框询问是否真的退出
!define MUI_ABORTWARNING
!define MUI_ABORTWARNING_TEXT "您确实要退出 ${Name} ${Ver} 安装程序吗？"
;在用户选择要安装的的组件时在下部显示描述
!define MUI_COMPONENTSPAGE_SMALLDESC

;--------------------------------
;安装程序属性

OutFile "F:\Ra2Yuri.exe" ;输出文件
Name "${Name} ${Ver}" ;程序名称
Caption "${Name} ${Ver} 安装程序" ;安装程序标题栏的内容
BrandingText "${Name} ${Ver}"

;设置可选的安装类型
InstType "完全安装"
InstType "最小安装"
;NSIS 会自动添加上“自定义”安装类型

InstallDir "D:\Ra2Yuri" ;默认安装目录
;InstallDirRegKey HKLM Software\${Name} "" ;默认程序注册项

;--------------------------------
;安装程序页面设置

;使用“欢迎”页面
!insertmacro MUI_PAGE_WELCOME

;在“授权协议”页面使用复选框
!define MUI_LICENSEPAGE_CHECKBOX
;使用“授权协议页面”，后面指定协议文件路径
!insertmacro MUI_PAGE_LICENSE "${EULA}"

;使用“选择安装目录”页面
!insertmacro MUI_PAGE_DIRECTORY

;使用“选择组件”页面
!insertmacro MUI_PAGE_COMPONENTS

;使用“正在安装”页面
!insertmacro MUI_PAGE_INSTFILES

;安装完成后不自动跳到“完成”页面
;!define MUI_FINISHPAGE_NOAUTOCLOSE
;在“完成”页面上提示打开一个文本文件或网页
;文件路径
!define MUI_FINISHPAGE_SHOWREADME "$INSTDIR\Readme.txt"
;显示的文本
!define MUI_FINISHPAGE_SHOWREADME_TEXT "阅读自述文件"
;在“完成”页面显示一个链接
;链接地址
!define MUI_FINISHPAGE_LINK_LOCATION "http://www.lqms.org/homepage/kjj/"
;显示的文本
!define MUI_FINISHPAGE_LINK "欢迎访问溪流网站"
;不提示重新启动
!define MUI_FINISHPAGE_NOREBOOTSUPPORT
;使用“完成页面”
!insertmacro MUI_PAGE_FINISH

;--------------------------------
;卸载程序页面设置

;使用“欢迎”页面
!insertmacro MUI_UNPAGE_WELCOME
;使用“确认卸载”页面
!insertmacro MUI_UNPAGE_CONFIRM
;使用“正在卸载”页面
!insertmacro MUI_UNPAGE_INSTFILES
;使用“完成”页面
!insertmacro MUI_UNPAGE_FINISH

;--------------------------------
;语言设置

;设置默认语言
;前提是“$NSISDIR\Contrib\Language files\”下有对应的语言文件
!insertmacro MUI_LANGUAGE "SimpChinese"
;因为有现成的“SimpChinese.nlf”语言文件，所以直接引用
;如果没有所需语言，你也可以按照已有的其他语言文件格式自己写

;--------------------------------
;安装程序的版本信息
VIProductVersion "1.0.0.0000" ;版本号，格式为 X.X.X.X (若使用则本条必须)
VIAddVersionKey FileDescription "${Name} ${Ver}" ;文件描述(标准信息)
VIAddVersionKey FileVersion "1.0" ;文件版本(标准信息)
VIAddVersionKey ProductName "${Name} ${Ver}"  ;产品名称
;VIAddVersionKey ProductVersion "${Ver}" ;产品版本
;VIAddVersionKey Comments "${Name} ${Ver}" ;备注
;VIAddVersionKey CompanyName "${CmpName}" ;公司名
VIAddVersionKey LegalCopyright "版权所有 (C)" ;合法版权
;VIAddVersionKey InternalName "${Name}" ;内部名称
;VIAddVersionKey LegalTrademarks "" ;合法商标 ;
;VIAddVersionKey OriginalFilename "" ;源文件名
;VIAddVersionKey PrivateBuild "" ;个人内部版本说明
;VIAddVersionKey SpecialBuild "" ;特殊内部本本说明

;--------------------------------
;组件设置

Section "红色警戒Ⅱ1.006" SecRa2
;第二个参数是要显示的组件名称
;第三个参数供脚本内部引用用

    ;安装时自动显示详细信息
    SetDetailsView show

    SetDetailsPrint textonly
    ;只在上部标签显示详细信息
    DetailPrint "在安装红色警戒Ⅱ..."
    ;显示详细信息
    SetDetailsPrint listonly
    ;只在下部列表框显示详细信息
    ;另外可用“SetDetailsPrint both”来指定两者都显示

    SectionIn 1 2 RO
    ;“1”“2”“3”表示在前面第 1、2、3 个安装方式中，
    ;这个组件默认被选中
    ;“RO”表示该组件是只读的，即用户无法改变它的状态(选中或不选中)

    ;下面是该组件的安装过程，各命令均可重复使用
    ;最好把它看成一个程序的过程

    ;设定当前输出目录，这里直接输出到程序安装目录
    SetOutPath "$INSTDIR"

    ;自动覆盖同名文件
    SetOverwrite on

    ;释放一个文件
      File "Readme.txt"
      File "conquer.dat"
      File "ra2.lcf"
      File "ra2.tlb"
      File "movies01.mix"
      File "movies02.mix"
      File "maps01.mix"
      File "maps02.mix"
      File "multi.mix"
      File "language.mix"
      File "ra2.mix"
      File "binkw32.dll"
      File "blowfish.dll"
      File "game.exe"
      File "ra2.exe"

    ;释放目录下的所有文件
    ;File /r "路径\*.*" (不带文件名“*.*”可以保持原始目录结构)
    
        ;创建程序组
        ;新建目录
        CreateDirectory "$SMPROGRAMS\红色警戒"
        ;新建快捷方式
        CreateShortCut "$SMPROGRAMS\红色警戒\红色警戒Ⅱ.lnk" "$INSTDIR\ra2.exe"
        CreateShortCut "$SMPROGRAMS\红色警戒\自述文件.lnk" "$INSTDIR\Readme.txt"
        CreateShortCut "$SMPROGRAMS\红色警戒\卸载.lnk" "$INSTDIR\UnInstall.exe"


    ;创建桌面快捷方式
    CreateShortCut "$Desktop\红色警戒Ⅱ.lnk" "$INSTDIR\ra2.exe"


    ;写注册表，以便在“添加/删除程序”中显示
    WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Ra2Yuri" "DisplayName" "${Name} ${Ver}"
    WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Ra2Yuri" "UninstallString" "$INSTDIR\UnInstall.exe"
    ;以下可选
    ;WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${Name}" "InstallLocation" "$INSTDIR"
    WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Ra2Yuri" "DisplayIcon" "$INSTDIR\UnInstall.exe,0"
    ;WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${Name}" "Publisher" "${CmpName}"
    ;WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${Name}" "ModifyPath" "$INSTDIR\Uninstall.exe"
    ;WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${Name}" "InstallSource" "$INSTDIR"
    ;WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${Name}" "ProductID" "(产品ID)" ;产品ID
    ;WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${Name}" "RegOwner" "${CmpName}" ;已注册的所有者
    ;WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${Name}" "RegCompany" "${CmpName}" ;已注册的公司
    ;WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${Name}" "HelpLink" "http://" ;技术支持信息
    ;WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${Name}" "HelpTelephone" "800-" ;支持电话
    ;WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${Name}" "URLUpdateInfo" "http://" ;产品更新
    ;WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${Name}" "URLInfoAbout" "http://cmp" ;公司网址
    ;WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${Name}" "DisplayVersion" "${Ver}"
    ;WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${Name}" "VersionMajor" "2"
    ;WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${Name}" "VersionMinor" "3234"
    ;WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${Name}" "NoModify" 1 ;-1有,1无
    ;WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${Name}" "NoRepair" 1 ;同上

    ;写卸载程序
    WriteUninstaller "$INSTDIR\UnInstall.exe"

SectionEnd


Section "尤里的复仇 1.001" SecYuri

    SetDetailsPrint textonly
    DetailPrint "正在安装尤里的复仇..."
    SetDetailsPrint listonly

    SectionIn 1
    
    SetOutPath "$INSTDIR"
        File "conquermd.dat"
        File "ra2md.lcf"
        File "movmd03.mix"
        File "mapsmd03.mix"
        File "multimd.mix"
        File "langmd.mix"
        File "ra2md.mix"
        File "gamemd.exe"
        File "ra2md.exe"

        CreateShortCut "$SMPROGRAMS\红色警戒\尤里的复仇.lnk" "$INSTDIR\ra2md.exe"

    CreateShortCut "$Desktop\尤里的复仇.lnk" "$INSTDIR\ra2md.exe"


SectionEnd

Section "尤里的复仇 1.000 版文件" SecVers

    SetDetailsPrint textonly
    DetailPrint "正在安装里的复仇 1.000 版文件..."
    SetDetailsPrint listonly

    SectionIn 1

    SetOutPath "$INSTDIR\尤里的复仇版本转换"
    File "尤里的复仇版本转换\readme.txt"
    SetOutPath "$INSTDIR\尤里的复仇版本转换\1.000"
    File "尤里的复仇版本转换\1.000\gamemd.exe"
    SetOutPath "$INSTDIR\尤里的复仇版本转换\1.001"
    File "gamemd.exe"
    
SectionEnd

;--------------------------------
;各组件对应的描述
!insertmacro MUI_FUNCTION_DESCRIPTION_BEGIN
;倒数第二个参数是对应组件所在的区段
;倒数第一个参数是要显示的描述文本

    !insertmacro MUI_DESCRIPTION_TEXT ${SecRa2} "红色警戒Ⅱ 1.006 版。"
    !insertmacro MUI_DESCRIPTION_TEXT ${SecYuri} "尤里的复仇 1.001 版。"
    !insertmacro MUI_DESCRIPTION_TEXT ${SecVers} "由于目前大多数玩家还是用尤里的复仇 1.000 版，故提供该版本文件以免对战时版本不一致。"

!insertmacro MUI_FUNCTION_DESCRIPTION_END

;--------------------------------
;函数

;--------------------------------
;卸载程序

Section Uninstall

    SetDetailsView show
    SetDetailsPrint textonly
    DetailPrint "正在卸载 ${Name}..."
    SetDetailsPrint listonly
    
    ;删除快捷方式
    SetDetailsPrint textonly
    DetailPrint "正在删除快捷方式..."
    SetDetailsPrint listonly
    ;检查并删除程序组
    RMDir /r "$SMPROGRAMS\红色警戒"  ;删除程序组(也许这里整个目录删除有点粗糙)
    ;检查并删除桌面快捷方式
    Delete "$DESKTOP\红色警戒Ⅱ.lnk"
    Delete "$DESKTOP\尤里的复仇.lnk"

    ;删除文件
    SetDetailsPrint textonly
    DetailPrint "正在删除文件..."
    SetDetailsPrint listonly

        Delete "$INSTDIR\尤里的复仇版本转换\1.001\gamemd.exe"
        RMDir "$INSTDIR\尤里的复仇版本转换\1.001"
        Delete "$INSTDIR\尤里的复仇版本转换\1.000\gamemd.exe"
        RMDir "$INSTDIR\尤里的复仇版本转换\1.000"
        Delete "$INSTDIR\尤里的复仇版本转换\readme.txt"
        RMDir "$INSTDIR\尤里的复仇版本转换\"

        Delete "$INSTDIR\conquermd.dat"
        Delete "$INSTDIR\ra2md.lcf"
        Delete "$INSTDIR\movmd03.mix"
        Delete "$INSTDIR\mapsmd03.mix"
        Delete "$INSTDIR\multimd.mix"
        Delete "$INSTDIR\langmd.mix"
        Delete "$INSTDIR\ra2md.mix"
        Delete "$INSTDIR\gamemd.exe"
        Delete "$INSTDIR\ra2md.exe"

        Delete "$INSTDIR\conquer.dat"
        Delete "$INSTDIR\ra2.lcf"
        Delete "$INSTDIR\ra2.tlb"
        Delete "$INSTDIR\movies01.mix"
        Delete "$INSTDIR\movies02.mix"
        Delete "$INSTDIR\maps01.mix"
        Delete "$INSTDIR\maps02.mix"
        Delete "$INSTDIR\multi.mix"
        Delete "$INSTDIR\language.mix"
        Delete "$INSTDIR\ra2.mix"
        Delete "$INSTDIR\binkw32.dll"
        Delete "$INSTDIR\blowfish.dll"
        Delete "$INSTDIR\game.exe"
        Delete "$INSTDIR\ra2.exe"
        
        Delete "$INSTDIR\readme.txt"
        Delete "$INSTDIR\UnInstall.exe"
        RMDir "$INSTDIR"
    
    ;删除注册表项
    SetDetailsPrint textonly
    DetailPrint "正在删除注册表项..."
    SetDetailsPrint listonly
    DeleteRegKey HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Ra2Yuri"

SectionEnd

;--------------------------------
;结束
