@echo off
setlocal enabledelayedexpansion

:: Obtenha a data atual e formate-a como dd-mm-aaaa
for /f "tokens=1-5 delims=/:, " %%d in ("%date% %time%") do set "currentdate=%%d-%%e-%%f"

:: Crie a pasta principal com a data atual
mkdir %currentdate%
cd %currentdate%

:: Lista de pastas para criar
set "folders=Local_do_Rack_1 Local_do_Rack_2"

:: Loop através da lista de pastas
for %%G in (%folders%) do (
    mkdir %%G
    echo 1. Situação geral do rack, funcionando corretamente; >> %%G\observacoes.txt
)

endlocal

