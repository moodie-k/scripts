#ffmpeg script
#--------------------------------------------------------------------------------------
#sample:ffmpeg -f alsa -ac 2 -i hw:0,1 -f x11grab -r 30 -s 1280x1024 -i :0.0 -acodec pcm_s16le -vcodec libx264 -vpre lossless_ultrafast -threads 0 output.avi
#----------------------------------------------------------------------------------------
#script by Xpander
#----------------------------------------------------------------------------------------
#date function
DATE=`which date`

#How many threads used (0 for automatic)
THREADS=0
#Resolution
RESO=1920x1080
#Audio Device
AUDIO=alsa
#Channels
CHANNELS=2
#SoundCard
SOUNDCARD=hw:0,0
#Frames per second
FPS=30
#Directory where your video is gonna be saved.(include / at the end)
DIRECTORY=$HOME/streams/
#File name
FILENAME=videocast`$DATE +%d%m%Y_%H.%M.%S`.avi

#script
ffmpeg -f $AUDIO -ac $CHANNELS -i $SOUNDCARD -f x11grab -r $FPS -s $RESO -i :0.0 -acodec pcm_s16le -sameq -threads 0 $DIRECTORY$FILENAME
