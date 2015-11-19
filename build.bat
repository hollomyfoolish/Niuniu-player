set PLAYER_PATH=%cd%
set NW_PATH=.\tools\nwjs-with-music
set WINARA_PATH=.\tools\WinRAR

rm %PLAYER_PATH%\bin\*
"%WINARA_PATH%\WinRAR" a -r -ep1  %PLAYER_PATH%\niuniu-player.zip  %PLAYER_PATH%\src\**.*
mv niuniu-player.zip %NW_PATH%\
cd %NW_PATH%
copy /b nw.exe+niuniu-player.zip niuniu-player.exe
mv niuniu-player.exe %PLAYER_PATH%\bin
mv niuniu-player.zip %PLAYER_PATH%\bin
cp icudtl.dat %PLAYER_PATH%\bin\icudtl.dat
cp nw.pak %PLAYER_PATH%\bin\nw.pak
cp ffmpegsumo.dll %PLAYER_PATH%\bin\ffmpegsumo.dll
cd %PLAYER_PATH%