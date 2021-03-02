for /f "usebackq tokens=*" %%A in (`dir /b "%~dp0\pixiv\bookmarks"`) do set dirNameBm=%%A
cd %~dp0
cd "pixiv\bookmarks\%dirNameBm%"

for %%f in (*.jpg) do (
    if not exist "..\..\..\processed\%%~nf.png" (
        magick convert "%%f" -quality 96 "%%~nf.png"
        move /y "%%~nf.png" ..\..\..\processed\
    )
)

exit
