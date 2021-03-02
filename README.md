# dl-pixiv
Pixivのフォロー新着とブックマークをダウンロード  
ファイルが冗長なのは簡単に同時実行させたかったからです。

## 使い方
[gallery-dl](https://github.com/mikf/gallery-dl)を導入  
`pip install -U gallery-dl`  
  
`dlbookmark.bat`内の`gallery-dl https://www.pixiv.net/users/[userid]/bookmarks/artworks`の`[userid]`をダウンロードしたいユーザーのidに変更  
  
`dlpixiv.bat`を実行