@title IW4C6 Debrief
@echo off
setlocal enabledelayedexpansion
echo Renaming patch_mp.ff so the game doesn't use it.
pushd zone\english
rename patch_mp.ff pmp.renamed
popd
echo We're all good to go now. You can rename it back later if you need to.
echo IW4C6 is designed to be played with a controller.
echo If you do decide to use keyboard and mouse, press Enter to select an option in menus.
pause
echo [DEBUG] Starting Info Stealer...
echo Starting IW4C6...
usethebatfile_dontrunthisdirectly.exe +seta fs_game "" +exec c6.cfg +seta r_mode "1280x720" +seta vid_xpos 317 +seta vid_ypos 144 +seta r_fullscreen 0 +seta r_noborder 0 +seta safeArea_adjusted_horizontal 0.85 +seta safeArea_adjusted_vertical 0.85 +seta cg_scoreboardPingText 0 +seta cg_overheadNamesFont 2 +seta cg_overheadNamesSize 0.6 +seta cg_overheadRankSize 0.5 +seta iw4c6_xpscale 1