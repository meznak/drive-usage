:: drivespace
:: Nate Plamondon
:: 2012 CC-BY-SA-3.0
::
:: Requires Sysinternals 'du' utility in the path
:: Outputs to csv files to be imported into a spreadsheet

SETLOCAL ENABLEDELAYEDEXPANSION

:: Change drive letters to match your environment
:: You'll also need to change the connections in the .xlsx
for %%Z in (l e s u z) do (
set file="drive usage_%%Z.csv"
<nul (set /p z=%date%) >> !file!
<nul (set /p z=,) >> !file!
for /f "tokens=1,2,3,4" %%a in ('du -q %%Z:') do set s=%%d
echo !s:,=! >> !file!
)

set file=
set s=
set z=

ENDLOCAL
