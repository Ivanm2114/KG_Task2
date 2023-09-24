ffmpeg -i input_video.mp4 -ss 30 -t 10 -c copy cropped.mp4

convert -background none -resize 50%% -depth 8 plate.svg plate.png

ffmpeg -i cropped.mp4 -i plate.png  -c:a copy -filter_complex [0][1]overlay=x=0:y=446:enable='between(t,1,9)' plated.mp4


ffmpeg -i plated.mp4  -c:a copy -vf "drawtext=fontfile=arial.ttf:text='Cool text!':fontcolor=black:fontsize=26:x=200:y=476:enable='between(t,2,9)'" rezult.mp4