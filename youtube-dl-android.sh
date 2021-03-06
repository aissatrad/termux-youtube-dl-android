pkg update
pkg upgrade
command -v python >/dev/null 2>&1 && isPythonInstalled="10"
if [ "$isPythonInstalled" ]
then
echo "Python Exists!"
pip install youtube-dl
else
echo "Try to Install Python"
pkg install python
pip install youtube-dl
fi
termux-setup-storage
if [ -e "/data/data/com.termux/files/home/storage/shared/Youtube" ]
then
echo "Youtube Exists"
else
mkdir /data/data/com.termux/files/home/storage/shared/Youtube
fi
if [ -e "~/.config" ]
then
echo ".config Exists"
else
mkdir ~/.config
fi
if [ -e "~/.config/youtube-dl" ]
then
echo "~/.config/youtube-dl Exists"
else
mkdir ~/.config/youtube-dl
fi
#echo '--no-mtime -o /data/data/com.termux/files/home/storage/shared/Youtube/%(title)s.%(ext)s -f "best[height<=720]"' > ~/.config/youtube-dl/config
echo '--no-mtime -o /data/data/com.termux/files/home/storage/shared/Youtube/%(title)s.%(ext)s -f best' > ~/.config/youtube-dl/config
if [ -e "~/bin" ]
then
echo "~/bin Exists"
echo 'youtube-dl $1' > ~/bin/termux-url-opener
else
mkdir ~/bin
echo 'youtube-dl $1' > ~/bin/termux-url-opener
fi
