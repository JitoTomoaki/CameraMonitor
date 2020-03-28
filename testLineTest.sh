date=$(date +"%Y-%m-%d_%H%M")
photo_file="/home/pi//MonitorCamera/photoFile/${date}.png"

sudo raspistill -t 6000 -o ${photo_file} 
token="SI5IMEnVwWY4sLgIVd7soS8TphMhSZFcClpmyBe7Foo"
curl -X POST -H "Authorization: Bearer ${token}" -F "message = 現在の知章です" -F "imageFile=@${photo_file}" https://notify-api.line.me/api/notify

