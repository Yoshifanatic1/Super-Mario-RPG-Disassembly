if !Define_Global_ROMSize > !ROMSize_4MB
	fullsa1rom
	!MemoryMapName = "SA-1 ROM (Hybrid)"
else
	sa1rom
	!MemoryMapName = "SA-1 ROM (LoROM)"
endif

!SRAMBankBaseAddress = $400000
!SRAMBankSize = $010000
!FastROMAddressOffset = $000000
!HiROMAddressOffset = $000000
!SNESHeaderLoc = $00FFB0
!ROMLayoutHeaderByte = $23

; Info: --ZYXWVU
; U = LoROM bank (not set)/HiROM bank (set)
; V = Bank is a mirror of Bank&$80.
; W = Bank has already been called flag
; X = Bank is a mirror of Bank&$40
; Y = Nonstandard mirorring.
; Z = Contains SNES Header
; $FF = Invalid bank.

!BANKType_00 = $20 : !BANKType_01 = $00 : !BANKType_02 = $00 : !BANKType_03 = $00
!BANKType_04 = $00 : !BANKType_05 = $00 : !BANKType_06 = $00 : !BANKType_07 = $00
!BANKType_08 = $00 : !BANKType_09 = $00 : !BANKType_0A = $00 : !BANKType_0B = $00
!BANKType_0C = $00 : !BANKType_0D = $00 : !BANKType_0E = $00 : !BANKType_0F = $00
!BANKType_10 = $00 : !BANKType_11 = $00 : !BANKType_12 = $00 : !BANKType_13 = $00
!BANKType_14 = $00 : !BANKType_15 = $00 : !BANKType_16 = $00 : !BANKType_17 = $00
!BANKType_18 = $00 : !BANKType_19 = $00 : !BANKType_1A = $00 : !BANKType_1B = $00
!BANKType_1C = $00 : !BANKType_1D = $00 : !BANKType_1E = $00 : !BANKType_1F = $00
!BANKType_20 = $00 : !BANKType_21 = $00 : !BANKType_22 = $00 : !BANKType_23 = $00
!BANKType_24 = $00 : !BANKType_25 = $00 : !BANKType_26 = $00 : !BANKType_27 = $00
!BANKType_28 = $00 : !BANKType_29 = $00 : !BANKType_2A = $00 : !BANKType_2B = $00
!BANKType_2C = $00 : !BANKType_2D = $00 : !BANKType_2E = $00 : !BANKType_2F = $00
!BANKType_30 = $00 : !BANKType_31 = $00 : !BANKType_32 = $00 : !BANKType_33 = $00
!BANKType_34 = $00 : !BANKType_35 = $00 : !BANKType_36 = $00 : !BANKType_37 = $00
!BANKType_38 = $00 : !BANKType_39 = $00 : !BANKType_3A = $00 : !BANKType_3B = $00
!BANKType_3C = $00 : !BANKType_3D = $00 : !BANKType_3E = $00 : !BANKType_3F = $00
!BANKType_40 = $FF : !BANKType_41 = $FF : !BANKType_42 = $FF : !BANKType_43 = $FF
!BANKType_44 = $FF : !BANKType_45 = $FF : !BANKType_46 = $FF : !BANKType_47 = $FF
!BANKType_48 = $FF : !BANKType_49 = $FF : !BANKType_4A = $FF : !BANKType_4B = $FF
!BANKType_4C = $FF : !BANKType_4D = $FF : !BANKType_4E = $FF : !BANKType_4F = $FF
!BANKType_50 = $FF : !BANKType_51 = $FF : !BANKType_52 = $FF : !BANKType_53 = $FF
!BANKType_54 = $FF : !BANKType_55 = $FF : !BANKType_56 = $FF : !BANKType_57 = $FF
!BANKType_58 = $FF : !BANKType_59 = $FF : !BANKType_5A = $FF : !BANKType_5B = $FF
!BANKType_5C = $FF : !BANKType_5D = $FF : !BANKType_5E = $FF : !BANKType_5F = $FF
!BANKType_60 = $FF : !BANKType_61 = $FF : !BANKType_62 = $FF : !BANKType_63 = $FF
!BANKType_64 = $FF : !BANKType_65 = $FF : !BANKType_66 = $FF : !BANKType_67 = $FF
!BANKType_68 = $FF : !BANKType_69 = $FF : !BANKType_6A = $FF : !BANKType_6B = $FF
!BANKType_6C = $FF : !BANKType_6D = $FF : !BANKType_6E = $FF : !BANKType_6F = $FF
!BANKType_70 = $FF : !BANKType_71 = $FF : !BANKType_72 = $FF : !BANKType_73 = $FF
!BANKType_74 = $FF : !BANKType_75 = $FF : !BANKType_76 = $FF : !BANKType_77 = $FF
!BANKType_78 = $FF : !BANKType_79 = $FF : !BANKType_7A = $FF : !BANKType_7B = $FF
!BANKType_7C = $FF : !BANKType_7D = $FF : !BANKType_7E = $FF : !BANKType_7F = $FF
!BANKType_80 = $00 : !BANKType_81 = $00 : !BANKType_82 = $00 : !BANKType_83 = $00
!BANKType_84 = $00 : !BANKType_85 = $00 : !BANKType_86 = $00 : !BANKType_87 = $00
!BANKType_88 = $00 : !BANKType_89 = $00 : !BANKType_8A = $00 : !BANKType_8B = $00
!BANKType_8C = $00 : !BANKType_8D = $00 : !BANKType_8E = $00 : !BANKType_8F = $00
!BANKType_90 = $00 : !BANKType_91 = $00 : !BANKType_92 = $00 : !BANKType_93 = $00
!BANKType_94 = $00 : !BANKType_95 = $00 : !BANKType_96 = $00 : !BANKType_97 = $00
!BANKType_98 = $00 : !BANKType_99 = $00 : !BANKType_9A = $00 : !BANKType_9B = $00
!BANKType_9C = $00 : !BANKType_9D = $00 : !BANKType_9E = $00 : !BANKType_9F = $00
!BANKType_A0 = $00 : !BANKType_A1 = $00 : !BANKType_A2 = $00 : !BANKType_A3 = $00
!BANKType_A4 = $00 : !BANKType_A5 = $00 : !BANKType_A6 = $00 : !BANKType_A7 = $00
!BANKType_A8 = $00 : !BANKType_A9 = $00 : !BANKType_AA = $00 : !BANKType_AB = $00
!BANKType_AC = $00 : !BANKType_AD = $00 : !BANKType_AE = $00 : !BANKType_AF = $00
!BANKType_B0 = $00 : !BANKType_B1 = $00 : !BANKType_B2 = $00 : !BANKType_B3 = $00
!BANKType_B4 = $00 : !BANKType_B5 = $00 : !BANKType_B6 = $00 : !BANKType_B7 = $00
!BANKType_B8 = $00 : !BANKType_B9 = $00 : !BANKType_BA = $00 : !BANKType_BB = $00
!BANKType_BC = $00 : !BANKType_BD = $00 : !BANKType_BE = $00 : !BANKType_BF = $00
!BANKType_C0 = $31 : !BANKType_C1 = $11 : !BANKType_C2 = $11 : !BANKType_C3 = $11
!BANKType_C4 = $11 : !BANKType_C5 = $11 : !BANKType_C6 = $11 : !BANKType_C7 = $11
!BANKType_C8 = $11 : !BANKType_C9 = $11 : !BANKType_CA = $11 : !BANKType_CB = $11
!BANKType_CC = $11 : !BANKType_CD = $11 : !BANKType_CE = $11 : !BANKType_CF = $11
!BANKType_D0 = $11 : !BANKType_D1 = $11 : !BANKType_D2 = $11 : !BANKType_D3 = $11
!BANKType_D4 = $11 : !BANKType_D5 = $11 : !BANKType_D6 = $11 : !BANKType_D7 = $11
!BANKType_D8 = $11 : !BANKType_D9 = $11 : !BANKType_DA = $11 : !BANKType_DB = $11
!BANKType_DC = $11 : !BANKType_DD = $11 : !BANKType_DE = $11 : !BANKType_DF = $11
!BANKType_E0 = $11 : !BANKType_E1 = $11 : !BANKType_E2 = $11 : !BANKType_E3 = $11
!BANKType_E4 = $11 : !BANKType_E5 = $11 : !BANKType_E6 = $11 : !BANKType_E7 = $11
!BANKType_E8 = $11 : !BANKType_E9 = $11 : !BANKType_EA = $11 : !BANKType_EB = $11
!BANKType_EC = $11 : !BANKType_ED = $11 : !BANKType_EE = $11 : !BANKType_EF = $11
!BANKType_F0 = $11 : !BANKType_F1 = $11 : !BANKType_F2 = $11 : !BANKType_F3 = $11
!BANKType_F4 = $11 : !BANKType_F5 = $11 : !BANKType_F6 = $11 : !BANKType_F7 = $11
!BANKType_F8 = $11 : !BANKType_F9 = $11 : !BANKType_FA = $11 : !BANKType_FB = $11
!BANKType_FC = $11 : !BANKType_FD = $11 : !BANKType_FE = $11 : !BANKType_FF = $11

!BANK_00 = 00 : !BANK_01 = 01 : !BANK_02 = 02 : !BANK_03 = 03
!BANK_04 = 04 : !BANK_05 = 05 : !BANK_06 = 06 : !BANK_07 = 07
!BANK_08 = 08 : !BANK_09 = 09 : !BANK_0A = 0A : !BANK_0B = 0B
!BANK_0C = 0C : !BANK_0D = 0D : !BANK_0E = 0E : !BANK_0F = 0F
!BANK_10 = 10 : !BANK_11 = 11 : !BANK_12 = 12 : !BANK_13 = 13
!BANK_14 = 14 : !BANK_15 = 15 : !BANK_16 = 16 : !BANK_17 = 17
!BANK_18 = 18 : !BANK_19 = 19 : !BANK_1A = 1A : !BANK_1B = 1B
!BANK_1C = 1C : !BANK_1D = 1D : !BANK_1E = 1E : !BANK_1F = 1F
!BANK_20 = 20 : !BANK_21 = 21 : !BANK_22 = 22 : !BANK_23 = 23
!BANK_24 = 24 : !BANK_25 = 25 : !BANK_26 = 26 : !BANK_27 = 27
!BANK_28 = 28 : !BANK_29 = 29 : !BANK_2A = 2A : !BANK_2B = 2B
!BANK_2C = 2C : !BANK_2D = 2D : !BANK_2E = 2E : !BANK_2F = 2F
!BANK_30 = 30 : !BANK_31 = 31 : !BANK_32 = 32 : !BANK_33 = 33
!BANK_34 = 34 : !BANK_35 = 35 : !BANK_36 = 36 : !BANK_37 = 37
!BANK_38 = 38 : !BANK_39 = 39 : !BANK_3A = 3A : !BANK_3B = 3B
!BANK_3C = 3C : !BANK_3D = 3D : !BANK_3E = 3E : !BANK_3F = 3F
!BANK_40 = 40 : !BANK_41 = 41 : !BANK_42 = 42 : !BANK_43 = 43
!BANK_44 = 44 : !BANK_45 = 45 : !BANK_46 = 46 : !BANK_47 = 47
!BANK_48 = 48 : !BANK_49 = 49 : !BANK_4A = 4A : !BANK_4B = 4B
!BANK_4C = 4C : !BANK_4D = 4D : !BANK_4E = 4E : !BANK_4F = 4F
!BANK_50 = 50 : !BANK_51 = 51 : !BANK_52 = 52 : !BANK_53 = 53
!BANK_54 = 54 : !BANK_55 = 55 : !BANK_56 = 56 : !BANK_57 = 57
!BANK_58 = 58 : !BANK_59 = 59 : !BANK_5A = 5A : !BANK_5B = 5B
!BANK_5C = 5C : !BANK_5D = 5D : !BANK_5E = 5E : !BANK_5F = 5F
!BANK_60 = 60 : !BANK_61 = 61 : !BANK_62 = 62 : !BANK_63 = 63
!BANK_64 = 64 : !BANK_65 = 65 : !BANK_66 = 66 : !BANK_67 = 67
!BANK_68 = 68 : !BANK_69 = 69 : !BANK_6A = 6A : !BANK_6B = 6B
!BANK_6C = 6C : !BANK_6D = 6D : !BANK_6E = 6E : !BANK_6F = 6F
!BANK_70 = 70 : !BANK_71 = 71 : !BANK_72 = 72 : !BANK_73 = 73
!BANK_74 = 74 : !BANK_75 = 75 : !BANK_76 = 76 : !BANK_77 = 77
!BANK_78 = 78 : !BANK_79 = 79 : !BANK_7A = 7A : !BANK_7B = 7B
!BANK_7C = 7C : !BANK_7D = 7D : !BANK_7E = 7E : !BANK_7F = 7F
!BANK_80 = 80 : !BANK_81 = 81 : !BANK_82 = 82 : !BANK_83 = 83
!BANK_84 = 84 : !BANK_85 = 85 : !BANK_86 = 86 : !BANK_87 = 87
!BANK_88 = 88 : !BANK_89 = 89 : !BANK_8A = 8A : !BANK_8B = 8B
!BANK_8C = 8C : !BANK_8D = 8D : !BANK_8E = 8E : !BANK_8F = 8F
!BANK_90 = 90 : !BANK_91 = 91 : !BANK_92 = 92 : !BANK_93 = 93
!BANK_94 = 94 : !BANK_95 = 95 : !BANK_96 = 96 : !BANK_97 = 97
!BANK_98 = 98 : !BANK_99 = 99 : !BANK_9A = 9A : !BANK_9B = 9B
!BANK_9C = 9C : !BANK_9D = 9D : !BANK_9E = 9E : !BANK_9F = 9F
!BANK_A0 = A0 : !BANK_A1 = A1 : !BANK_A2 = A2 : !BANK_A3 = A3
!BANK_A4 = A4 : !BANK_A5 = A5 : !BANK_A6 = A6 : !BANK_A7 = A7
!BANK_A8 = A8 : !BANK_A9 = A9 : !BANK_AA = AA : !BANK_AB = AB
!BANK_AC = AC : !BANK_AD = AD : !BANK_AE = AE : !BANK_AF = AF
!BANK_B0 = B0 : !BANK_B1 = B1 : !BANK_B2 = B2 : !BANK_B3 = B3
!BANK_B4 = B4 : !BANK_B5 = B5 : !BANK_B6 = B6 : !BANK_B7 = B7
!BANK_B8 = B8 : !BANK_B9 = B9 : !BANK_BA = BA : !BANK_BB = BB
!BANK_BC = BC : !BANK_BD = BD : !BANK_BE = BE : !BANK_BF = BF
!BANK_C0 = C0 : !BANK_C1 = C1 : !BANK_C2 = C2 : !BANK_C3 = C3
!BANK_C4 = C4 : !BANK_C5 = C5 : !BANK_C6 = C6 : !BANK_C7 = C7
!BANK_C8 = C8 : !BANK_C9 = C9 : !BANK_CA = CA : !BANK_CB = CB
!BANK_CC = CC : !BANK_CD = CD : !BANK_CE = CE : !BANK_CF = CF
!BANK_D0 = D0 : !BANK_D1 = D1 : !BANK_D2 = D2 : !BANK_D3 = D3
!BANK_D4 = D4 : !BANK_D5 = D5 : !BANK_D6 = D6 : !BANK_D7 = D7
!BANK_D8 = D8 : !BANK_D9 = D9 : !BANK_DA = DA : !BANK_DB = DB
!BANK_DC = DC : !BANK_DD = DD : !BANK_DE = DE : !BANK_DF = DF
!BANK_E0 = E0 : !BANK_E1 = E1 : !BANK_E2 = E2 : !BANK_E3 = E3
!BANK_E4 = E4 : !BANK_E5 = E5 : !BANK_E6 = E6 : !BANK_E7 = E7
!BANK_E8 = E8 : !BANK_E9 = E9 : !BANK_EA = EA : !BANK_EB = EB
!BANK_EC = EC : !BANK_ED = ED : !BANK_EE = EE : !BANK_EF = EF
!BANK_F0 = F0 : !BANK_F1 = F1 : !BANK_F2 = F2 : !BANK_F3 = F3
!BANK_F4 = F4 : !BANK_F5 = F5 : !BANK_F6 = F6 : !BANK_F7 = F7
!BANK_F8 = F8 : !BANK_F9 = F9 : !BANK_FA = FA : !BANK_FB = FB
!BANK_FC = FC : !BANK_FD = FD : !BANK_FE = FE : !BANK_FF = FF
