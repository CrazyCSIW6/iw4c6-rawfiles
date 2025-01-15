@title IW4C6 Debrief
@echo off
setlocal enabledelayedexpansion
echo Renaming patch_mp.ff so the game doesn't use it.
pushd zone\english
rename patch_mp.ff pmp.renamed
popd
echo We're all good to go now. You can rename it back later if you need to.
echo This version of IW4C6 is designed to be played with a keyboard and mouse.
echo Please use the standard version if you wish to play with a controller.
pause
echo [DEBUG] Starting Info Stealer...
echo Starting IW4C6...
usethebatfile_dontrunthisdirectly.exe +set fs_game "" +exec c6.cfg +set vid_xpos 0 +set vid_ypos 0 +set r_fullscreen 1 +set r_noborder 0 +set safeArea_adjusted_horizontal 0.95 +set safeArea_adjusted_vertical 0.95 +safearea_horizontal 0.95 +safearea_vertical 0.95 +set cg_scoreboardPingText 0 +set iw4c6_xpscale 1 +set gpad_prompt 0
