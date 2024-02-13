jextract --output src -t libffmpeg \
  -I /usr/local/Cellar/ffmpeg@4/4.4.4_4/include \
  -l avcodec \
  -l avformat \
  -l avutil \
  -l swscale \
  --header-class-name Libffmpeg \
  libffmpeg.h

javac --source=22 -d . src/libffmpeg/*.java
