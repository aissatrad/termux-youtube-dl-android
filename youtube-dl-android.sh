#apt update && apt upgrade
#apt install nano 
pkg install python;
echo "Python installed";
pip install youtube-dl;
echo "youtube-dl installed";
termux-setup-storage;
echo "setup-storage OK";
mkdir /data/data/com.termux/files/home/storage/shared/Youtube;
mkdir -p ~/.config/youtube-dl;
#nano  ~/.config/youtube-dl
#code
echo '--no-mtime -o /data/data/com.termux/files/home/storage/shared/Youtube/%(title)s.%(ext)s -f "best[height<=720]"' > ~/.config/youtube-dl;
mkdir ~/bin;
#cd ~/bin
#nano termux-url-opener
echo 'termux-url-opener' > ~/bin/termux-url-opener;
