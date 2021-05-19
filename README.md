# dl-pixiv
Pixivのフォロー新着とブックマークをダウンロード  
ファイルが冗長なのは簡単に同時実行させたかったからです。

## 機能
+ Pixivのフォロー新着とブックマークをダウンロード
+ jpgをpngに変換
+ うごイラをmp4とgifに変換

## 必要なもの
+ [Python](https://www.python.org/)
+ [7zip](https://sevenzip.osdn.jp/)
+ [ffmpeg](https://ffmpeg.org/)
+ [ImageMagick](https://imagemagick.org/index.php)  
  
ffmpeg、ImageMagickはパスを通す

## 使い方
[gallery-dl](https://github.com/mikf/gallery-dl)を導入  
`pip install -U gallery-dl`  
gallery-dlのパスを通す
  
`dlbookmark.bat`内の`gallery-dl https://www.pixiv.net/users/[userid]/bookmarks/artworks`の`[userid]`をダウンロードしたいユーザーのidに変更  
  
`dlpixiv.bat`を実行
