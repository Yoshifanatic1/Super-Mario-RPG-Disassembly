SNES ROM framework by Yoshifanatic
This is a framework built off of asar that manages SNES game disassemblies and homebrew. It was originally designed for Super Mario World, but as I disassembled more games, it needed to change and adapt to accomidate what these ROMs did.
Now, this framework is fairly capable of handling many different SNES ROMs. For questions and feedback, visit my Discord server at http://discord.gg/TUDwsCg. For contributions, visit my Github page at https://github.com/Yoshifanatic1?tab=repositories

In addition, this framework and all compatible disassemblies are public domain. You're free to edit, copy, etc. this framework and any disassemblies made with no strings attached. Credit is appreciated, but not required.

Table of Contents (use ctrl+F)
- Basic Usage
- Global Defines And Files
- Custom Folder
- Global Macros
- ROM Version Differences
- Supported ROMs
- Custom ROM Versions
- Standalone SMAS+W ROM Hacks
- MSU-1 Support
- Save File Generation
- Chip Firmware
- SuperFX Link Protocal
- Using the GAMEX Base ROM
- Making Your Own Disassembly
- Future Improvements
- FAQ
- Credits

===Basic Usage===
To assemble a ROM:
1. Open up the AsarScripts folder inside the main folder of the disassembly you want to work with. If there is no "ExtractAssets.bat" file, skip to step 5.
2. Download the ROM versions you want to assemble. You'll have to do a web search for them.
3. Place the ROM inside the AsarScripts folder of the disassembly you want to work with.
4. Double click ExtractAssets.bat and follow the instructions presented on the command line to extract the assets from the ROM.
5. Double click the Assemble_X.bat for the game you want to assemble.
6. Type in one of the valid ROM options, and press enter.
7. The ROM will then start assembling, displaying the status of various settings, how much stuff has been inserted into each bank, and more.
8. Once the game is assembled, press enter again to re-assemble the ROM. If you want to assemble a different ROM version, type a random letter, press enter, then type in the new ROM version.

Notes:
- The time it takes to assemble a ROM will highly depend on your computer specs, the size of the ROM, and how complicated the disassembly is. It could take anywhere from a couple seconds to a minute or two.
- Asar is a cross platform program, but some of the components are Windows only. You'll have to write your own script that replaces the Assemble_X.bat files if you use a different operating system.
- The asset extraction is necessary so it'll be safer to distribute these disassemblies by not including the copyrighted assets. I shouldn't have to do this for 25+ year old games, but greedy corporations like Disney are the ones who decided that their copyright monopoly needed to last for an utterly obscene number of years.
- If you have a headered ROM, you can remove the header by using a hex editor to delete the first 512 (decimal)/200 (hexadecimal) bytes. Headered ROMs typically have a .smc extension, while headerless ROMs have .sfc, although this isn't always the case.

===Global Defines And Files===
The settings in X_GlobalAssemblySettings() in the ROM Map files
- !Define_Global_ApplyAsarPatches		- Setting this to true will enable usage of Asar_Patches_X.asm inside the game's custom folder. If this is !FALSE, no patches linked to from within that file will be applied to the ROM
- !Define_Global_InsertRATSTags			- This setting affects whether the %RATSTagStart() and %RATSTagEnd() global macros function. RATS tags are a method of protecting ROM data from being overwritten, but they only make sense to use if you're applying patches to the assembled ROM rather than modifying the disassembly directly.
- !Define_Global_IgnoreCodeAlignments		- \ By default, all routine macros are inserted at a fixed ROM location defined inside the macro call, so that these routines will stay in place even if stuff placed before it is removed.
						  / This is intended for keeping compatibility between the assembled ROM and tools that work with it if this disassembly is used to make a base ROM. Setting this to false will cause all routine macros to at like their address is set to "NULLROM" and thus insert at the earliest possible address of their bank. Setting this will also disable the BeginROMMirroring() macro.
- !Define_Global_IgnoreOriginalFreespace	- By default, each disassembly fills up all the banks completely to match the original ROM, using %FREE_BYTES() and InsertGarbageData() macros to fill in the empty space. If you want to free up these areas without having to search for all the macros, just set this define to !TRUE.
- !Define_Global_CompatibleControllers		- This controls what controller defines your ROM can use, using the defines from Global_Definitions.asm. To support more than 1 controller type, you'll have to "or" the defines using a | between them.
- !Define_Global_DisableROMMirroring		- This affects whether the BeginROMMirroring() global macro functions. Setting this to !TRUE will disable all forced ROM mirroring and make all pointers affected by this macro point to the base address. Note that if a disassembly uses the relevant macros, setting the ROM size high enough will require setting this to !TRUE.
- !Define_Global_CartridgeHeaderVersion		- Controls which SNES header is used by the ROM (valid values are $00-$02). See the SNES_Header() global macro to see what settings each header uses.
- !Define_Global_FixIncorrectChecksumHack	- If !TRUE, asar will overwrite the checksum it inserted into the ROM and set it to the one in the original ROM. Note that this setting is ignored if the ROM has been edited.
- !Define_Global_ROMFrameworkX			- These three defines determine which version of my framework the ROM uses. If this doesn't match with the equivalent defines in Global_Definitions.asm, there may be some incompatibilities.
- !Define_Global_AsarChecksum			- Defines what checksum asar calculates for an unedited ROM. If !Define_Global_FixIncorrectChecksumHack is set to !TRUE, this is the value asar compares with the original checksum to determine if it needs to be corrected.
- !Define_Global_LicenseeName			- The name of the publisher that asar will display when assembling the ROM.
- !Define_Global_DeveloperName			- Same as !Define_Global_LicenseeName, except it's for the developer name.
- !Define_Global_ReleaseDate			- Displays the release date for a particular game version. If the release date is unknown, it should be set to "???".
- !Define_Global_BaseROMMD5Hash			- Contains the MD5 hash of the ROM used as a base for the disassembly, intended for verification purporses. Note that these hashes were done on headerless ROMs.

- !Define_Global_MakerCode			- Contains the two byte developer/publisher ID that distributed the ROM in ROMs with the $02 header.
- !Define_Global_GameCode			- Contains the 4 byte code for the game in ROMs with the $02 header.
- !Define_Global_ReservedSpace			- Useless space. Only modify if the cartridge has non-zero values here and it uses the $02 header.
- !Define_Global_ExpansionFlashSize		- How much flash RAM is stored on the cartridge. Probably meant for the satelliview games, but I'm not sure. Only applies if using the $02 header.
- !Define_Global_ExpansionRAMSize		- How much extra RAM is stored on the cartridge. Only used if using specific chips, like the SuperFX, and if using the $02 header.
- !Define_Global_IsSpecialVersion		- Designates if the ROM was intended for special events. Only used if using the $02 header
- !Define_Global_InternalName			- 21 byte block containing the ROM's internal name in ASCii. Note that the last byte is unusable if using the $01 header.
- !Define_Global_ROMLayout			- Affects what memory map the disassembly will use for the disassembly.
	- !ROMLayout_LoROM			- Use the LoROM memory map, where banks are mapped to the upper half of $00-$7D/$FE-$FF.
	- !ROMLayout_HiROM			- Use the HiROM memory map, where banks are mapped to $40-$7D/$FE-$FF.
	- !ROMLayout_SDD1ROM			- Use the memory map intended to be used with the S-DD1 chip. It's currently not fully implemented.
	- !ROMLayout_SA1_LoROM			- Use a varient of the LoROM memory map intended to be used with the SA-1 chip for ROMs less than 5 MB. Banks are mapped to the upper half of $00-$3F/$80-$BF. If the ROM size is 5 MB or greater, then the bank mapping changes to be the upper half of $00-$3F/$80-$BF and the entirety of $C0-$FF.
	- !ROMLayout_SA1_HiROM			- Use a varient of the HiROM memory map intended to be used with the SA-1 chip for ROMs less than 5 MB. Banks are mapped to $C0-$FF. If the ROM size is greater than 5 MB, then the SA-1 LoROM memory map is used instead.
	- !ROMLayout_SuperFXROM			- Use a varient of the LoROM memory map intended to be used with the SuperFX chip. Banks are mapped to $00-$3F. $40-$5F is a HiROM mirror of $00-$3F and can be used by putting BeginSuperFXHiROMMirroring() inside a bank.
	- !ROMLayout_LoROM_FastROM		- Same as the LoROM memory map, except banks are mapped to the upper half of $80-$FF. It's meant for ROMs that make use of FastROM addressing.
	- !ROMLayout_HiROM_FastROM		- Same as the HiROM memory map, except banks are mapped to $C0-$FF. It's meant for ROMs that make use of FastROM addressing.
	- !ROMLayout_ExLoROM			- Use the ExLoROM memory map, where banks are mapped to the upper half of $00-$7D/$80-$FF.
	- !ROMLayout_ExHiROM			- Use the ExHiROM memory map, where banks are mapped to $40-$7D/$C0-$FF.
	- !ROMLayout_SPC7110ROM			- Use the memory map intended to be used with the SPC7110 chip. It's currently not fully implemented.
- !Define_Global_ROMType			- Defines whether the ROM contains RAM, SRAM, and/or a custom chip, depending on the define used.
- !Define_Global_CustomChip			- Controls what custom chip the cartridge has. This will affect what hardware register defines you can use. Also, some chips will require you to use the $01 or $02 header
	- !Chip_None				- No custom chip is being used.
	- !Chip_DSP1				- Use the DSP-1 chip, used in Super Mario Kart and Pilotwings. Requires a firmware file to use.
	- !Chip_DSP1A				- Used the smaller varient of the DSP-1 chip. It's functionally identical to the standard DSP-1 chip. Requires a firmware file to use.
	- !Chip_DSP1B				- Use the bug fixed varient of the DSP-1 chip. Requires a firmware file to use.
	- !Chip_DSP2				- Use the DSP-2 chip, used only by Dungeon Master. Requires a firmware file to use.
	- !Chip_DSP3				- Use the DSP-3 chip, used only by SD Gundam GX. Requires a firmware file to use.
	- !Chip_DSP4				- Use the DSP-4 chip, used only by Top Gear 3000. Requires a firmware file to use.
	- !Chip_SA1				- Use the SA-1 chip, used in games like Super Mario RPG and Kirby Super Star. Using this chip requires using one of the SA-1 memory maps.
	- !Chip_SuperFX1			- Use the 10 MHz SuperFX chip, used in Star Fox. Most emulators will assume you're using the revised version, so using this SuperFX define has no effect on the speed the SuperFX will run at in your project (unless you're able to underclock the SuperFX or make the emulator detect you're playing Star Fox).
	- !Chip_SuperFX2			- Use the revised, 20 MHz SuperFX chip, used in Yoshi's Island and Doom.
	- !Chip_OBC1				- Use the OBC-1, used only by Metal Combat: Falcon's Revenge.		
	- !Chip_SDD1				- Use the S-DD1, used only by Star Ocean and Street Fighter Alpha 2.
	- !Chip_Cx4				- Use the Cx4 chip, used only by Mega Man X2 and X3. Requires a firmware file to use.
	- !Chip_SPC7110				- Use the SPC7110 chip, used only by 3 games, one of which is Far East of Eden Zero.
	- !Chip_ST010				- Use the ST010 chip, used only by F1 ROC II: Race of Champions. Requires a firmware file to use.
	- !Chip_ST011				- Use the ST011 chip, used only by Hayazashi Nidan Morita Shogi. Requires a firmware file to use.
	- !Chip_ST018				- Use the ST018 chip, used only by Hayazashi Nidan Morita Shogi 2. Requires a firmware file to use.
	- !Chip_SRTC				- Use the S-RTC chip, used only by Daikaijuu Monogatari II.
	- !Chip_SuperGameboy			- Use the Super Gameboy, only used by the Super Game Boy cart. Requires a firmware file to use.
	- !Chip_Satellaview			- Indicates that the cartridge is compatible with the Satellaview peripheral.
	- !Chip_MSU1				- Use the MSU-1 chip, a chip designed by Near (formerly known as Byuu). Unlike the other chips, this one can be used in conjuction with others.
- !Define_Global_ROMSize			- Controls how big the ROM will be when asar initializes it. You technically don't need to set this to use bigger ROM sizes, but it's highly recommended you set it to the appropriate value.
- !Define_Global_SRAMSize			- Controls how much SRAM/BW-RAM is in the cartridge.
- !Define_Global_Region				- Defines what region of the world the cartridge was distributed in.
- !Define_Global_LicenseeID			- A one byte ID code for the developer/publisher ID used in ROMs with the $00 or $01 header. In $02 header ROMs, this byte will be set to $33.
- !Define_Global_VersionNumber			- Defines whether the cartridge is a first release or a revision.
- !Define_Global_ChecksumCompliment		- Defines what the original game's checksum compliment is. By default, it should be set to be the inverse of !Define_Global_Checksum's value, but some ROMs may have a mismatched checksum, so this will need to be edited to reflect that.
- !Define_Global_Checksum			- Defines what the original game's checksum is in order to compare it to the one that asar generates.
- !UnusedXModeVectorNum				- Unused bytes in the header. These will usually be something like $FFFF, but some games may have put some data here, or garbage.
- !XModeYPVector				- Controls various places in bank 00 where the CPU will jump to in some situations.

The base files used by every disassembly:
- ROM_Map_X.asm					- Controls how the ROM is set up for each individual ROM version and also contains all the cartridge header and the ROM specific setting defines.
- Routine_Macros_X.asm				- Contains all the game code and data, either isolated into individual macro modules to separate routines or as entire ROM banks. 
- RAM_Map_X.asm					- Contains all the RAM, I-RAM, VRAM, OAM, and CGRAM defines.
- Misc_Defines_X.asm				- Contains various defines that either define constants or are game specific settings.
- SNES_Macros_X.asm				- Contains various game specific macros that help manage data, repeated code, or other things.
- SPC700_Macros_X.asm				- Same as SNES_Macros_X.asm, except for SPC700 specific macros.
- Engine.asm					- Contains the SPC700 engine code.
- ARAM_Map_X.asm				- Contains the ARAM defines used by the SPC700 engine.
- Asar_Patches_X.asm				- Controls what custom patches are applied to the ROM when !Define_Global_ApplyAsarPatches is set to !TRUE
- Assemble_X.bat				- A batch script that makes the magic happen.

The base files that disassembles may or may not contain:
- SRAM_Map_X.asm				- Contains all the SRAM/BW_RAM defines for games that use SRAM/BW_RAM.
- ExRAM_Map_X.asm				- Contains all the ExRAM defines for games that use Expansion RAM.
- ExFlashRAM_Map_X.asm				- Contains all the FlashRAM defines for games that use Expansion Flash RAM.
- SuperFX_Macros_X.asm				- Same as SNES_Macros_X.asm, except for SuperFX specific macros.
- ExtractAssets.bat				- A batch script that is used to extract assets from a ROM and move them to their appropriate folders.
- AssetPointersAndFiles.asm			- A patch used in conjuction with ExtractAssets.bat. It contains all the information of where files are and their filenames.



===Custom Folder===
Each disassembly contains a custom folder, containing a file called "Asar_Patches_X.asm", where X is the GameID. The primary purpose of this is to allow one to make hacks of a game without affecting the underlying disassembly. This folder is meant as a place for storing ASM patches for a particular game that can be applied either during or after ROM assembly.
To make use of this:
1. Set !Define_Global_ApplyAsarPatches to !TRUE in the ROM Map file.
2. Put your ASM patch files inside the custom folder, preferably inside their own subfolders.
3. Open up the Asar Patches.asm and type: incsrc "PathToTheMainPatch/MainPatchFileName.asm" inside either the X_InsertIntegratedPatches() or X_ApplyPatchesPostAssembly() macro. Do this for each patch you want to insert.
4. Open up the Assemble ROM .bat file and do what you need to to assemble the ROM. Afterwards, asar will report how much freespace you have available and how much you used.

Notes:
- The benefits of this system are:
	- Allows you to test whether a combination of patches are compatible with each other.
	- Allows one to make a more traditional hack without needing to edit the underlying disassembly.
	- Updating the underlying disassembly won't require you to port over all your changes. Just make sure to back up the custom folder before overwritting the files!
	- Great for ASM patch/tool development, since the ROM is refreshed completely after each assembly. Especially useful if making a patch/tool that's meant to work with different ROM versions.
	- Allows for dynamic patches
- Linking patches inside the X_InsertIntegratedPatches() macro will cause asar to insert the patch during ROM assembly. This is meant for dynamic offset patches that adapt to whatever ROM you're assembling. These patches also have direct access to all the defines inside the various disassembly files.
- Link patches inside the X_ApplyPatchesPostAssembly() macro will cause asar to insert the patch after ROM assembly. This is meant for static offset patches that always apply to specific parts of the ROM.
- Do not apply static offset patches if you plan on editing the disassembly directly! There is no guarentee those patches will work if the code/data is shifted around!
- To make dynamic patches, change the org offsets to point to labels. If a given address doesn't have a label, just use the closest one and add/subtract from it
- As of asar 1.7.1, there is a limit of 128 freespace areas at once. Be aware of this if many of the patches you're using use the freespace/freecode/freedata command.
- If the ROM you're editing is not 512 KB, the freespace finder won't work as well as it should, since asar assumes the expanded area is past bank 10.
- Editing the cartridge header at $00FFB0/$00FFC0-$00FFFF through a patch may cause problems, since the disassembly natively supports editing it.




===Global Macros===
These are one of the core components of the disassembly. Without them, this disassembly would not work at all. Here is what each one does:

Macros inside Global_Macros.asm
- StartOfROM()				- This is used to set up the main portion of the disassembly by loading all the necessary files and executing them. Generally not meant for custom use, but if disassembling a compilation ROM where you want each game to be separate, you can call this to load the component files for the other game. In this case, use it in this manner: %StartOfROM(!GameID, <GameID of the new game>, !ROMID)
- SNES_Header()				- This is called automatically at the end of bank $00 and certain other banks in certain memory maps. This inserts the internal cartridge header, using the values supplied in the ROM Map file.
- InitializeROM()			- This is called automatically, before main assembly, to display information about the ROM settings you use and to initialize the ROM to be the correct size. Not meant for custom use.
- InitializeSPCROM()			- Acts like StartOfROM(), but for SPC700 related files and must be called manually
- InitializeSuperFXROM()		- Acts like StartOfROM(), but for SuperFX related files and must be called manually
- FinalizeROM()				- This is responsible for applying patches to the ROM after the main disassembly is done. Not meant for custom use.
- DisplayFinalChecksum()		- This is called as the final step of ROM assembly, specifically to display the final checksum and to possibly correct it if !Define_Global_FixIncorrectChecksumHack is enabled. It will also display warnings related to the ROM assembly and cartridge header settings you've used.
- GetFirmwareFile()			- This is called after main ROM assembly to generate a temporary file that will be used to copy a firmware file into the current disassembly folder when the assembled ROM uses a chip that requires external firmware.
- InitializeMSU1ROM()			- Acts like StartOfROM(), but for MSU-1 data files and must be called manually
- GenerateSaveFile()			- Acts like StartOfROM(), but for save files and must be called manually
- FREE_BYTES()				- Inserts the specified bytes X times, to fill in empty parts of the ROM. if !Define_Global_IgnoreOriginalFreespace is enabled, these macros are effectively disabled.
- InsertMacroAtXPosition()		- This is called inside every routine macro to insert it at the address specified inside the routine macro call. If the address is set to "NULLROM" or if !Define_Global_IgnoreCodeAlignments is enabled, the routine macro will be inserted at the earliest available byte inside the bank it's in.
- PrintLabelLocation()			- Prints out the SNES address of the specified label. Note that you must append namespaces if the label is inside a routine macro as well as higher tier labels if the label is a sublabel (ie. To display for example: .label, you might have to do: GAMEX_Routine_Main_label, where "GAMEX_Routine" was the namespace, "Main" was a higher tier label, and "label" was the sublabel).
- SetDuplicateOrNullPointer()		- This is used if you want a label to point somewhere invalid or into another routine without needing to mess with the label structure of said routine. Note that this must be called after a "namespace off" if inside a routine macro.
- InsertVersionExclusiveFile()		- This is used as an easy way to insert a version exclusive file without the need for if/else statements. Note that if/else may still be necessary if not all ROM versions have a different file.
- RATSTagStart()			- Defines the start of a RATS protected block, meant to protect a block from being overwritten when tools are used on the ROM. Must have a corresponding RATSTagEnd() sometime after it.
- RATSTagEnd()				- Defines the end of a RATS protected block
- StripeImageHeader()			- Defines the header of a block of stripe image data, which is used by various games as a way to modify a tilemap.
- InitializeROMSettings()		- Called by InitializeROM() and by StartOfROM() to set up a bunch of variables based on the settings provided in the ROM Map. Not for custom use.
- PrintHeaderInformation()		- Called by InitializeROM() to display information about the ROM settings being used. Not for custom use.
- GetController()			- Used specifically to get the current controller and associated data 
- GetROMSize()				- Used specifically to get the current ROM size and associated data 
- GetMemoryMap()			- Used specifically to get the current memory map and associated data 
- GetChipData()				- Used specifically to get the current chip and associated data 
- DisplaySettingMessages()		- Called by DisplayFinalChecksum() to handle displaying various warning messages depending on the assembly and cartridge header settings used.
- SetROMToAssembleForHack()		- Used to specify which ROM is used as the base when assembling a hacked version.
- LoadExtraRAMFile()			- Used to load the SRAM_Map/ExRAM_Map/ExFlashRAM_Map file when any of the RAM size defines are set greater than 0KB.
- InsertGarbageData()			- Used to insert a block of garbage code/data into the ROM. These areas act as freespace, meaning the data they control won't be inserted if !Define_Global_IgnoreOriginalFreespace is set to !TRUE.
- CalculateFreespaceRemaining()		- This is called when !Define_Global_ApplyAsarPatches is enabled in order to display the remaining freespace and how much freespace has been used.
- AppendListOfItemsToPrint()		- Called by ROMSettingWarningsAndErrors() to format the list of supported controllers.
- EndofROM()				- Called automatically at the end of the main ROM compilation for error checking and to apply dynamic offset patches if !Define_Global_ApplyAsarPatches is enabled. Not for custom use.

Macros in the SNES.asm, available during main code assembly
- BANK_START()				- Defines the start of a new ROM bank to the specified one. Must have a corresponding BANK_END() macro later in the code and banks must be inserted in increasing order or else asar will throw an error. Note that if a FastROM memory map is being used, these macros will automatically be set to be in the $80+ range.
- BANK_END()				- Defines the end of a bank to the specified one and displays how many bytes have been inserted into it. The bank parameter must be equal to or greater than the one in the corresponding BANK_START() macro or asar will thrown an error. If the bank parameter is greater than the BANK_START() macro, the bank will be treated as larger, meant for handling games that insert a block of data that intentionally crosses bank boundaries.
- HiROMBankSplit()			- Used to split a HiROM bank into two if using a HiROM memory map. This is useful if you want to treat the upper half of HiROM banks as a LoROM bank, where the code would have easier access to the RAM mirror and registers.
- BeginROMMirroring()			- This is intended to be used whenever a game uses ROM mirroring, so the game doesn't break when changing the ROM size. Give it a base address, an offset to which mirror range to use (ie. how many sets of X banks is the target address, where X is how many banks are in the ROM), and optionally the !GlobalAddressOffset define to point to the opposite type of bank than the one the ROM uses by default (ie. FastROM/SlowROM and/or LoROM/HiROM). Note that this macro is disabled when either !Define_Global_IgnoreCodeAlignments or !Define_Global_DisableROMMirroring are set to !TRUE.
- EndROMMirroring()			- This is used in conjuction with BeginROMMirroring() to end a mirrored block. You must end ROM mirroring before the end of a bank or else asar will throw an error.

Macros in the SPC700.asm, available during SPC700 code assembly
- SPCDataBlockStart()			- Acts like BANK_START(), but for SPC700 files. Note that it inserts 4 bytes where it's placed, two bytes containing the size of the block and two bytes containing the ARAM address the block will be inserted at. You must give it a 16-bit ARAM address, which will set where in the ARAM the block will be uploaded to.
- SPCDataBlockEnd()			- Acts like BANK_END(), but for SPC700 files. You must give it the same 16-bit ARAM address as the corresponding SPCDataBlockStart() macro, or else an error is thrown.
- EndSPCUploadAndJumpToEngine()		- Defines the end of an SPC700 data block. It inserts 4 bytes where it's placed, $0000 and the address the SPC700 will jump to after uploading is finished.

Macros in SuperFX_(SNES).asm, available for SuperFX games during main code assembly
- EnableSuperFXHiROMMirroring()		- This is intented to be used whenever a SuperFX game makes use of the HiROM bank mirror, as SuperFX games lay these banks out differently from every other memory map. Place this at the start of a bank and that bank will be treated as if it's a HiROM bank at (BankID/2)+$400000. As the SuperFX memory map is inherently a loROM memory map, put this macro in an even numbered bank, remove the odd numbered bank after it, and set the even numbered bank to end in the odd numbered bank.
- InsertNextSuperFXCodeBlock()		- This inserts the next portion of the assembled SuperFXCode.bin file at the location of the macro. It accepts an address as a parameter since InsertMacroAtXPosition() is called by it.
- SetNextSuperFXCodePointer()		- Each time this macro is called, it reads the next value from the pointer table found at the start of SuperFXCode.bin, and assigns it to the label you gave to this macro.

Macros in SuperFX_(SuperFX).asm, available during SuperFX code assembly
- SuperFXBankStart()			- Acts like SPCDataBlockStart(), but for SuperFX files. Unlike that macro, you assign a 24-bit ROM address instead of a 16-bit one. You also must have at least one instance of SuperFXRoutinePointer() prior to the first call of this macro, or else an error is thrown.
- SuperFXBankEnd()			- Acts like SPCDataBlockEnd(), but for SuperFX files.
- SuperFXRoutinePointer()		- This inserts a pointer to the label you give to this macro. These must be placed before the first instance of SuperFXBankStart() or else an error is thrown.
- EndSuperFXRoutinePointers()		- This marks the end of the SuperFX routine pointer table and must be placed before the first call to SuperFXBankStart().

Macros inside the ROM Map files
- X_GameSpecificAssemblySettings()		- Contains game specific setting defines and the defines that control the binary IDs of each ROM version. It also controls what ROM version a hacked ROM uses as a base.
- X_LoadGameSpecificMainSNESFiles()		- Controls what Main files are loaded on the SNES side of the disassembly
- X_LoadGameSpecificMainSPC700Files()		- Same as X_LoadGameSpecificMainSNESFiles(), except for SPC700 files.
- X_LoadGameSpecificMainExtraHardwareFiles()	- Same as X_LoadGameSpecificMainSNESFiles(), except for SuperFX files.
- X_LoadGameSpecificMainSNESFiles()		- Same as X_LoadGameSpecificMainSNESFiles(), except for MSU-1 files.
- X_GlobalAssemblySettings()			- Contains all the cartridge header defines as well as the ROM specific settings.
- X_LoadROMMap()				- Contains the list of all the routine macros that will be inserted into the ROM.




===ROM Version Differences===
This framework has a built in method for handling multiple versions of the same game without needing to make a separate disassembly for each one. !Define_Global_ROMToAssemble is a global define that can be checked for to determine what ROM was chosen to assemble. As an example:

if !Define_Global_ROMToAssemble&(!ROM_SMW_J) != $00
	LDA.b #$00
	STA.b $00
else
	STZ.b $00
endif

This checks if the SMW ROM assembled is the japanese version, and if it is, it assembles the LDA.b #$00 : STA.b $00. Otherwise, it assembles the STZ.b $00.

Notes:
- It's possible to check for multiple versions with the same check, either with elseif checks if multiple versions do different things in one spot or by placing multiple !ROM defines inside the parenthesis, using a "|" between defines, if multiple ROMs do the same change.
- One version is assumed to be the default in these checks. For SMW, it's the USA version. This version will never be explisitly checked for.
- If a check uses "== $00" instead of "!= $00", that means it's checking if the ROM being assembled is NOT the listed versions. If the above example did this, then the STZ.b $00 would be assembled only for the japanese version.
- Each supported ROM version gets its own ROM Map file, allowing the cartridge header to be different between versions and allow isolated routines to be inserted at different positions to match where they are in the different ROMs.
- See the GAMEX section for an explanation for how to add support for a new ROM version.
- For external files that are different between versions, it's expected that you append the GameID and version ID to the file, at least if you want to make use of the InsertVersionExclusiveFile() global macro. In some cases, it might be appropriate to append a different identifyer (ex. SMAS/SMASW for a file that's different between regular SMAS and SMAS+W)


===Supported ROMs===
This disassembly framework supports 28 different ROMs currently:
- EarthBound (USA (incomplete))
- GameX Base ROM (V1, V2)
- Mario & Yoshi's Strange Quests (SMW ROM hack by Yoshifanatic)
- Plok! (USA, PAL, Japan, French (incomplete), German (incomplete))
- Super Mario All-Stars (USA, Japan, Japan (Rev.1), PAL)
- Super Mario All-Stars + Super Mario World (USA, PAL)
- Super Mario Bros. (USA, PAL)
- Super Mario Bros. The Lost Levels (USA, PAL)
- Super Mario Bros. 2 (USA, PAL)
- Super Mario Bros. 3 (USA, PAL)
- Super Mario World (USA, Japan, PAL, PAL (Rev.1), Japan (Arcade))

Notes:
- In theory, 90% of all official SNES games could be made to work within this framework. The main exceptions being games that require features asar currently doesn't support or games that use hardware that's either poorly documented or not supported well enough by this framework.




===Custom ROM Versions===
So, you want to make a ROM hack using the disassembly, but you want more control over it than what the custom folder offers. Well, the framework supports making your own custom ROM versions. To do this:
1). Copy/paste one of the ROM Map files inside the disassembly's folder.
2). Rename the file to HACK_*HackName*, where *HackName* is whatever you want to name this version.
3). Open up the ROM Map file and set the first variable in the %SetROMToAssembleForHack() macro to the ROMID of whichever ROM version you want your hack to be the base version of.
4). Open up the Assemble_X.bat batch script and type in HACK_*HackName* and press enter. You'll be all set.

Note:
- This feature is intended for ROM hacks, not for disassemblies of official versions that have yet to be implemented.
- If you want to add checks for your hack version, substitute !Define_Global_ROMToAssemble/!ROMID with !Define_Global_HackROMToAssemble/!HackROMID where appropriate. You will have to define your own !ROM_X_Y defines so each version will have a unique bit assigned to it. Said defines won't conflict with the non-hack ones, so don't worry about that.
- This is a good way of being able to really mess with the overal structure of the game while still not affecting the underlying disassembly. With this feature, there is no need to edit the underlying disassembly unless you intended on improving upon it, since the underlying disassembly can act as a backup.
- If you want to edit stuff that's assembled outside of the main assembly (ex. SPC engines, SuperFX code, sample banks, etc), you'll have to edit the Assemble_X.bat file. You can make a copy of it, then add checks for your hack version.




===Standalone SMAS+W ROM Hacks===
Thanks to my efforts with the SMAS/SMAS+W disassembly, I made it possible to not only assemble SMAS/SMAS+W with the different games completely removed, but also to assemble the individual games as standalone ROMs that work outside of SMAS. Think of it like if Nintendo released these games individually on the SNES rather than as part of a compilation.
The main purpose of this is to allow people to make ROM hacks of these games without the rest of SMAS and the other games hogging up a significant chunk of the ROM. They're also good for casual play, as it's slightly quicker to load up each game rather than go through SMAS's menu/title screen.
Anyway, here are some notes about these ROMs:
- These ROMs are based off of SMAS+W's versions of the games (or the revised version of Super Mario Collection in the case of the Japanese versions).
- The region lockout and copyright checks/screens have been kept, mainly for authenticity. These can easily be removed if desired.
- The SMAS splash screen was kept as well, again for authenticity.
- The number of save files was reduced from 4 to 3. This is because I wanted to implement a SMW style save menu for these games, and aside from SMB2U, there wasn't enough screen space to fit 4 files and an erase file option. I could have potentially moved some things around to make room, but I wanted the addition to be as unintrusive as possible.
- All the code/data has been shifted towards bank 00 and new code was added in directly with the original code similar to how Nintendo would have likely done it. This does mean that existing ASM patches have to be modified for these ROMs.
- All these ROMs are 512 KB, except SMB3 which is 1 MB.
- Aside from what was needed to get the games working and make the game feel authentic, no other changes were made.
- They may occasionally be updated to fix bugs/oversights with their implementation. Only the latest version of the ROMs will be possible to assemble, because the SMAS/SMAS+W disassembly is complicated enough as is. It doesn't need to support a million different revisions for what are essentially ROM hacks.


===MSU-1 Support===
This framework supports the MSU-1 chip, a chip designed by Near (formally known as Byuu) and first implemented into his SNES emulator, BSNES/Higan. This chips enables the SNES to play CD quality audio and to stream up 4 GB worth of data. The SNES never officially had a CD add-on like the Sega Genesis or Turbografx16 did, so this could be seen as a substitute.

In order to make use of this chip for a disassembly/homebrew:
- !Define_Global_CustomChip must be set to !Chip_MSU1 or be part of the define's value.
- Optionally, !Define_Global_ROMType should be set to any value that denotes the cartridge having a chip.
- Put a file called "MSU1Data_X.asm" inside the disassembly folder, and change X to whatever the disassembly folder name is. This will be the file that assembles the output .msu file.
- Add the following lines to the Assemble_X.bat:

echo Assembling MSU-1 Data File...
%asarVer% --no-title-check --fix-checksum=off --define GameID="%GAMDID%" --define ROMID="%Input1%" --define FileType=7 --define PathToFile="MSU1/MSU1DataFile.asm" ..\Global\AssembleFile.asm "%ROMNAME% %ROMVer%.msu"

Preferably, add these right above the "echo Assembling ROM..." line.

Notes:
- MSU-1 data files have access to most of the standard files that the main ROM has access to. This is for if you decide to stream code to the SNES.
- It's your responsibility to handle pointers on the SNES so that they point to data in the MSU-1 file.
- To check if the MSU-1 is enabled in the game code, all you need to do is read from the "!REGISTER_MSU1_Read_IDX" registers, with X being 1-6. Doing so will return one of the characters of "S-MSU1" in ASCII, depending on which register was read from.
- If you want to make use of CD quality audio, you'll have to refer to your emulator/flash cart's documentation for how to get the emulator/flash cart to detect this. The method differs between the various emulators and flashcarts that support it.
- Seeing as how not every emulator/flash cart supports this chip, it might be a wise idea to add a check in the game code to skip over the MSU-1 handling code, if the MSU-1 functionality is not required for the game to function.



===Save File Generation===
This framework supports generating a save file, which can be useful for debugging purposes or to mess around with a given game.

To make use of this, add the following lines to the Assemble_X.bat:
echo Generating a Save File...
%asarVer% --no-title-check --fix-checksum=off --define GameID="%GAMDID%" --define ROMID="%Input1%" --define FileType=8 --define PathToFile="SaveFileGenerator.asm" ..\Global\AssembleFile.asm "%ROMNAME% %ROMVer%.srm"

Preferably, add these right above the "echo Assembling ROM..." line.

Notes:
- You must set the SRAM size (or any of the RAM size defines if using cartridge header $02) to a non-zero value to use this. If the game has no extra RAM that necessitates an external file to keep track of, what's the point of generating a save file after all?
- If working on a disassembly, be sure to research how the game your working on handles its save files. Some games use checksums or some other method to check for file integrity. So, if you make a save file incorrectly, the game might detect it and delete the save data.



===Chip firmware===
Various games on the SNES make use of custom chips in order to do all sorts of different things. Some of these chips make use of firmware in order for some emulators to emulate these chips accurately. By default, this framework does not come with the firmware for these chips. If you don't have them, then you'll have to do a web search for them if you plan on making use of these chips for homebrew or disassemblies.
For convienience, the framework provides a folder for this firmware. Placing the files there and naming them what the framework expects will allow these files to be copied over to a disassembly folder when the assembled ROM requires it. Currently, here is a list of supported firmware and the name they need to be:
- DSP-1/DSP-1A -> dsp1a.bin
- DSP-1B -> dsp1b.bin
- DSP-2 -> dsp2.bin
- DSP-3 -> dsp3.bin
- DSP-4 -> dsp4.bin
- Super Gameboy -> sgb.bin
- Cx4 -> cx4.bin
- ST010 -> st010.bin
- ST011 -> st011.bin
- ST018 -> st018.bin




===SuperFX Link Protocal===
Due to the nature of the SuperFX chip and the fact that asar doesn't allow referencing labels across different architectures, this is how you're expected to set up SuperFXCode.asm so it can be referenced during main code assembly.
1). Place a %SuperFXBankStart(XXXXXX) inside your SuperFX code file to mark the beginning of a SuperFX code block. XXXXXX must be the SNES ROM address that this block will be inserted at during main code assembly.
2). Place a %SuperFXBankEnd(XXXXXX) at the end of the SuperFX code block. Set XXXXXX to be the same value that was used for %SuperFXBankStart() previously. 
3). Repeat steps 1-2 for each code block that is expected to be inserted at different locations until all the code blocks are accounted for.
4). Place %SuperFXRoutinePointer(Label) macro calls prior to the first %SuperFXBankStart() call. Set "Label" to a label that you intend on having the SNES tell the SuperFX chip to jump to, data blocks that the SuperFX references that are outside any code blocks, or data blocks that both the SNES and SuperFX reference. Do this for every label this applies to.
5). Place %EndSuperFXRoutinePointers() to mark the end of the SuperFX pointer table.
6). In the ROM_Map file(s), add an incsrc in LoadGameSpecificMainSNESFiles() to a file that will contain the SuperFX pointer labels that will be used to link to the SuperFX code file.
7). Inside your SuperFX pointer label file add as many %SetNextSuperFXCodePointer(Label) macro calls to it as you placed %SuperFXRoutinePointer() inside the SuperFX code file. Set "Label" to a label name you used for the corresponding %SuperFXRoutinePointer() labels, in the order they were assigned.
8). Place %InsertNextSuperFXCodeBlock($XXXXXX) at the locations you want the SuperFX code to be inserted at. Set XXXXXX to be the value assigned to the %SuperFXBankStart() macros, in the order they were assigned.

If you did everything right, your disassembly/homebrew project should be all set to work with the compiled SuperFX code file.

Notes:
- This system allows one to both link to the SuperFX code/data from the SNES side while also allowing the pointers to auto adjust as stuff on the SuperFX is shifted around.
- If you need to add/remove a pointer/code/data block, you must remove the corresponding pointer/block related macro(s) from both the SNES and SuperFX side of things, or else the pointers after the change will become misaligned (ex. If you remove pointer 2 from the SuperFX pointer list, then pointer 2 on the SNES side will use the value meant for pointer 3).





===Using the GAMEX Base ROM===
Unlike most of the ROMs supported by this disassembly, this is not an actual game disassembly. This is a base ROM made by me that is intended for homebrew game development and as a base for new disassemblies. At the bare minimum needed to make use of it, here is what you need to do:
1. Copy the GAMEX folder to make a copy of it.
2. Rename all instances of "GAMEX" in the file names and inside all the files to something that will identify the game (ex. If you're developing a game called "Bob's Adventure", you could go with something like "BA" or BoBA").
3. Rename all instances of "V1" and "V2" to appropriate version identifiers for the game (ex. SMW uses U, J, E1, E2, and ARCADE). Note that these identifyers are appended to the Game ID you chose above. So, if Bob's Adventure has a "U" version, the game will read it as "BA_U" or "BoBA_U".
4. (Skip to step 6 if this step doesn't apply) If the ROM you're working on has (or going to have) more than 2 versions, copy one of the ROM Map files in the RomMap folder and change the version identifyier to something appropriate for the new version(s).
5. Open up Assemble_GAMEX.bat in a text editor, go to where you see the code checking what %Input1% contains. Add more checks for each additional version as well as the appropriate code. In addition, add the new versions to the list of valid options.
6. (If making homebrew, skip the remaining steps) Open up the Routine_Macro file and delete the contents of this file.
7. Open up the ROM Map files and delete all the routine macro references. From there, create generic bank macros references for each bank the ROM will have.
8. Define the generic bank macros in the Routine_Macro file, which will contain all the code/data for a given bank.

As for the ROM itself, it contains:
- An initialization routine that clears all the WRAM.
- A routine that initializes most relevant hardware registers so they'll be in known states.
- Has a basic main loop similar to SMW's.
- Uses a general purpose V-Blank routine that I used for my own homebrew projects. It writes to most hardware registers using RAM mirrors, polls the joypads, updates the OAM, and has a general purpose DMA update loop.
- Displays a splash screen, with some text.
- Has a screen fade in/out functionality.

Some notes about the ROM:
- Generally speaking, A should be 8-bit and X/Y should be 16-bit in your code.
- The DBR can be anything.
- The direct page register defaults to $0000 and is preserved in the interrupt routines.
- Most hardware registers have a RAM mirror for them. It's preferable that you write to those rather than the hardware mirrors themselves, since all the mirrored registers are written to in the V-Blank routine (HDMA and IRQs being obvious exceptions).
- Make sure interrupts are enabled via !REGISTER_IRQNMIAndJoypadEnableFlags, or else the game will freeze when it reaches the main loop!



===Making Your Own Disassembly===
So, you want to create your own SNES game disassembly using this framework? To do this, you'll need:
- A SNES code compiler (This framework comes with Asar by default)
- A SNES emulator with debugging capabilities. (ex. BSNES Plus)
- An emulator/tool that can disassemble/display SNES ASM code
- A hex editor
- A text editor that works with .txt files
- A good understanding of SNES coding (65C816 ASM knowledge is mandatory, SPC700/SuperFX ASM knowledge is optional but useful).
- A lot of time and patience
- The GAMEX disassembly to use as a base.


The difficulty of disassembling a game will depend on a lot of different factors:
- The larger the game, the more stuff you'll likely need to disassemble. Generally speaking, the vast majority of ROM space in a game will be for graphics, music, tilemaps, and samples, not code.
- Games that use custom chips are harder to disassemble, doubly so if the custom chip is programmable.
- Games that constantly swap between 8-bit/16-bit A/X/Y are harder to disassemble, since that makes it harder to automate disassemly and requires more code examination to clean up disassembly mistakes.
- The more often that a game mixes code and data together, the harder it'll be to disassemble. It's the same reason as if the game switches the size of A/X/Y a lot.
- Games that heavily exploit the direct page register make it harder to identify RAM addresses being referenced with direct page addressing. Doubly so if the direct page address is added/subtracted to or controlled through a RAM address rather than set to a fixed value.
- Games that make heavy usage of some sort of scripting are harder to disassemble, since you'd basically have to do a lot of poking around to figure out what the scripting "opcodes" do.
- Games with a large number of small data blocks that you can't automate the extraction of may try your patience.
- Games that make heavy usage of absolute addressing, a DBR of $7E/$7F, and make heavy usage of RAM addresses in certain ranges can make it harder to identify the hardware registers in the code.
- Games that heavily modify the DBR require more code examination, since it makes it harder to tell what the absolute address referenced are pointing to.
- HiROM games that place code in the lower half of its banks are harder to disassemble than LoROM games, since it's harder to tell what is a ROM address and what is a RAM/register address. With LoROM games, assuming the DBR is pointing to ROM, any absolute address in the $8000-$FFFF ranger is automatically a ROM address.

Notes:
- Start by looking at the ROM header at $00FFC0. That will tell you all the information that you need in order to fill out all the ROM_Map defines. You'll have to do some external research to fill in any that can't be determined by the header.
- There are two approaches you can take when disassembling a game. 1). Disassemble a bank at a time. 2). Disassemble based on order of execution. The former lets you create a disassembly quicker while the latter lets you examine the code more closely as it's disassembled to get valuable context.
- Identifying the Native Mode V-Blank routine can provide tons of valuable context surrounding various global RAM addresses. Many games will have an OAM buffer, a palette mirror, and a DMA table that can be identified from this routine.
- If you come across some code that manually changes the DBR (ex. LDA.b $7E : PHA : PLB), you ought to append the value it's being set to to every absolute address referenced after it (ex. LDA.w $0000 -> LDA.w $7E0000), up until you see another PLB. You should do this if the absolute addresses point to ROM, RAM past $7E1FFF, or any type of extra RAM.
- If you come across some code that sets the direct page register to a new value (ie. LDA.w #$0000 : TCD), what you do depends on whether the low byte of the DPR is being set to 00 or not. Do the following up until the DPR is changed back.
	- If it's 00, append the high byte to every DP address (ie. DPR is $4300. LDA.b $00 -> LDA.b $4300)
	- If it's not 00, change the DP address to be the DPR plus the DP address's value, then subtract the DPR so it will assemble correctly (ie. DPR is $420B. LDA.b $F5 -> LDA.b $4300-$420B)
If the DPR is being used as an index or is being added/subtracted to, you'll have to be extra careful how you append values to the DP addresses.
- It's a good idea to remove as many hardcoded ROM pointers as possible so that your disassembly can adjust itself as the user adds/removes code/data. A few good ways to test for remaining hardcoded pointers is by:
	SNES/SPC700:
	- Ctrl+F each branch opcode as well as PER to see if they have a label or not.
	- Ctrl+F JSR/JSL/JMP/JML/CALL to see if all of them have a label/RAM define, depending on where they jump to.
	- Ctrl+F to find absolute/long indirect indexing (ie. LDA.b ($00)/LDA.b [$00]), then seeing where how the pointer is set.
	- Ctrl+F to find the DMA registers, then checking what is being set to $43X2-$43X4, with X being 0-7.
	- Ctrl+F to find all instances of PLB to find cases where the DBR is being changed via something besides PHK.
	- Ctrl+F to find all instances of MVP/MVN, and see if the values being loaded by it and X/Y are using labels/RAM defines.
	- Moving something at the start of a bank to the end to shift everything around in a single bank, then testing the ROM to see if anything broke.
	- Changing the order of banks to find hardcoded 24-bit pointers, then testing the ROM to see if anything broke. (You can't do this for the first bank, due to the interrupt routines needing to be in this bank).
	SuperFX:
	- Ctrl+F to find all instances where R15/$301E is being set, as that's the SuperFx program counter. To a lesser extent is R13/$301A, as that's the address LOOP jumps to.
	- Ctrl+F to find all instances where ROMB is used, as that affects what ROM bank is referenced by the code.
- It's highly recommended that you use the opcode length specifiers (ie. .b/.w/.l) on the disassembled SNES ASM code. This is so that you have full control over how asar assembled the disassembly.
- If you find a big block of code that's highly repetitive, it might be a wise idea to create a game specific macro for it.
- Generally speaking, the first thing that gets sent over to the SPC700 is the engine. You can easily find the routine that uploads it by checking for writes to $002140-$002143.
- Consider adding comments if you come across bits of code that seem like they could be better optimized or problematic code that might make a ROM hacker's job harder.
- Many games use data structures where the data is stored in a non-standard way. It's a good idea to format this data to reflect how the game processes it.
- Instructions that index direct page addresses reference addresses anywhere in bank 00 regardless of the DBR. This means they can reference hardware registers, RAM, or bank 00 ROM addresses.
- It's a good idea to not distribute the copyrighted assets if you plan on posting a disassembly. Write a script that will extract the assets from any of the ROMs your disassembly supports, so that you can distribute the disassembly without the assets. You can use the one made by Yoshifanatic for his disassemblies, as that one gives control over exactly where to extract files, how big the files are, accounts for different ROM versions, and allows giving each file a name.
- Sometimes table references will need to be manually adjusted by adding/subtracting a value to the label, as the game will never reference the table with an index value of 00.
- To make disassembling SPC700 code blocks easier, you could copy/paste the block into a blank 32 KB ROM file at the same offset that the file would be inserted at in the ARAM (ex. If the ARAM address is $0500, insert it at $008500). That may help you to visualize where the code is if need to spot errors with the assembly. This is also useful if a game splits the SPC700 code into multiple blocks.
- Any of the following can be treated as freespace:
	- A block of data that's not referenced anywhere and whose purpose is unknown.
	- Unused code whose code/data references don't line up with existing code. (aka. dead code)
	- A string of NOPs, if their usage implies deleted opcodes. NOPs being used for timing, self modifying code, padding, or found directly fter SuperFX opcodes that affect R15 or STOP should not be marked as freespace.
	- A string of 00s or FFs that's not referenced anywhere.
Setting !Define_Global_IgnoreOriginalFreespace to !TRUE can help verify if the areas marked as freespace really are freespace. Assuming all hardcoded pointers have been accounted for, anything that breaks in the assembled ROM is missing code/data that should not be marked as freespace.
- When in doubt, run code in a SNES debugger. That will help if something about the code being disassembled is confusing.
- Any time the code uses an RTS/RTL jump (ex. LDA.w #$A9B2 : PHA : RTS), the actual address being jumped to is 1 higher. So, in the example, you'd do this to account for it when assigning a label to the value: "LDA.w #CODE_00A9B3-$01". However, if there is a DEC/SBC #$01/SBC #$0001 before the push opcode, do not put a "-$01" after the label!
- I recommend putting a space between a label and any sort of opcode that changes the program counter and doesn't return (ex. BRA/BRL/JMP/JML/RTS/RTL/RTI). This is to make it clear that the CPU will not read past these opcodes. However, there are exceptions depending on how the code is set up (ex. BNE : BEQ, as the BEQ will act as a BRA, or PER $0002 : JMP, as the JMP will act as a JSR).
- The SuperFX has a sort of multi-stage pipeline design, where it can decode the next opcode while the current one is being processed. So, the opcode immediately after something that changes the program counter is executed before the branch takes place. How you deal with this is up to you.
- The SuperFX has "ALT" opcodes that change the behavior of various instructions. SuperFX code can and will jump in the middle of these ALT instructions, so you'll need to account for that.
- If the opcodes found after a JSR/JSL/CALL make no sense and the code before those opcodes was valid, it's possible that the bytes after it are parameters for that routine. If the routine does the following, then those bytes are parameters:
	- Uses stack relative addressing to reference the return address.
	- Puts the stack pointer into A/X/Direct page
	- Pulls bytes off the stack without pushing any beforehand.
- As you get better at disassembly, it'll become easier to distinguish between actual code and data being disassembled as code. Disassembled data looks like gibberish. There is also the fact that the wrong size of A/X/Y with SNES code can make otherwise valid code look like gibberish. Common examples of this:
	SNES.
	- Long strings of SBC.l $XXXXXX,x
	- Long strings of NOP
	- WDM/STP/COP/BRK/XCE/RTI/CLI/CLV/SEI/SED/CLD/WAI/TSC/TCS/TSX/TXS, as those are useless/infrequently used opcodes.
	- Instances where something is loaded into A/X/Y repeatedly. (ex. LDA #$80 : LDA #$81 : LDA #$80)
	- REP/SEPs affecting flags besides the size or carry flags, which are the 3 most common.
	- MVP/MVN that lack a proper setup before execution.
	- Branches/Jumps/subroutine calls that point to open bus, registers, RAM. There are exceptions for the latter however.
	- Strange usage of stack relative addressing, especially if the game in question rarely uses this type of addressing.
	- EOR.w #$1AFF or EOR.b #$FF : SBC.l which often means that A is the wrong size.
	SPC700
	- STOP/SLEEP/DI/EI/BRK/RETI/DAA/DAS, as those are either useless/infrequently used opcodes.
	SuperFX
	- Long strings of STOP opcodes or STOPs that are not followed by a NOP.
	- Long strings of NOP
	- Long strings of IWT R15, #$FFFF


===Future Improvements===
Here are a list of ideas for possible improvements to this ROM framework. Note that backwards compatibility is not my concern, as there is a good chance something may need to be heavily re-written as more games get disassembled.

- Replacing the .bat files with a makefile or similar type of file. This would allow these disassemblies to be usable on non-Windows OSes. I've attempted to use makefiles before, but I couldn't find any documentation for features I need.
- Rewrite the SPC700 handling to be similar to the SuperFX handling. Mainly for consistency.
- Make the GAMEX ROM work with the SA-1/SuperFX if the user sets the chip to one of those.
- Add full support for the more obscure chips/peripherals/memory maps. Their files lack defines or are untested.
- Add a 12 MB ROM size option. I need a proper implementation of the ExLoROM/ExHiROM memory maps before this can be done.
- Make it so that setting the ROM size past 4 MB will automatically use ExLoROM/ExHiROM if using standard LoROM/HiROM or the FastROM varients.
- Potentially modify the bank system so that switching the memory map will auto-adjust the ROM data/SRAM to match the new memory map. Currently, switching from HiROM to LoROM causes issues.
- Add a custom memory map feature that specifies the exact memory map for a game, meant for any games that doesn't fit the mold defined by any normal memory map.
- Improve the code disassembly scripts to add new features. One idea being to generate labels in between code rather than only after a terminating or always branching opcode.

Here is a list of ideas for the main component, asar.
- Vastly increasing the amount of freespace areas that can be assigned with the freespace/freecode/freedata command. The current limit is problematic if one wants to make use of the patching feature.
- Optimizing asar for speed. Assembling a disassembly is slow if you don't have an SSD drive, and it still takes a moment to assemble if you're assembling a particularly big ROM.
- Make the freespace commands usable on ROMs that aren't 512 KB. Asar assumes the expanded area of the ROM is past the first 512 KB, which force smaller ROMs to expand to 1 MB and accidentally overwrite data in larger ROMs.
- Make "check bankcross off" work when assembling SuperFX code. This is most likely a bug that it doesn't work.
- Add a way to generate hexadecimal literals. I suggested using $= similar to #=, but however it's done, this feature would simplify some implementations in my framework.
- Provide a method to pass an asar define outside of asar. That'd make it much easier to have asar communicate with a program/script calling asar without needing to generate temporary files via asar.
- Add a way to bypass the 16 MB file limit, specifically for MSU-1 files.
- Add some sort of Unicode support. That'd make it possible to edit text for languages that use non-ASCII characters, like japanese.



===FAQ===
Q: How did you manage to make these disassemblies?
A: My main tools were:
- Asar (SNES compiler)
- Notepad
- SHex (hex editor with SNES code disassembly capabilities)
- SNES Binary Utility (tool that makes it easier to format data I extracted with SHex)
- BSNES Plus (debug fork of the accurate focused SNES emulator BSNES/Higan).
I also wrote some asar/batch scripts that would help me to automate certain things.

Q: How long have you been working on this?
A: I've been at it since April 2018. This started as an attempt to improve upon galaxyhaxz's SMW disassembly (https://www.smwcentral.net/?p=viewthread&t=78013) so I'd have a better base to work off of for Mario & Yoshi's Strange Quests. However, as I did more and more things in pursuit of making the disassembly better, like adding support for the non-USA versions of SMW, the framework needed to evolve. This especially became true once I decided to support the SMAS+W versions of SMW. Sometime after I did that, I decided that, since I already had to disassemble part of SMAS to get these versions of SMW to work, I might as well disassemble the other parts of SMAS as well. And here we are today. XD
Looking back, it's kind of funny how this turned out.

Q: How hard was it to make all these disassemblies?
A: It varies, largely depending on how the game is coded, how deeply I look into the code as I disassemble it, how big the ROM is, and other potential factors. This is something that requires a lot of knowledge of the SNES to do, and a quite a bit of time and patience. Depending on the game, how much free time you have, and whether you're working with others, it's possible to get a basic disassembly out pretty quickly (like I did for Plok!, which took a week to do).

Q: Where can I give you feedback on this? / Where can I follow you so I can stay updated on this?
A: Here is my discord server: http://discord.gg/TUDwsCg. This is a public server that is meant for fans of my work and/or Yoshi, and is primarily where I post about my projects. If you don't have or don't want a Discord account, you can also find me on Youtube:
(https://www.youtube.com/user/Yoshifanatic1) or on SMWCentral.net as "yoshifanatic". I'm not as active on either site as I am on Discord, although I'm much more likely to see your message sooner if it's on Youtube.

Q: Will you disassemble X SNES game?
A: Maybe, but only if it's something particularly interesting to me and I'm in the mood.

Q: Will you disassemble X non-SNES game?
A: No. I only know how to disassemble SNES games.

Q: I tried to assemble a disassembly, but I get a lot of errors about missing files.
A: Did you extract the assets from a clean, headerless ROM? You need to do that first using the .bat script in the AsarScripts folder before the disassembly will assemble.
Also, some disassemblies might not support alternate ROM versions. Look in the ROM Map folder to see which ones can be assembled, as the supported ROMs will have a ROM Map file.

Q: Aren't you committing copyright infringement by publically posting these disassemblies?
A: Not really. Disassemblies are fine, legally speaking, as long as they're not based on the original source code. Doubly so if they don't contain the copyrightable assets, such as graphics, but merely provide a way to extract this data from a ROM.
However, let me go on a tangent to explain why it shouldn't matter whether these disassemblies are copyright infringement or not. Not to mention that there is a lot of much mis-information about this law thrown around, to the point where it's causing so much abuse at the hands of publishers and corporations.

Starting off, did you know the purpose of this law is to benefit the general public, not the authors/publishers? The U.S. Constitution states:

"To promote the Progress of Science and useful Arts, by securing for limited Times to Authors and Inventors the exclusive Right to their respective Writings and Discoveries"

Notice that it doesn't say anything specifically about making money, but rather about promoting progress. Further backing this up would be the Supreme Court ruling for the "Fox Film v. Doyal" which has this clause:

"The sole interest of the United States and the primary object in conferring the monopoly lie in the general benefits derived by the public from the labors of authors."

Now considering that copyright is about promoting progress rather than making money, why does copyright last for 100+ years on average (Currently, it lasts until death of the author plus 70-120 years depending on certain factors)? That doesn't promote progress. That promotes laziness and stagnation. Case in point, look at all the unoriginal sequels and remakes coming out of Hollywood these days. With copyright the way it is, what incentive is there to be creative if you can milk a single work for longer than anyone has ever lived? Plus, authors don't create new works when they're dead.
There is also the fact that many authors give away their rights to their works to big publishers. Publishers that usually exploit said authors by taking most of the profits made off said works. Unless a work was independently published, you're not actually supporting the authors/devs/composer/etc. of a work by buying it, you're supporting the publisher. Doubly so if said author/dev/composer/etc. specifically works for said publisher, as they get paid by the publisher when creating a work, not when you buy copies of the work or anything attached to it. If you actually want to support these authors/devs/composers/etc., you need to do so in a way that doesn't directly benefit the publisher (ex. Giving them money on a site like Patreon).
And isn't it funny that it's the corporations/publishers, not the authors themselves, that are the ones lobbying to make the copyright law (and related laws, like the DMCA) more draconian to benefit themselves at the expense of the public's rights? Heck, if the Disney Corporation (aka. A company who benefited from the public domain to create some of their most beloved works) didn't screw with this laws to keep their ~100 year old mascots from being elevated to the public domain (and nobody else got a similar idea), a lot of these SNES games I disassembled would likely already be public domain works (Copyright originally lasted 14 years, with a one time optional 14 year extention).
There is also the "lost sale" argument that the corporations love to use. They like to claim they lose millions/billions whenever people copy/stream their copyrighted works. However, that's not how it works. Once initially created, digital files can be copied infinitely at 0 cost. Meaning, if you copy a digital work, the copyright holder doesn't lose anything since nothing is lost on their end. Also, technically speaking, every time you buy the same/similar item from a competitor, it could be seen as a "lost sale" to whoever you didn't buy said item from. Does the Pepsi company consider it a "lost sale" if you buy a Coke instead of a Pepsi? Or what if you buy a used copy of a game. Does the copyright holder consider that a "lost sale"? If not, then why is file sharing any different in this regard?
If copyright lasted for, say, 5-10 years, it's not like these corporations will die off. If they want to keep making money off the same work, they'll have to put in the effort to incentivize people to buy the new, copyrighted edition of a work rather than get the public domain version for free. Doesn't that sound like it would lead to better products overall? As for the independent authors/devs/composers/etc. that want to make money off their work after it's elevated to public domain, they could do it through other means, like release a new and improved edition they can copyright, crowdfunding a new work, commisions, concerts, or merchandising so it's not like they wouldn't have options if they couldn't sell copies of their works (ie. They'd adapt their business to the changing market, like any normal business does).

Oh, and also, the corporations don't need to C&D my disassemblies or else they lose the copyright status of these games. That only applies to trademarks under trademark law, which my disassemblies have nothing to do with. Don't let confusing, overgeneralizing terms like "IP" confuse you into thinking these wildly different laws function identically to one another.

===Credits===
- yoshifanatic (Maker of this framework and various disassemblies)
- galaxyhaxz (Maker of the original SMW disassembly this framework is based on)
- Alcaro (Maker of Asar)
- Bregalad, nyanpasu64 (Maker of BRRTools)
- FuSoYa (Maker of Lunar Compress/Lunar Expand)


