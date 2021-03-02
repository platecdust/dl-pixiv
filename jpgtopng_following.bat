cd %~dp0
cd "pixiv\following"

for %%f in (*.jpg) do (
    if not exist "..\..\processed\%%~nf.png" (
        magick convert "%%f" -quality 96 "%%~nf.png"
        move /y "%%~nf.png" ..\..\processed\
    )
)

exit
