pkg update ;
wait pkg upgrade -y;
wait pkg install python -y;
wait pip install youtube-dl;
wait termux-setup-storage;
wait mkdir /data/data/com.termux/files/home/storage/shared/Youtube;
wait mkdir ~/.config
wait touch ~/.config/youtube-dl;
wait echo '--no-mtime -o /data/data/com.termux/files/home/storage/shared/Youtube/%(title)s.%(ext)s -f "best[height<=720]"' > ~/.config/youtube-dl;
wait mkdir ~/bin;
#cd ~/bin
#nano termux-url-opener
wait echo 'termux-url-opener' > ~/bin/termux-url-opener;
