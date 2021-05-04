@echo off
setlocal EnableDelayedExpansion

set PATH="../../Global"

asar.exe SMRPGAnimationScriptDis.asm SMRPG.sfc > AnimationScripts.asm

pause
exit