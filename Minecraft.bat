@echo off

title MINECRAFT

echo MINECRAFT 1.8.9
echo.

set MC_DIR=%CD%\mcdata

set GAME_DIR="%MC_DIR%"

set ASSETS_DIR="%MC_DIR%\assets"

set NATIVES_DIR="%MC_DIR%\natives"

set /p PLAYER_NAME=USERNAME:  

cd "%~dp0\mcdata"

start runtime\java64\bin\minecraft.exe -XX:+UseG1GC -XX:HeapDumpPath=MojangTricksIntelDriversForPerformance -Xmx4G -Djava.library.path=%NATIVES_DIR% -cp "%MC_DIR%\libraries\oshi-core.jar;%MC_DIR%\libraries\lwjgl.jar;%MC_DIR%\libraries\lwjgl-windows.jar;%MC_DIR%\libraries\lwjgl_util.jar;%MC_DIR%\libraries\commons-lang3.jar;%MC_DIR%\libraries\commons-compress.jar;%MC_DIR%\libraries\httpcore-4.3.2.jar;%MC_DIR%\libraries\optifine.jar;%MC_DIR%\libraries\launchwrapper.jar;%MC_DIR%\libraries\httpclient.jar;%MC_DIR%\libraries\log4j-core.jar;%MC_DIR%\libraries\log4j-api.jar;%MC_DIR%\libraries\commons-logging.jar;%MC_DIR%\libraries\jopt-simple.jar;%MC_DIR%\libraries\jutils.jar;%MC_DIR%\libraries\platform.jar;%MC_DIR%\libraries\jna.jar;%MC_DIR%\libraries\windows-plugin.jar;%MC_DIR%\libraries\jinput.jar;%MC_DIR%\libraries\commons-io.jar;%MC_DIR%\libraries\netty-all.jar;%MC_DIR%\libraries\gson.jar;%MC_DIR%\libraries\guava.jar;%MC_DIR%\libraries\libraryjavasound.jar;%MC_DIR%\libraries\soundsystem.jar;%MC_DIR%\libraries\codecjorbis.jar;%MC_DIR%\libraries\librarylwjglopenal.jar;%MC_DIR%\libraries\codecwav.jar;%MC_DIR%\libraries\authlib.jar;%MC_DIR%\libraries\icu4j-core-mojang.jar;%MC_DIR%\libraries\commons-codec.jar;%MC_DIR%\libraries\game.jar" net.minecraft.launchwrapper.Launch --username %PLAYER_NAME% --version 1.8.9 --accessToken 0 --userProperties {} --gameDir %GAME_DIR% --assetsDir %ASSETS_DIR% --assetIndex 1.8 --width 925 --height 530 --tweakClass optifine.OptiFineTweaker
