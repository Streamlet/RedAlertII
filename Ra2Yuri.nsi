;��ʼ
;--------------------------------
;�������

!define Name "��ɫ���������ĸ���" ;����
!define Ver "���Ͼ����" ;�汾��
!define CmpName "Ϫ����վ" ;��˾��
!define InstroFile "Readme.txt" ;˵���ļ�
!define EULA "eula.txt" ;���Э��
;--------------------------------
;����ͷ�ļ�
;Ĭ����ʼĿ¼Ϊ NSIS ��װĿ¼�µġ�Include��Ŀ¼

!include "MUI.nsh"  ;����֧���µĽ�������
!include "Sections.nsh"  ;����֧�֡�Section��

;--------------------------------

;��װ����ͼ��
!define MUI_ICON  "install.ico"
;ж�س���ͼ��
!define MUI_UNICON "install.ico"
;�ڰ�װ�����ϲ���ʾ��ͼƬ
!define MUI_HEADERIMAGE
!define MUI_HEADERIMAGE_BITMAP "${NSISDIR}\Contrib\Graphics\Header\win.bmp"
;���û��˳���װ������ʾһ����Ϣ��ѯ���Ƿ�����˳�
!define MUI_ABORTWARNING
!define MUI_ABORTWARNING_TEXT "��ȷʵҪ�˳� ${Name} ${Ver} ��װ������"
;���û�ѡ��Ҫ��װ�ĵ����ʱ���²���ʾ����
!define MUI_COMPONENTSPAGE_SMALLDESC

;--------------------------------
;��װ��������

OutFile "F:\Ra2Yuri.exe" ;����ļ�
Name "${Name} ${Ver}" ;��������
Caption "${Name} ${Ver} ��װ����" ;��װ���������������
BrandingText "${Name} ${Ver}"

;���ÿ�ѡ�İ�װ����
InstType "��ȫ��װ"
InstType "��С��װ"
;NSIS ���Զ�����ϡ��Զ��塱��װ����

InstallDir "D:\Ra2Yuri" ;Ĭ�ϰ�װĿ¼
;InstallDirRegKey HKLM Software\${Name} "" ;Ĭ�ϳ���ע����

;--------------------------------
;��װ����ҳ������

;ʹ�á���ӭ��ҳ��
!insertmacro MUI_PAGE_WELCOME

;�ڡ���ȨЭ�顱ҳ��ʹ�ø�ѡ��
!define MUI_LICENSEPAGE_CHECKBOX
;ʹ�á���ȨЭ��ҳ�桱������ָ��Э���ļ�·��
!insertmacro MUI_PAGE_LICENSE "${EULA}"

;ʹ�á�ѡ��װĿ¼��ҳ��
!insertmacro MUI_PAGE_DIRECTORY

;ʹ�á�ѡ�������ҳ��
!insertmacro MUI_PAGE_COMPONENTS

;ʹ�á����ڰ�װ��ҳ��
!insertmacro MUI_PAGE_INSTFILES

;��װ��ɺ��Զ���������ɡ�ҳ��
;!define MUI_FINISHPAGE_NOAUTOCLOSE
;�ڡ���ɡ�ҳ������ʾ��һ���ı��ļ�����ҳ
;�ļ�·��
!define MUI_FINISHPAGE_SHOWREADME "$INSTDIR\Readme.txt"
;��ʾ���ı�
!define MUI_FINISHPAGE_SHOWREADME_TEXT "�Ķ������ļ�"
;�ڡ���ɡ�ҳ����ʾһ������
;���ӵ�ַ
!define MUI_FINISHPAGE_LINK_LOCATION "http://www.lqms.org/homepage/kjj/"
;��ʾ���ı�
!define MUI_FINISHPAGE_LINK "��ӭ����Ϫ����վ"
;����ʾ��������
!define MUI_FINISHPAGE_NOREBOOTSUPPORT
;ʹ�á����ҳ�桱
!insertmacro MUI_PAGE_FINISH

;--------------------------------
;ж�س���ҳ������

;ʹ�á���ӭ��ҳ��
!insertmacro MUI_UNPAGE_WELCOME
;ʹ�á�ȷ��ж�ء�ҳ��
!insertmacro MUI_UNPAGE_CONFIRM
;ʹ�á�����ж�ء�ҳ��
!insertmacro MUI_UNPAGE_INSTFILES
;ʹ�á���ɡ�ҳ��
!insertmacro MUI_UNPAGE_FINISH

;--------------------------------
;��������

;����Ĭ������
;ǰ���ǡ�$NSISDIR\Contrib\Language files\�����ж�Ӧ�������ļ�
!insertmacro MUI_LANGUAGE "SimpChinese"
;��Ϊ���ֳɵġ�SimpChinese.nlf�������ļ�������ֱ������
;���û���������ԣ���Ҳ���԰������е����������ļ���ʽ�Լ�д

;--------------------------------
;��װ����İ汾��Ϣ
VIProductVersion "1.0.0.0000" ;�汾�ţ���ʽΪ X.X.X.X (��ʹ����������)
VIAddVersionKey FileDescription "${Name} ${Ver}" ;�ļ�����(��׼��Ϣ)
VIAddVersionKey FileVersion "1.0" ;�ļ��汾(��׼��Ϣ)
VIAddVersionKey ProductName "${Name} ${Ver}"  ;��Ʒ����
;VIAddVersionKey ProductVersion "${Ver}" ;��Ʒ�汾
;VIAddVersionKey Comments "${Name} ${Ver}" ;��ע
;VIAddVersionKey CompanyName "${CmpName}" ;��˾��
VIAddVersionKey LegalCopyright "��Ȩ���� (C)" ;�Ϸ���Ȩ
;VIAddVersionKey InternalName "${Name}" ;�ڲ�����
;VIAddVersionKey LegalTrademarks "" ;�Ϸ��̱� ;
;VIAddVersionKey OriginalFilename "" ;Դ�ļ���
;VIAddVersionKey PrivateBuild "" ;�����ڲ��汾˵��
;VIAddVersionKey SpecialBuild "" ;�����ڲ�����˵��

;--------------------------------
;�������

Section "��ɫ�����1.006" SecRa2
;�ڶ���������Ҫ��ʾ���������
;�������������ű��ڲ�������

    ;��װʱ�Զ���ʾ��ϸ��Ϣ
    SetDetailsView show

    SetDetailsPrint textonly
    ;ֻ���ϲ���ǩ��ʾ��ϸ��Ϣ
    DetailPrint "�ڰ�װ��ɫ�����..."
    ;��ʾ��ϸ��Ϣ
    SetDetailsPrint listonly
    ;ֻ���²��б����ʾ��ϸ��Ϣ
    ;������á�SetDetailsPrint both����ָ�����߶���ʾ

    SectionIn 1 2 RO
    ;��1����2����3����ʾ��ǰ��� 1��2��3 ����װ��ʽ�У�
    ;������Ĭ�ϱ�ѡ��
    ;��RO����ʾ�������ֻ���ģ����û��޷��ı�����״̬(ѡ�л�ѡ��)

    ;�����Ǹ�����İ�װ���̣�����������ظ�ʹ��
    ;��ð�������һ������Ĺ���

    ;�趨��ǰ���Ŀ¼������ֱ�����������װĿ¼
    SetOutPath "$INSTDIR"

    ;�Զ�����ͬ���ļ�
    SetOverwrite on

    ;�ͷ�һ���ļ�
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

    ;�ͷ�Ŀ¼�µ������ļ�
    ;File /r "·��\*.*" (�����ļ�����*.*�����Ա���ԭʼĿ¼�ṹ)
    
        ;����������
        ;�½�Ŀ¼
        CreateDirectory "$SMPROGRAMS\��ɫ����"
        ;�½���ݷ�ʽ
        CreateShortCut "$SMPROGRAMS\��ɫ����\��ɫ�����.lnk" "$INSTDIR\ra2.exe"
        CreateShortCut "$SMPROGRAMS\��ɫ����\�����ļ�.lnk" "$INSTDIR\Readme.txt"
        CreateShortCut "$SMPROGRAMS\��ɫ����\ж��.lnk" "$INSTDIR\UnInstall.exe"


    ;���������ݷ�ʽ
    CreateShortCut "$Desktop\��ɫ�����.lnk" "$INSTDIR\ra2.exe"


    ;дע����Ա��ڡ����/ɾ����������ʾ
    WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Ra2Yuri" "DisplayName" "${Name} ${Ver}"
    WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Ra2Yuri" "UninstallString" "$INSTDIR\UnInstall.exe"
    ;���¿�ѡ
    ;WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${Name}" "InstallLocation" "$INSTDIR"
    WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Ra2Yuri" "DisplayIcon" "$INSTDIR\UnInstall.exe,0"
    ;WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${Name}" "Publisher" "${CmpName}"
    ;WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${Name}" "ModifyPath" "$INSTDIR\Uninstall.exe"
    ;WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${Name}" "InstallSource" "$INSTDIR"
    ;WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${Name}" "ProductID" "(��ƷID)" ;��ƷID
    ;WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${Name}" "RegOwner" "${CmpName}" ;��ע���������
    ;WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${Name}" "RegCompany" "${CmpName}" ;��ע��Ĺ�˾
    ;WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${Name}" "HelpLink" "http://" ;����֧����Ϣ
    ;WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${Name}" "HelpTelephone" "800-" ;֧�ֵ绰
    ;WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${Name}" "URLUpdateInfo" "http://" ;��Ʒ����
    ;WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${Name}" "URLInfoAbout" "http://cmp" ;��˾��ַ
    ;WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${Name}" "DisplayVersion" "${Ver}"
    ;WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${Name}" "VersionMajor" "2"
    ;WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${Name}" "VersionMinor" "3234"
    ;WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${Name}" "NoModify" 1 ;-1��,1��
    ;WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${Name}" "NoRepair" 1 ;ͬ��

    ;дж�س���
    WriteUninstaller "$INSTDIR\UnInstall.exe"

SectionEnd


Section "����ĸ��� 1.001" SecYuri

    SetDetailsPrint textonly
    DetailPrint "���ڰ�װ����ĸ���..."
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

        CreateShortCut "$SMPROGRAMS\��ɫ����\����ĸ���.lnk" "$INSTDIR\ra2md.exe"

    CreateShortCut "$Desktop\����ĸ���.lnk" "$INSTDIR\ra2md.exe"


SectionEnd

Section "����ĸ��� 1.000 ���ļ�" SecVers

    SetDetailsPrint textonly
    DetailPrint "���ڰ�װ��ĸ��� 1.000 ���ļ�..."
    SetDetailsPrint listonly

    SectionIn 1

    SetOutPath "$INSTDIR\����ĸ���汾ת��"
    File "����ĸ���汾ת��\readme.txt"
    SetOutPath "$INSTDIR\����ĸ���汾ת��\1.000"
    File "����ĸ���汾ת��\1.000\gamemd.exe"
    SetOutPath "$INSTDIR\����ĸ���汾ת��\1.001"
    File "gamemd.exe"
    
SectionEnd

;--------------------------------
;�������Ӧ������
!insertmacro MUI_FUNCTION_DESCRIPTION_BEGIN
;�����ڶ��������Ƕ�Ӧ������ڵ�����
;������һ��������Ҫ��ʾ�������ı�

    !insertmacro MUI_DESCRIPTION_TEXT ${SecRa2} "��ɫ����� 1.006 �档"
    !insertmacro MUI_DESCRIPTION_TEXT ${SecYuri} "����ĸ��� 1.001 �档"
    !insertmacro MUI_DESCRIPTION_TEXT ${SecVers} "����Ŀǰ�������һ���������ĸ��� 1.000 �棬���ṩ�ð汾�ļ������սʱ�汾��һ�¡�"

!insertmacro MUI_FUNCTION_DESCRIPTION_END

;--------------------------------
;����

;--------------------------------
;ж�س���

Section Uninstall

    SetDetailsView show
    SetDetailsPrint textonly
    DetailPrint "����ж�� ${Name}..."
    SetDetailsPrint listonly
    
    ;ɾ����ݷ�ʽ
    SetDetailsPrint textonly
    DetailPrint "����ɾ����ݷ�ʽ..."
    SetDetailsPrint listonly
    ;��鲢ɾ��������
    RMDir /r "$SMPROGRAMS\��ɫ����"  ;ɾ��������(Ҳ����������Ŀ¼ɾ���е�ֲ�)
    ;��鲢ɾ�������ݷ�ʽ
    Delete "$DESKTOP\��ɫ�����.lnk"
    Delete "$DESKTOP\����ĸ���.lnk"

    ;ɾ���ļ�
    SetDetailsPrint textonly
    DetailPrint "����ɾ���ļ�..."
    SetDetailsPrint listonly

        Delete "$INSTDIR\����ĸ���汾ת��\1.001\gamemd.exe"
        RMDir "$INSTDIR\����ĸ���汾ת��\1.001"
        Delete "$INSTDIR\����ĸ���汾ת��\1.000\gamemd.exe"
        RMDir "$INSTDIR\����ĸ���汾ת��\1.000"
        Delete "$INSTDIR\����ĸ���汾ת��\readme.txt"
        RMDir "$INSTDIR\����ĸ���汾ת��\"

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
    
    ;ɾ��ע�����
    SetDetailsPrint textonly
    DetailPrint "����ɾ��ע�����..."
    SetDetailsPrint listonly
    DeleteRegKey HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Ra2Yuri"

SectionEnd

;--------------------------------
;����
