# コンソールで入力された動画のURLを代入
$VideoURL = Read-Host -Prompt "動画のURLを入力してください"

# ビデオ形式が MP4 でオーディオ形式が M4A の中で最高品質の動画をダウンロードする yt-dlp コマンドを実行
Start-Process "yt-dlp -f `"bv*[ext=mp4]+ba[ext=m4a]`" $VideoURL"
