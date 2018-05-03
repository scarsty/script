set indir=%1

for %%a in (%indir%\*.mov) do ffmpeg -i "%%a" "%%a.mp4"

for %%b in (%indir%\*.avi) do ffmpeg -i "%%b" "%%b.mp4"

for %%b in (%indir%\*.td) do ffmpeg -i "%%b" "%%b.mp4"