exhirom
!SRAMBankBaseAddress = $206000
!SRAMBankSize = $2000
!FastROMAddressOffset = $000000
!HiROMAddressOffset = $400000
!SNESHeaderLoc = $40FFB0
!MemoryMapName = "SPC7110 ROM (not fully supported)"
!ROMLayoutHeaderByte = $3A

; Info: --ZYXWVU
; U = LoROM bank (not set)/HiROM bank (set)
; V = Bank is a mirror of Bank&$80.
; W = Bank has already been called flag
; X = Bank is a mirror of Bank&$40
; Y = Nonstandard mirorring.
; Z = Contains SNES Header
; $FF = Invalid bank.

!BANKType_00 = $28 : !BANKType_01 = $08 : !BANKType_02 = $08 : !BANKType_03 = $08
!BANKType_04 = $08 : !BANKType_05 = $08 : !BANKType_06 = $08 : !BANKType_07 = $08
!BANKType_08 = $08 : !BANKType_09 = $08 : !BANKType_0A = $08 : !BANKType_0B = $08
!BANKType_0C = $08 : !BANKType_0D = $08 : !BANKType_0E = $08 : !BANKType_0F = $08
!BANKType_10 = $08 : !BANKType_11 = $08 : !BANKType_12 = $08 : !BANKType_13 = $08
!BANKType_14 = $08 : !BANKType_15 = $08 : !BANKType_16 = $08 : !BANKType_17 = $08
!BANKType_18 = $08 : !BANKType_19 = $08 : !BANKType_1A = $08 : !BANKType_1B = $08
!BANKType_1C = $08 : !BANKType_1D = $08 : !BANKType_1E = $08 : !BANKType_1F = $08
!BANKType_20 = $08 : !BANKType_21 = $08 : !BANKType_22 = $08 : !BANKType_23 = $08
!BANKType_24 = $08 : !BANKType_25 = $08 : !BANKType_26 = $08 : !BANKType_27 = $08
!BANKType_28 = $08 : !BANKType_29 = $08 : !BANKType_2A = $08 : !BANKType_2B = $08
!BANKType_2C = $08 : !BANKType_2D = $08 : !BANKType_2E = $08 : !BANKType_2F = $08
!BANKType_30 = $08 : !BANKType_31 = $08 : !BANKType_32 = $08 : !BANKType_33 = $08
!BANKType_34 = $08 : !BANKType_35 = $08 : !BANKType_36 = $08 : !BANKType_37 = $08
!BANKType_38 = $08 : !BANKType_39 = $08 : !BANKType_3A = $08 : !BANKType_3B = $08
!BANKType_3C = $08 : !BANKType_3D = $08 : !BANKType_3E = $08 : !BANKType_3F = $08
!BANKType_40 = $21 : !BANKType_41 = $01 : !BANKType_42 = $01 : !BANKType_43 = $01
!BANKType_44 = $01 : !BANKType_45 = $01 : !BANKType_46 = $01 : !BANKType_47 = $01
!BANKType_48 = $01 : !BANKType_49 = $01 : !BANKType_4A = $01 : !BANKType_4B = $01
!BANKType_4C = $01 : !BANKType_4D = $01 : !BANKType_4E = $01 : !BANKType_4F = $01
!BANKType_50 = $01 : !BANKType_51 = $01 : !BANKType_52 = $01 : !BANKType_53 = $01
!BANKType_54 = $01 : !BANKType_55 = $01 : !BANKType_56 = $01 : !BANKType_57 = $01
!BANKType_58 = $01 : !BANKType_59 = $01 : !BANKType_5A = $01 : !BANKType_5B = $01
!BANKType_5C = $01 : !BANKType_5D = $01 : !BANKType_5E = $01 : !BANKType_5F = $01
!BANKType_60 = $01 : !BANKType_61 = $01 : !BANKType_62 = $01 : !BANKType_63 = $01
!BANKType_64 = $01 : !BANKType_65 = $01 : !BANKType_66 = $01 : !BANKType_67 = $01
!BANKType_68 = $01 : !BANKType_69 = $01 : !BANKType_6A = $01 : !BANKType_6B = $01
!BANKType_6C = $01 : !BANKType_6D = $01 : !BANKType_6E = $01 : !BANKType_6F = $01
!BANKType_70 = $01 : !BANKType_71 = $01 : !BANKType_72 = $01 : !BANKType_73 = $01
!BANKType_74 = $01 : !BANKType_75 = $01 : !BANKType_76 = $01 : !BANKType_77 = $01
!BANKType_78 = $01 : !BANKType_79 = $01 : !BANKType_7A = $01 : !BANKType_7B = $01
!BANKType_7C = $01 : !BANKType_7D = $01 : !BANKType_7E = $FF : !BANKType_7F = $FF
!BANKType_80 = $2A : !BANKType_81 = $0A : !BANKType_82 = $0A : !BANKType_83 = $0A
!BANKType_84 = $0A : !BANKType_85 = $0A : !BANKType_86 = $0A : !BANKType_87 = $0A
!BANKType_88 = $0A : !BANKType_89 = $0A : !BANKType_8A = $0A : !BANKType_8B = $0A
!BANKType_8C = $0A : !BANKType_8D = $0A : !BANKType_8E = $0A : !BANKType_8F = $0A
!BANKType_90 = $0A : !BANKType_91 = $0A : !BANKType_92 = $0A : !BANKType_93 = $0A
!BANKType_94 = $0A : !BANKType_95 = $0A : !BANKType_96 = $0A : !BANKType_97 = $0A
!BANKType_98 = $0A : !BANKType_99 = $0A : !BANKType_9A = $0A : !BANKType_9B = $0A
!BANKType_9C = $0A : !BANKType_9D = $0A : !BANKType_9E = $0A : !BANKType_9F = $0A
!BANKType_A0 = $0A : !BANKType_A1 = $0A : !BANKType_A2 = $0A : !BANKType_A3 = $0A
!BANKType_A4 = $0A : !BANKType_A5 = $0A : !BANKType_A6 = $0A : !BANKType_A7 = $0A
!BANKType_A8 = $0A : !BANKType_A9 = $0A : !BANKType_AA = $0A : !BANKType_AB = $0A
!BANKType_AC = $0A : !BANKType_AD = $0A : !BANKType_AE = $0A : !BANKType_AF = $0A
!BANKType_B0 = $0A : !BANKType_B1 = $0A : !BANKType_B2 = $0A : !BANKType_B3 = $0A
!BANKType_B4 = $0A : !BANKType_B5 = $0A : !BANKType_B6 = $0A : !BANKType_B7 = $0A
!BANKType_B8 = $0A : !BANKType_B9 = $0A : !BANKType_BA = $0A : !BANKType_BB = $0A
!BANKType_BC = $0A : !BANKType_BD = $0A : !BANKType_BE = $0A : !BANKType_BF = $0A
!BANKType_C0 = $2B : !BANKType_C1 = $0B : !BANKType_C2 = $0B : !BANKType_C3 = $0B
!BANKType_C4 = $0B : !BANKType_C5 = $0B : !BANKType_C6 = $0B : !BANKType_C7 = $0B
!BANKType_C8 = $0B : !BANKType_C9 = $0B : !BANKType_CA = $0B : !BANKType_CB = $0B
!BANKType_CC = $0B : !BANKType_CD = $0B : !BANKType_CE = $0B : !BANKType_CF = $0B
!BANKType_D0 = $0B : !BANKType_D1 = $0B : !BANKType_D2 = $0B : !BANKType_D3 = $0B
!BANKType_D4 = $0B : !BANKType_D5 = $0B : !BANKType_D6 = $0B : !BANKType_D7 = $0B
!BANKType_D8 = $0B : !BANKType_D9 = $0B : !BANKType_DA = $0B : !BANKType_DB = $0B
!BANKType_DC = $0B : !BANKType_DD = $0B : !BANKType_DE = $0B : !BANKType_DF = $0B
!BANKType_E0 = $0B : !BANKType_E1 = $0B : !BANKType_E2 = $0B : !BANKType_E3 = $0B
!BANKType_E4 = $0B : !BANKType_E5 = $0B : !BANKType_E6 = $0B : !BANKType_E7 = $0B
!BANKType_E8 = $0B : !BANKType_E9 = $0B : !BANKType_EA = $0B : !BANKType_EB = $0B
!BANKType_EC = $0B : !BANKType_ED = $0B : !BANKType_EE = $0B : !BANKType_EF = $0B
!BANKType_F0 = $0B : !BANKType_F1 = $0B : !BANKType_F2 = $0B : !BANKType_F3 = $0B
!BANKType_F4 = $0B : !BANKType_F5 = $0B : !BANKType_F6 = $0B : !BANKType_F7 = $0B
!BANKType_F8 = $0B : !BANKType_F9 = $0B : !BANKType_FA = $0B : !BANKType_FB = $0B
!BANKType_FC = $0B : !BANKType_FD = $0B : !BANKType_FE = $01 : !BANKType_FF = $01

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
