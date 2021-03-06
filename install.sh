apt-get install screen nano bzip2 mpg123 htop git
apt-get install autoconf automake build-essential libass-dev libfreetype6-dev libtheora-dev libtool libvorbis-dev pkg-config texinfo zlib1g-dev
apt-get install librtmp-dev libssl-dev libx264-dev libasound2-dev
apt-get install libomxil-bellagio-dev

wget http://ftp.us.debian.org/debian/pool/non-free/f/fdk-aac/libfdk-aac-dev_0.1.3+20140816-2_armhf.deb

wget http://ftp.us.debian.org/debian/pool/non-free/f/fdk-aac/libfdk-aac0_0.1.3+20140816-2_armhf.deb

dpkg -i libfdk-aac0_0.1.3+20140816-2_armhf.deb

dpkg -i libfdk-aac-dev_0.1.3+20140816-2_armhf.deb

# git clone https://git.ffmpeg.org/ffmpeg.git ffmpeg

# cd ffmpeg

# ./configure --enable-shared --enable-gpl --enable-nonfree --enable-pthreads --enable-postproc --enable-libtheora --enable-version3 --enable-libx264 --enable-libfdk-aac --disable-stripping --disable-encoder=libschroedinger --enable-librtmp --enable-openssl --enable-gnutls --enable-avfilter --enable-libfreetype --disable-decoder=amrnb --disable-vda --enable-fontconfig --disable-mips32r2 --disable-mipsdspr2 --disable-htmlpages --disable-podpages --disable-altivec --enable-libass --enable-omx --enable-omx-rpi

# make

# ./ffmpeg -v
# ~/ffmpeg/ffmpeg -v

# find . -name "*.so"

apt-get install ffmpeg

ffmpeg -v

find ~/Desktop/music -name "*.mp3" > ~/Desktop/playlist.txt

/usr/bin/mpg123 -Z --list ~/Desktop/playlist.txt

modprobe snd-aloop pcm_substreams=1

echo 'pcm.!default { type plug slave.pcm 'hw:Loopback,0,0" }' >> ~/.asoundrc
