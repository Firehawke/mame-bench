@echo off
cls

rem Clear everything!
rem These are done because there's no guarantee CFG/NVRAM will work correctly between MAME revisions.

rem -------- Clear existing NVRAM from benchmark pass
rd /S /Q nvram-bench
mkdir nvram-bench
rem -------- Clear existing CFG from benchmark pass
rd /S /Q cfg-bench
mkdir cfg-bench

rem -------- Generate needed NVRAM from INP files.
cls
mame.exe crusnusa -cfg_directory cfg-bench -nvram_directory nvram-bench -input_directory inp-bench -fs 10 -noplugins -w -nothrottle -pb crusnusa-nvram -exit_after_playback
mame.exe gradius4 -cfg_directory cfg-bench -nvram_directory nvram-bench -input_directory inp-bench -fs 10 -noplugins -w -nothrottle -pb gradius4-nvram -exit_after_playback
mame.exe robotron -cfg_directory cfg-bench -nvram_directory nvram-bench -input_directory inp-bench -fs 10 -noplugins -w -nothrottle -pb robotron-nvram -exit_after_playback
mame.exe scud -cfg_directory cfg-bench -nvram_directory nvram-bench -input_directory inp-bench -fs 10 -noplugins -w -nothrottle -pb scud-nvram -exit_after_playback
mame.exe sfiii -cfg_directory cfg-bench -nvram_directory nvram-bench -input_directory inp-bench -fs 10 -noplugins -w -nothrottle -pb sfiii-nvram -exit_after_playback
mame.exe slrasslt -cfg_directory cfg-bench -nvram_directory nvram-bench -input_directory inp-bench -fs 10 -noplugins -w -nothrottle -pb slrasslt-nvram -exit_after_playback
mame.exe tekken3 -cfg_directory cfg-bench -nvram_directory nvram-bench -input_directory inp-bench -fs 10 -noplugins -w -nothrottle -pb tekken3-nvram -exit_after_playback

rem -------- Run the actual benchmarks.
rem Set: blitz
cls
echo [1/36] - NFL Blitz (blitz)
echo NFL Blitz,blitz > output.csv
<nul set /p temp=1,>> output.csv
mame.exe blitz -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=2,>> output.csv
mame.exe blitz -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=3,>> output.csv
mame.exe blitz -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
rem Set: crusnusa
cls
echo [2/36] - Cruis'n USA (crusnusa)
echo Crus'n USA,crusnusa >> output.csv
<nul set /p temp=1,>> output.csv
mame.exe crusnusa -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=2,>> output.csv
mame.exe crusnusa -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=3,>> output.csv
mame.exe crusnusa -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
rem Set: cubeqst
cls
echo [3/36] - Cube Quest (cubeqst)
echo Cube Quest,cubeqst >> output.csv
<nul set /p temp=1,>> output.csv
mame.exe cubeqst -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=2,>> output.csv
mame.exe cubeqst -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=3,>> output.csv
mame.exe cubeqst -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
rem Set: cyvern
cls
echo [4/36] - Cyvern (cyvern)
echo Cyvern,cyvern >> output.csv
<nul set /p temp=1,>> output.csv
mame.exe cyvern -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=2,>> output.csv
mame.exe cyvern -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=3,>> output.csv
mame.exe cyvern -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
rem Set: dkong
cls
echo [5/36] - Donkey Kong (dkong)
echo Donkey Kong,dkong >> output.csv
<nul set /p temp=1,>> output.csv
mame.exe dkong -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=2,>> output.csv
mame.exe dkong -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=3,>> output.csv
mame.exe dkong -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
rem Set: drivedge
cls
echo [6/36] - Driver's Edge (drivedge)
echo Driver's Edge,drivedge >> output.csv
<nul set /p temp=1,>> output.csv
mame.exe drivedge -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=2,>> output.csv
mame.exe drivedge -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=3,>> output.csv
mame.exe drivedge -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
rem Set: gauntleg
cls
echo [7/36] - Gauntlet Legends (gauntleg)
echo Gauntlet Legends,gauntleg >> output.csv
<nul set /p temp=1,>> output.csv
mame.exe gauntleg -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=2,>> output.csv
mame.exe gauntleg -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=3,>> output.csv
mame.exe gauntleg -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
rem Set: gnbarich
cls
echo [8/36] - Gunbarich (gnbarich)
echo Gunbarich,gnbarich >> output.csv
<nul set /p temp=1,>> output.csv
mame.exe gnbarich -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=2,>> output.csv
mame.exe gnbarich -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=3,>> output.csv
mame.exe gnbarich -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
rem Set: gradius4
cls
echo [9/36] - Gradius IV: Fukkatsu (gradius4)
echo Gradius IV: Fukkatsu,gradius4 >> output.csv
<nul set /p temp=1,>> output.csv
mame.exe gradius4 -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=2,>> output.csv
mame.exe gradius4 -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=3,>> output.csv
mame.exe gradius4 -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
rem Set: gtfore06
cls
echo [10/36] - Golden Tee Fore! 2006 (gtfore06)
echo Golden Tee Fore! 2006,gtfore06 >> output.csv
<nul set /p temp=1,>> output.csv
mame.exe gtfore06 -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=2,>> output.csv
mame.exe gtfore06 -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=3,>> output.csv
mame.exe gtfore06 -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
rem Set: harddriv
cls
echo [11/36] - Hard Drivin' (harddriv)
echo Hard Drivin',harddriv >> output.csv
<nul set /p temp=1,>> output.csv
mame.exe harddriv -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=2,>> output.csv
mame.exe harddriv -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=3,>> output.csv
mame.exe harddriv -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
rem Set: kidniki
cls
echo [12/36] - Kid Niki (kidniki)
echo Kid Niki - Radical Ninja,kidniki >> output.csv
<nul set /p temp=1,>> output.csv
mame.exe kidniki -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=2,>> output.csv
mame.exe kidniki -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=3,>> output.csv
mame.exe kidniki -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
rem Set: kof98
cls
echo [13/36] - King of Fighters 98 (kof98)
echo King of Fighters 98,kof98 >> output.csv
<nul set /p temp=1,>> output.csv
mame.exe kof98 -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=2,>> output.csv
mame.exe kof98 -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=3,>> output.csv
mame.exe kof98 -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
rem Set: mario
cls
echo [14/36] - Mario Bros. (mario)
echo Mario Bros.,mario >> output.csv
<nul set /p temp=1,>> output.csv
mame.exe mario -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=2,>> output.csv
mame.exe mario -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=3,>> output.csv
mame.exe mario -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
rem Set: mk4
cls
echo [15/36] - Mortal Kombat 4 (mk4)
echo Mortal Kombat 4,mk4 >> output.csv
<nul set /p temp=1,>> output.csv
mame.exe mk4 -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=2,>> output.csv
mame.exe mk4 -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=3,>> output.csv
mame.exe mk4 -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
rem Set: pacman
cls
echo [16/36] - Pac-Man (pacman)
echo Pac-Man,pacman >> output.csv
<nul set /p temp=1,>> output.csv
mame.exe pacman -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=2,>> output.csv
mame.exe pacman -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=3,>> output.csv
mame.exe pacman -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
rem Set: pinkswts
cls
echo [17/36] - Pink Sweets (pinkswts)
echo Pink Sweets,pinkswts >> output.csv
<nul set /p temp=1,>> output.csv
mame.exe pinkswts -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=2,>> output.csv
mame.exe pinkswts -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=3,>> output.csv
mame.exe pinkswts -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
rem Set: pongf
cls
echo [18/36] - Pong [TTL] (pongf)
echo Pong (Rev E) [TTL],pongf >> output.csv
<nul set /p temp=1,>> output.csv
mame.exe pongf -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=2,>> output.csv
mame.exe pongf -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=3,>> output.csv
mame.exe pongf -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
rem Set: propcycl
cls
echo [19/36] - Prop Cycle (propcycl)
echo Prop Cycle,propcycl >> output.csv
<nul set /p temp=1,>> output.csv
mame.exe propcycl -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=2,>> output.csv
mame.exe propcycl -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=3,>> output.csv
mame.exe propcycl -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
rem Set: radikalb
cls
echo [20/36] - Radikal Bikers (radikalb)
echo Radikal Bikers,radikalb >> output.csv
<nul set /p temp=1,>> output.csv
mame.exe radikalb -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=2,>> output.csv
mame.exe radikalb -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=3,>> output.csv
mame.exe radikalb -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
rem Set: roadblst
cls
echo [21/36] - Roadblasters (roadblst)
echo Roadblasters,roadblst >> output.csv
<nul set /p temp=1,>> output.csv
mame.exe roadblst -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=2,>> output.csv
mame.exe roadblst -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=3,>> output.csv
mame.exe roadblst -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
rem Set: robotron
cls
echo [22/36] - Robotron: 2084 (robotron)
echo Robotron: 2084,robotron >> output.csv
<nul set /p temp=1,>> output.csv
mame.exe robotron -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=2,>> output.csv
mame.exe robotron -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=3,>> output.csv
mame.exe robotron -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
rem Set: rvschool
cls
echo [23/36] - Rival Schools (rvschool)
echo Rival Schools,rvschool >> output.csv
<nul set /p temp=1,>> output.csv
mame.exe rvschool -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=2,>> output.csv
mame.exe rvschool -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=3,>> output.csv
mame.exe rvschool -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
rem Set: scud
cls
echo [24/36] - Scud Race Twin/DX (scud)
echo Scud Race Twin/DX,scud >> output.csv
<nul set /p temp=1,>> output.csv
mame.exe scud -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=2,>> output.csv
mame.exe scud -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=3,>> output.csv
mame.exe scud -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
rem Set: sf2
cls
echo [25/36] - Street Fighter II: The World Warrior (sf2)
echo Street Fighter II: The World Warrior,sf2 >> output.csv
<nul set /p temp=1,>> output.csv
mame.exe sf2 -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=2,>> output.csv
mame.exe sf2 -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=3,>> output.csv
mame.exe sf2 -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
rem Set: sfa2
cls
echo [26/36] - Street Fighter Alpha 2 (sfa2)
echo Street Fighter Alpha 2,sfa2 >> output.csv
<nul set /p temp=1,>> output.csv
mame.exe sfa2 -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=2,>> output.csv
mame.exe sfa2 -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=3,>> output.csv
mame.exe sfa2 -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
rem Set: sfiii
cls
echo [27/36] - Street Fighter III (sfiii)
echo Street Fighter III,sfiii >> output.csv
<nul set /p temp=1,>> output.csv
mame.exe sfiii3 -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=2,>> output.csv
mame.exe sfiii3 -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=3,>> output.csv
mame.exe sfiii3 -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
rem Set: slrasslt
cls
echo [28/36] - Solar Assault (slrasslt)
echo Solar Assault,slrasslt >> output.csv
<nul set /p temp=1,>> output.csv
mame.exe slrasslt -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=2,>> output.csv
mame.exe slrasslt -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=3,>> output.csv
mame.exe slrasslt -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
rem Set: spacfury
cls
echo [29/36] - Space Fury (spacfury)
echo Space Fury,spacfury >> output.csv
<nul set /p temp=1,>> output.csv
mame.exe spacfury -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=2,>> output.csv
mame.exe spacfury -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=3,>> output.csv
mame.exe spacfury -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
rem Set: starblad
cls
echo [30/36] - Starblade (starblad)
echo Starblade,starblad >> output.csv
<nul set /p temp=1,>> output.csv
mame.exe starblad -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=2,>> output.csv
mame.exe starblad -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=3,>> output.csv
mame.exe starblad -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
rem Set: starsldr
cls
echo [31/36] - Star Soldier: Vanishing Earth (starsldr)
echo Star Soldier: Vanishing Earth,starsldr >> output.csv
<nul set /p temp=1,>> output.csv
mame.exe starsldr -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=2,>> output.csv
mame.exe starsldr -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=3,>> output.csv
mame.exe starsldr -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
rem Set: sushibar
cls
echo [32/36] - Sushi Bar (sushibar)
echo Sushi Bar,sushibar >> output.csv
<nul set /p temp=1,>> output.csv
mame.exe sushibar -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=2,>> output.csv
mame.exe sushibar -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=3,>> output.csv
mame.exe sushibar -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
rem Set: tekken
cls
echo [33/36] - Tekken (tekken)
echo Tekken,tekken >> output.csv
<nul set /p temp=1,>> output.csv
mame.exe tekken -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=2,>> output.csv
mame.exe tekken -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=3,>> output.csv
mame.exe tekken -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
rem Set: tekken3
cls
echo [34/36] - Tekken 3 (tekken3)
echo Tekken 3,tekken3 >> output.csv
<nul set /p temp=1,>> output.csv
mame.exe tekken3 -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=2,>> output.csv
mame.exe tekken3 -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=3,>> output.csv
mame.exe tekken3 -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
rem Set: vf2
cls
echo [35/36] - Virtua Fighter 2 (vf2)
echo Virtua Fighter 2,vf2 >> output.csv
<nul set /p temp=1,>> output.csv
mame.exe vf2 -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=2,>> output.csv
mame.exe vf2 -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=3,>> output.csv
mame.exe vf2 -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
rem Set: vfkids
cls
echo [36/36] - Virtua Fighter Kids (vfkids)
echo Virtua Fighter Kids,vfkids >> output.csv
<nul set /p temp=1,>> output.csv
mame.exe vfkids -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=2,>> output.csv
mame.exe vfkids -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
<nul set /p temp=3,>> output.csv
mame.exe vfkids -cfg_directory cfg-bench -nvram_directory nvram-bench -noplugins -bench 90 >> output.csv
cls
echo Benchmark completed. See output.csv for results.

