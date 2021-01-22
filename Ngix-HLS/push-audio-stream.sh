ffmpeg -f concat -safe 0 -stream_loop -1 \
-i "playlist.txt" \
-c copy \
-f mpegts \
rtmp://server/show/stream

ffmpeg -re \
-i "playlist.txt" \
-vcodec libx264 \
-vprofile baseline \
-g 30 \
-acodec aac \
-strict -2 \
-f flv \
rtmp://server/show/stream