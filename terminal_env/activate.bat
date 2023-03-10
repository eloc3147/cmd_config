@echo off

rem Enable Unicode
chcp 65001>nul

call %~dp0\color.bat

cls

echo %C_WHITE%K-Term β%C_RESET%

call %~dp0\main.bat
echo - %C_WHITE%Loaded: %C_CYAN%Main Config βοΈ%C_RESET%

if exist %~dp0\locations.bat (
    call %~dp0\locations.bat
    echo - %C_WHITE%Loaded: %C_CYAN%Path Shortcuts πΊοΈ%C_RESET%
)

if exist %~dp0\work.bat (
    call %~dp0\work.bat
    echo - %C_WHITE%Loaded: %C_CYAN%Work Commands βοΈ%C_RESET%
)

If "%1"=="1" (
    if defined ANACONDA_PATH (
        call %ANACONDA_PATH%\Scripts\activate.bat %ANACONDA_PATH%
        echo - %C_WHITE%Loaded: %C_GREEN%Anaconda π%C_RESET%
    ) else (
        echo - %C_RED%Anaconda could not be found%C_RESET%
        echo - %C_YELLOW%Set the ANACONDA_PATH environment variable%C_RESET%
    )
)
