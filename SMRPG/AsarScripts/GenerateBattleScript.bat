@echo off
setlocal EnableDelayedExpansion

set PATH="../../Global"

asar.exe SMRPGBattleScriptDis.asm SMRPG.sfc > BattleScripts.asm

pause
exit