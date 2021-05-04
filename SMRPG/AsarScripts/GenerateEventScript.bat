@echo off
setlocal EnableDelayedExpansion

set PATH="../../Global"

asar.exe SMRPGEventScriptDis.asm SMRPG.sfc > EventScripts.asm

pause
exit