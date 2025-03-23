# コンソールで入力された動画のURLを代入
$VideoURL = Read-Host -Prompt "VideoURL"

# yt-dlp アップデート
yt-dlp -U
# ビデオ形式が MP4 でオーディオ形式が M4A の中で最高品質の動画をダウンロードする yt-dlp コマンドを実行
yt-dlp -f "bv*[ext=mp4]+ba[ext=m4a]" --extractor-arg "youtube:player_client=default,android_vr" $VideoURL
