#get
#date=$(date +"%Y-%m-%d_%H%M")
#photo_file="/home/pi/photoFile/${date}.png"

#sudo raspistill -t 6000 -o /home/pi/photoFile/line_photo.png
#sudo raspistill -t 6000 -o /home/pi/photoFile/line_photo.png
photo_file="/home/pi/MonitorCamera/photoFile/nightPhoto.png"

#photo_file="/home/pi/photoFile/line_photo.png"
token="TyWpyWgtddhQuNBOT261HRkRJ1iHzQSXbrUEyw2qcpE"
curl -X POST -H "Authorization: Bearer ${token}" -F "message = 現在の知章です" -F "imageFile=@${photo_file}" https://notify-api.line.me/api/notify
