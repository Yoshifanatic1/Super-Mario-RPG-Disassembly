hirom
!SRAMBankBaseAddress = $206000
!SRAMBankSize = $2000
!FastROMAddressOffset = $000000
!HiROMAddressOffset = $400000
!SNESHeaderLoc = $40FFB0
!MemoryMapName = "HiROM"
!ROMLayoutHeaderByte = $21

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

!BANK_00 = 40 : !BANK_01 = 41 : !BANK_02 = 42 : !BANK_03 = 43
!BANK_04 = 44 : !BANK_05 = 45 : !BANK_06 = 46 : !BANK_07 = 47
!BANK_08 = 48 : !BANK_09 = 49 : !BANK_0A = 4A : !BANK_0B = 4B
!BANK_0C = 4C : !BANK_0D = 4D : !BANK_0E = 4E : !BANK_0F = 4F
!BANK_10 = 50 : !BANK_11 = 51 : !BANK_12 = 52 : !BANK_13 = 53
!BANK_14 = 54 : !BANK_15 = 55 : !BANK_16 = 56 : !BANK_17 = 57
!BANK_18 = 58 : !BANK_19 = 59 : !BANK_1A = 5A : !BANK_1B = 5B
!BANK_1C = 5C : !BANK_1D = 5D : !BANK_1E = 5E : !BANK_1F = 5F
!BANK_20 = 60 : !BANK_21 = 61 : !BANK_22 = 62 : !BANK_23 = 63
!BANK_24 = 64 : !BANK_25 = 65 : !BANK_26 = 66 : !BANK_27 = 67
!BANK_28 = 68 : !BANK_29 = 69 : !BANK_2A = 6A : !BANK_2B = 6B
!BANK_2C = 6C : !BANK_2D = 6D : !BANK_2E = 6E : !BANK_2F = 6F
!BANK_30 = 70 : !BANK_31 = 71 : !BANK_32 = 72 : !BANK_33 = 73
!BANK_34 = 74 : !BANK_35 = 75 : !BANK_36 = 76 : !BANK_37 = 77
!BANK_38 = 78 : !BANK_39 = 79 : !BANK_3A = 7A : !BANK_3B = 7B
!BANK_3C = 7C : !BANK_3D = 7D : !BANK_3E = 7E : !BANK_3F = 7F
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
!BANK_80 = C0 : !BANK_81 = C1 : !BANK_82 = C2 : !BANK_83 = C3
!BANK_84 = C4 : !BANK_85 = C5 : !BANK_86 = C6 : !BANK_87 = C7
!BANK_88 = C8 : !BANK_89 = C9 : !BANK_8A = CA : !BANK_8B = CB
!BANK_8C = CC : !BANK_8D = CD : !BANK_8E = CE : !BANK_8F = CF
!BANK_90 = D0 : !BANK_91 = D1 : !BANK_92 = D2 : !BANK_93 = D3
!BANK_94 = D4 : !BANK_95 = D5 : !BANK_96 = D6 : !BANK_97 = D7
!BANK_98 = D8 : !BANK_99 = D9 : !BANK_9A = DA : !BANK_9B = DB
!BANK_9C = DC : !BANK_9D = DD : !BANK_9E = DE : !BANK_9F = DF
!BANK_A0 = E0 : !BANK_A1 = E1 : !BANK_A2 = E2 : !BANK_A3 = E3
!BANK_A4 = E4 : !BANK_A5 = E5 : !BANK_A6 = E6 : !BANK_A7 = E7
!BANK_A8 = E8 : !BANK_A9 = E9 : !BANK_AA = EA : !BANK_AB = EB
!BANK_AC = EC : !BANK_AD = ED : !BANK_AE = EE : !BANK_AF = EF
!BANK_B0 = F0 : !BANK_B1 = F1 : !BANK_B2 = F2 : !BANK_B3 = F3
!BANK_B4 = F4 : !BANK_B5 = F5 : !BANK_B6 = F6 : !BANK_B7 = F7
!BANK_B8 = F8 : !BANK_B9 = F9 : !BANK_BA = FA : !BANK_BB = FB
!BANK_BC = FC : !BANK_BD = FD : !BANK_BE = FE : !BANK_BF = FF
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
