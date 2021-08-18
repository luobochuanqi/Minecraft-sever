@ECHO OFF
@set a=0
title Minecraft_1.12.2-Mohist服务端  重启次数[%a%]
SET BINDIR=%~dp0
:_MENU
CLS
set tm1=%time:~0,2%
set tm2=%time:~3,2%
set tm3=%time:~6,2%
echo  现在时间：%date% %tm1%点%TM2%分
@echo. -----------------------------------------------------------------
@echo.                         Minecraft服务端                                                                   
@echo.                    服务器即将开启,请等待……  
@echo.
@echo.           注意:关闭服务器前请在后台输入stop保存玩家数据
@echo.                      否则可能会出现回档情况
@echo.                
@echo. -----------------------------------------------------------------
@echo.
@echo.按下任意键来启动服务器！
@echo.
pause
cls
:start
@echo. 现在时间：%date% %tm1%点%TM2%分
@echo. ----------------------------------------------------------------- 
@echo. 
@echo. 
@echo.                   服务器正在启动中,请稍等……
@echo. 
@echo.
@echo. -----------------------------------------------------------------
java -Xms2048M -Xmx2048M -XX:+UseG1GC -XX:+AggressiveOpts -XX:+UseCompressedOops -jar Mohist-bb39330-server.jar
@echo. ----------------------------------------------------------------- 
@echo.                Minecraft --- 服务端已关闭，即将重启                                
@echo. -----------------------------------------------------------------
choice /t 5 /d y /n >nul
set /a a=%a%+1
goto start