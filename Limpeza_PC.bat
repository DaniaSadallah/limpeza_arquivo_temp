 @echo off

REM ===============================
REM CONFIGURACAO INICIAL DO SCRIPT
REM ===============================
color 0A
title Otimizador Basico Windows

REM ===============================
REM MENU PRINCIPAL
REM ===============================
:menu
cls
echo ----------------------------------------
echo      OTIMIZADOR WINDOWS
echo ----------------------------------------
echo.
echo 1 - Limpar arquivos temporarios
echo 2 - Aplicar otimizacoes
echo 3 - Completo (limpeza + otimizacao)
echo 4 - Sair
echo.

REM CAPTURA A OPCAO DO USUARIO
set /p opcao=Escolha uma opcao:

REM DIRECIONAMENTO BASEADO NA ESCOLHA
if "%opcao%"=="1" goto limpeza
if "%opcao%"=="2" goto otimizacao
if "%opcao%"=="3" goto completo
if "%opcao%"=="4" exit

REM CASO USUARIO DIGITE ALGO INVALIDO
echo Opcao invalida!
pause
goto menu

REM ===============================
REM BLOCO DE LIMPEZA
REM ===============================
:limpeza
cls
echo Limpando arquivos temporarios...

REM LIMPAR PASTA TEMP DO USUARIO
del /s /f /q "%temp%\*" >nul 2>&1

REM LIMPAR PASTA TEMP DO WINDOWS
del /s /f /q "C:\Windows\Temp\*" >nul 2>&1

REM LIMPAR CACHE DO WINDOWS UPDATE
echo Limpando cache do Windows Update...
net stop wuauserv >nul 2>&1
del /s /q "C:\Windows\SoftwareDistribution\Download\*" >nul 2>&1
net start wuauserv >nul 2>&1

REM FINALIZACAO DA LIMPEZA
echo Limpeza concluida!
pause
goto menu

REM ===============================
REM BLOCO DE OTIMIZACAO
REM ===============================
:otimizacao
cls
echo Aplicando otimizacoes...

REM ATIVAR PLANO DE ENERGIA ALTO DESEMPENHO
echo Ativando alto desempenho...
powercfg -setactive SCHEME_MIN

REM AJUSTAR EFEITOS VISUAIS PARA MELHOR PERFORMANCE
echo Ajustando efeitos visuais...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" ^
/v VisualFXSetting /t REG_DWORD /d 2 /f >nul

REM FINALIZACAO DA OTIMIZACAO
echo Otimizacao concluida!
pause
goto menu

REM ===============================
REM BLOCO COMPLETO (LIMPEZA + OTIMIZACAO)
REM ===============================
:completo
cls
echo Executando limpeza + otimizacao...

REM LIMPEZA DE ARQUIVOS TEMPORARIOS
del /s /f /q "%temp%\*" >nul 2>&1
del /s /f /q "C:\Windows\Temp\*" >nul 2>&1

REM LIMPAR CACHE DO WINDOWS UPDATE
echo Limpando cache do Windows Update...
net stop wuauserv >nul 2>&1
del /s /q "C:\Windows\SoftwareDistribution\Download\*" >nul 2>&1
net start wuauserv >nul 2>&1

REM ATIVAR ALTO DESEMPENHO
powercfg -setactive SCHEME_MIN

REM AJUSTE VISUAL PARA PERFORMANCE
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" ^
/v VisualFXSetting /t REG_DWORD /d 2 /f >nul

REM FINALIZACAO DO PROCESSO COMPLETO
echo Processo completo finalizado!
pause
goto menu
