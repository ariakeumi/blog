@echo off&color 3e&mode con cols=60 lines=6
call :strset
ver | find " 5." >nul 2>nul && (echo.&echo  Unsupported system ... & echo.&pause&exit)
echo.&echo  %str13% &echo.
%1 %2
mshta vbscript:createobject("shell.application").shellexecute("%~s0","goto :runas","","runas",1)(window.close)&goto :eof
:runas
:: ==================================================
:: �����ʹ���ı��༭����������±����༭���������ļ�
:: �������и�ʽ����µ� KMS ��������

set KMS1=kms.jvtcit.com
set KMS2=kms.cencs.com
set KMS3=kms.03k.org
set KMS4=kms.chinancce.com
set KMS5=kms.digiboy.ir
set KMS6=kms.lotro.cc
set KMS7=kms-win.msdn123.com
set KMS8=m.zpale.com
set KMS9=mvg.zpale.com
set KMS10=www.beishe.cc
set KMS11=xykz.f3322.org
set KMS12=www.zgbs.cc
set KMS13=kms.dwhd.org
set KMS14=kms.imazes.org
set KMS15=122.226.152.230
set KMS16=115.159.2.184
set KMS17=119.28.13.193
set KMS18=3rss.vicp.net:20439
set KMS19=54.223.212.31
set KMS20=cy2617.6655.la
set KMS21=kms.aliyun-inc.com
set KMS22=kms.shuax.com
set KMS23=ss.yechiu.xin
set KMS24=cy2617.jios.org
set KMS25=k.zpale.com

:: ���������� 50 ��KMS������

:: ============ ��������������� ====================
mode con cols=85 lines=25
setlocal EnableDelayedExpansion&color 3e
title KMS_Activation for Win10 - [hnfeng]

call :netchk
call :verchk
call :setkey

if not defined str1 goto en
echo %bar%%bar%%bar%
echo    %str1% &echo.&echo    %str2%&echo.&echo    %str11%
echo.&echo                                             2017-9, hnfeng
echo %bar%%bar%%bar%
timeout /t 10
:en
for /f "tokens=3 delims= " %%i in ('reg QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "EditionID"') do set EditionID=%%i
if defined %EditionID% (echo.
	cscript //Nologo %windir%\system32\slmgr.vbs /ipk !%EditionID%!
	for /L %%a in (1,1,50) do (if defined KMS%%a (echo %bar%%bar% &echo %str3% !KMS%%a! &echo.
		cscript //Nologo %windir%\system32\slmgr.vbs /skms !KMS%%a!
		(cscript //nologo %windir%\system32\slmgr.vbs /ato) ^| findstr /i "successful �ɹ� ���\" && (call :successful !KMS%%a!)))
       	goto failure) else (echo.&echo %str4% "%EditionID%" &echo.&echo %bar9% & pause>nul)
exit

:setkey
set Core=TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
set CoreCountrySpecific=PVMJN-6DFY6-9CCP6-7BKTT-D3WVR
set CoreN=3KHY7-WNT83-DGQKR-F7HPR-844BM
set CoreSingleLanguage=7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH
set Professional=W269N-WFGWX-YVC9B-4J6C9-T83GX
set ProfessionalN=MH37W-N47XK-V7XM9-C7227-GCQG9
set Enterprise=NPPR9-FWDCX-D2C8J-H872K-2YT43
set EnterpriseN=DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4
set Education=NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
set EducationN=2WH4N-8QGBV-H22JP-CT43Q-MDWWJ
set EnterpriseS=WNMTR-4C88C-JK8YV-HQ7T2-76DF9
set EnterpriseSN=2F77B-TNFGY-69QQF-B8YKP-D69TJ
set EnterpriseG=YYVX9-NTFWV-6MDM3-9PT4T-4M68B
set EnterpriseGN=44RPN-FTY23-9VTTB-MP9BX-T84FV
set ProfessionalEducation=6TP4R-GNPTD-KYYHQ-7B7DP-J447Y
set ProfessionalEducationN=YVWGF-BXNMC-HTQYQ-CPQ99-66QFC
set ProfessionalWorkstation=NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J
set ProfessionalWorkstationN=9FNHH-K3HBT-3W4TD-6383H-6XYWF
goto :EOF

:strset
chcp | find "936" > nul && (
	set bar=======================
	set str1=�Զ���� Windows �İ汾�������Ӧ�� KMS ��Կ
	set str2=Ȼ���Զ�������� KMS ������������ Windows
	set str3=���ڳ��Ե� KMS ������: 
	set str4=δ���ֶ�Ӧ��ǰϵͳ�汾���������Կ: 
	set str5=��ϲ���Ѿ��ɹ����
	set str6=��������Ŷ��KMS ������ȫ���޷����ӣ�����ʧ�ܡ�
	set str7=��ǰ����ϵͳ���� Windows 10. 
	set str8=���������Ƿ�ͨ����
	set str9=��������˳�...
	set str10=ʹ�õ� KMS ��������:
	set str11=������ɹ�����������ɫ����ʧ�ܣ��������ɫ��
	set str12=���ڼ�����磬���Ե�...
	set str13=�������Թ���Ա�������...
)
chcp | find "950" > nul && (
	set bar=======================
	set str1=�۰��ˬd Windows �������A�ɤJ������ KMS �K�_
	set str2=�M�Z�۰ʳv�ӹ��� KMS �A�Ⱦ��ӿE�� Windows
	set str3=���b���ժ� KMS �A�Ⱦ�: 
	set str4=���o�{������e�t�Ϊ����ҩw�q���K�_: 
	set str5=����, �w�g���\�ҥΡC
	set str6=�B�a���ή@�AKMS �A�Ⱦ������L�k�s���A�ҥΥ��ѡC
	set str7=��e�ާ@�t�Τ��O Windows 10. 
	set str8=���ˬd�I���O�_�q�Z�C
	set str9=�����N��h�X...
	set str10=�ϥΪ� KMS �A�Ⱦ��O:
	set str11=�Y�E�����\�A�I���ܬ���C�Y���ѡA�I�����Ŧ�C
	set str12=���b�˴��I���A�еy��...
	set str13=�Ф��\�H�޲z�������B��...
)
chcp | find "437" > nul && (
	set bar=======================
	set str3=Trying KMS server: 
	set str4=The defined key is not found: 
	set str5=Ha-ha, Product activation successful.
	set str6=Sorry, Activation failure. 
	set str7=The current OS is NOT Windows 10.
	set str8=Please check if the network is open.
	set str9=Press any key to exit...
	set str10=The KMS server is:
	set str12=Checking the network, Please wait a moment...
	set str13=Please allow to Run As Administrator.
)
if not defined str3 (
	echo.&echo Unsupported system language.
	echo.&echo This BAT just support Chinese[CN, HK, TW] and English.
	echo.&echo %str9% &pause>nul)
goto :EOF

:failure
cls&color ce
echo.&echo %bar%%bar%%bar%
echo %str6% &echo.&echo %str8%
echo %bar%%bar%%bar%&echo.
echo %str9% & pause>nul
exit

:successful
cls&color 2e
echo.&echo %bar%%bar%%bar%
echo %str5% &echo.&echo %str10% %1
echo %bar%%bar%%bar%&echo.
echo %str9% & pause>nul
exit

:netchk
echo %str12%
ping -n 1 www.qq.com | find /i "TTL" > nul && (cls & goto :EOF)
ping -n 1 www.baidu.com | find /i "TTL" > nul && (cls & goto :EOF)
echo.&echo %str8% & echo. & echo %str9% & pause>nul
exit

:verchk
ver | find " 10.0." >nul 2>nul && (
  reg QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "ProductName" | find /i "Windows 10 " >nul 2>nul && (
      goto :EOF) || (echo.&echo %str7% &echo.&echo %str9% &pause >nul 2>nul &exit)
  ) || (echo.&echo %str7% &echo.&echo %str9% &pause >nul 2>nul &exit)
goto :EOF
