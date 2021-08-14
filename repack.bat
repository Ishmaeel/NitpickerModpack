set NAME=NitpickerModpack
set CONTENTS=fomod README.md THANKS.md BoltManager CharacterNameSaves CrashesToRiches FastTransfer KeepBolts KnifePistol LogFixDefaultControls NoInventoryCloseDisassembly QuickLoadLast ReadWatch SkinningWithSpace StatsDisplay TotalWeights UnloadAll

set PATH=C:\Program Files\7-Zip\;%PATH%

del "%NAME%*.zip"
7z.exe a -tzip "%NAME%.zip" %CONTENTS%
7z.exe rn "%NAME%.zip" "README.md" "NPMP_README.txt"
7z.exe rn "%NAME%.zip" "THANKS.md" "NPMP_THANKS.txt"

Today! "%NAME%.zip"
if errorlevel 1 goto fail

goto end

:fail
pause

:end
