@ECHO OFF
@set a=0
title Minecraft_1.12.2-Mohist�����  ��������[%a%]
SET BINDIR=%~dp0
:_MENU
CLS
set tm1=%time:~0,2%
set tm2=%time:~3,2%
set tm3=%time:~6,2%
echo  ����ʱ�䣺%date% %tm1%��%TM2%��
@echo. -----------------------------------------------------------------
@echo.                         Minecraft�����                                                                   
@echo.                    ��������������,��ȴ�����  
@echo.
@echo.           ע��:�رշ�����ǰ���ں�̨����stop�����������
@echo.                      ������ܻ���ֻص����
@echo.                
@echo. -----------------------------------------------------------------
@echo.
@echo.�����������������������
@echo.
pause
cls
:start
@echo. ����ʱ�䣺%date% %tm1%��%TM2%��
@echo. ----------------------------------------------------------------- 
@echo. 
@echo. 
@echo.                   ����������������,���Եȡ���
@echo. 
@echo.
@echo. -----------------------------------------------------------------
java -Xms2048M -Xmx2048M -XX:+UseG1GC -XX:+AggressiveOpts -XX:+UseCompressedOops -jar Mohist-bb39330-server.jar
@echo. ----------------------------------------------------------------- 
@echo.                Minecraft --- ������ѹرգ���������                                
@echo. -----------------------------------------------------------------
choice /t 5 /d y /n >nul
set /a a=%a%+1
goto start