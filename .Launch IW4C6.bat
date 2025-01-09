@title IW4C6 Debrief
@echo off
setlocal enabledelayedexpansion
echo Renaming patch_mp.ff so the game doesn't use it.
pushd zone\english
rename patch_mp.ff pmp.renamed
popd
echo We're all good to go now. You can run the revert batch file if you want to play some other thing that requires patch_mp.ff
echo You should probably use a controller, otherwise the menus will be wonky as shit.
echo If you do decide to use keyboard and mouse, press Enter to select an option in menus.
pause
echo [DEBUG] Installing 72 trojan horses on this PC...
rem its going to be comical as fuck if people see this and freak out over it
echo Starting IW4C6...
pissandshit.exe +seta fs_game "mods/c6bots" +exec c6.cfg +seta r_mode "1280x720" +seta r_customMode "1024x600" +seta vid_xpos 0 +seta vid_ypos 0 +seta r_fullscreen 1 +seta r_noborder 0 +seta safeArea_adjusted_horizontal 0.85 +seta safeArea_adjusted_vertical 0.85 +seta cg_scoreboardPingText 0 +seta cg_overheadNamesFont 2 +seta cg_overheadNamesSize 0.6 +seta cg_overheadRankSize 0.5
echo Thanks! While you were playing I made sure to install a couple extras.
rem also i really hope you didnt look in here to be sure that i didnt REALLY install 72 fucking trojan horses... thats ridiculous
pause