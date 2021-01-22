for f in ./Playlist/*.mp3;do
    echo "file '${f}'" >> 'playlist.txt'
done