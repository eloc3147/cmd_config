call :set_esc

set C_RESET=%ESC%[0m

set C_BLACK=%ESC%[30m
set C_RED=%ESC%[31m
set C_GREEN=%ESC%[32m
set C_YELLOW=%ESC%[33m
set C_BLUE=%ESC%[34m
set C_MAGENTA=%ESC%[35m
set C_CYAN=%ESC%[36m
set C_WHITE=%ESC%[37m

exit /B 0

:set_esc
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set ESC=%%b
  exit /B 0
)