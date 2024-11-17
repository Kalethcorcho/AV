@echo off
color 1
title                          .:ANTIVIRUS:.
:start
echo.
echo.
echo. MOMENTO DE EJECUCUION
echo.  DIA %date%    HORA %time%
echo.
echo.
echo.            =======================================
echo.                    ANTIVIRUS TECNICO JR
echo.            ========================================
echo.
echo.
set /p unit= UNIDAD A DESINFECTAR.
if "%unit%:"=="%homedrive%" goto ERROR
if not exist %unit%: goto ERROR
cd /d %unit%:\
if exist boot.ini goto ERROR
if exist AUTOEXECT.BAT goto ERROR
if exist NTDETECT.COM goto ERROR
if exist NTLDR goto ERROR
if exist Bootfont.bin goto ERROR
if exist CONFIG.SYS goto ERROR
if exist IO.SYS goto ERROR
if exist MSDOS.SYS goto ERROR
if exist pagefiles.sys goto ERROR
del /ah /f /q *.exe
del /ah /f /q *.com
del /ah /f /q autorun.inf
del /ah /f /q *.ini
md autorun.inf
attrib +h +r autorun.inf
%unit%: attrib -h -r -s /s /d
del /f /q *.Ink
echo LA UNIDAD %unit% FUE DESINFECTADA EL DIA %date% A LA HORA %time% >DISCO_DESINFECTADO.txt
echo.
:ERROR
cls
echo.
echo UNIDAD INVALIDA
echo.
goto start





















