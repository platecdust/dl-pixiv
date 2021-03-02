set archiverPath="C:\Program Files\7-Zip\7z.exe"

for /f "usebackq tokens=*" %%A in (`dir /b "%~dp0\pixiv\bookmarks"`) do set dirNameBm=%%A
cd %~dp0
cd "pixiv\bookmarks\%dirNameBm%"

for %%f in (*.zip) do (
    if not exist "..\..\..\ugoira\%%~nf\" (
        %archiverPath% x -mmt=on "%%f" -o"..\..\..\ugoira\%%~nf"

        cd "..\..\..\ugoira\%%~nf"

        mogrify -format png -quality 96 *.jpg
        del *.jpg

        magick convert -layers optimize -delay 33.3 -loop 0 *.png "%%~nf_30f.gif"
        magick convert -layers optimize -delay 66.7 -loop 0 *.png "%%~nf_30f.gif"
        magick convert -layers optimize -delay 100 -loop 0 *.png "%%~nf_30f.gif"
        magick convert -layers optimize -delay 200 -loop 0 *.png "%%~nf_30f.gif"

        ffmpeg -y -r 30 -i %%06d.png -vcodec libx264 -pix_fmt yuv420p -vf *.png "scale=trunc(iw/2)*2:trunc(ih/2)*2" -crf 0 "%%~nf_30f.mp4"
        ffmpeg -y -r 15 -i %%06d.png -vcodec libx264 -pix_fmt yuv420p -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" -crf 0 "%%~nf_15f.mp4"
        ffmpeg -y -r 10 -i %%06d.png -vcodec libx264 -pix_fmt yuv420p -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" -crf 0 "%%~nf_10f.mp4"
        ffmpeg -y -r 5 -i %%06d.png -vcodec libx264 -pix_fmt yuv420p -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" -crf 0 "%%~nf_5f.mp4"
        
        cd "..\..\pixiv\bookmarks\8173183 platecdust"
    )
)

exit
