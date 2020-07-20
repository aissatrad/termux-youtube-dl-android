#pkg update ;
#pkg upgrade -y;
#pkg install python -y;
#pip install youtube-dl;
termux-setup-storage;
mkdir /data/data/com.termux/files/home/storage/shared/Youtube;
mkdir ~/.config
touch ~/.config/youtube-dl;
echo '--no-mtime -o /data/data/com.termux/files/home/storage/shared/Youtube/%(title)s.%(ext)s -f "best[height<=720]"' > ~/.config/youtube-dl;
mkdir ~/bin;
#cd ~/bin
#nano termux-url-opener
echo 'termux-url-opener' > ~/bin/termux-url-opener;
