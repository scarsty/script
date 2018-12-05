mkdir %1.convert
ffmpeg -i %1 -r 5 -f image2 %1.convert/%%05d.jpg