for /r %%a in (.) do cd %%a && (for /f %%b in ('dir /b /l') do rename %%b %%b)
