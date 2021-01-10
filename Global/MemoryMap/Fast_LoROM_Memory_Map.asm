lorom
!SRAMBankBaseAddress = $700000
!SRAMBankSize = $8000
!FastROMAddressOffset = $800000
!HiROMAddressOffset = $000000
!SNESHeaderLoc = $80FFB0
!MemoryMapName = "Fast LoROM"
!ROMLayoutHeaderByte = $30

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
!BANKType_40 = $00 : !BANKType_41 = $00 : !BANKType_42 = $00 : !BANKType_43 = $00
!BANKType_44 = $00 : !BANKType_45 = $00 : !BANKType_46 = $00 : !BANKType_47 = $00
!BANKType_48 = $00 : !BANKType_49 = $00 : !BANKType_4A = $00 : !BANKType_4B = $00
!BANKType_4C = $00 : !BANKType_4D = $00 : !BANKType_4E = $00 : !BANKType_4F = $00
!BANKType_50 = $00 : !BANKType_51 = $00 : !BANKType_52 = $00 : !BANKType_53 = $00
!BANKType_54 = $00 : !BANKType_55 = $00 : !BANKType_56 = $00 : !BANKType_57 = $00
!BANKType_58 = $00 : !BANKType_59 = $00 : !BANKType_5A = $00 : !BANKType_5B = $00
!BANKType_5C = $00 : !BANKType_5D = $00 : !BANKType_5E = $00 : !BANKType_5F = $00
!BANKType_60 = $00 : !BANKType_61 = $00 : !BANKType_62 = $00 : !BANKType_63 = $00
!BANKType_64 = $00 : !BANKType_65 = $00 : !BANKType_66 = $00 : !BANKType_67 = $00
!BANKType_68 = $00 : !BANKType_69 = $00 : !BANKType_6A = $00 : !BANKType_6B = $00
!BANKType_6C = $00 : !BANKType_6D = $00 : !BANKType_6E = $00 : !BANKType_6F = $00
!BANKType_70 = $00 : !BANKType_71 = $00 : !BANKType_72 = $00 : !BANKType_73 = $00
!BANKType_74 = $00 : !BANKType_75 = $00 : !BANKType_76 = $00 : !BANKType_77 = $00
!BANKType_78 = $00 : !BANKType_79 = $00 : !BANKType_7A = $00 : !BANKType_7B = $00
!BANKType_7C = $00 : !BANKType_7D = $00 : !BANKType_7E = $FF : !BANKType_7F = $FF
!BANKType_80 = $22 : !BANKType_81 = $02 : !BANKType_82 = $02 : !BANKType_83 = $02
!BANKType_84 = $02 : !BANKType_85 = $02 : !BANKType_86 = $02 : !BANKType_87 = $02
!BANKType_88 = $02 : !BANKType_89 = $02 : !BANKType_8A = $02 : !BANKType_8B = $02
!BANKType_8C = $02 : !BANKType_8D = $02 : !BANKType_8E = $02 : !BANKType_8F = $02
!BANKType_90 = $02 : !BANKType_91 = $02 : !BANKType_92 = $02 : !BANKType_93 = $02
!BANKType_94 = $02 : !BANKType_95 = $02 : !BANKType_96 = $02 : !BANKType_97 = $02
!BANKType_98 = $02 : !BANKType_99 = $02 : !BANKType_9A = $02 : !BANKType_9B = $02
!BANKType_9C = $02 : !BANKType_9D = $02 : !BANKType_9E = $02 : !BANKType_9F = $02
!BANKType_A0 = $02 : !BANKType_A1 = $02 : !BANKType_A2 = $02 : !BANKType_A3 = $02
!BANKType_A4 = $02 : !BANKType_A5 = $02 : !BANKType_A6 = $02 : !BANKType_A7 = $02
!BANKType_A8 = $02 : !BANKType_A9 = $02 : !BANKType_AA = $02 : !BANKType_AB = $02
!BANKType_AC = $02 : !BANKType_AD = $02 : !BANKType_AE = $02 : !BANKType_AF = $02
!BANKType_B0 = $02 : !BANKType_B1 = $02 : !BANKType_B2 = $02 : !BANKType_B3 = $02
!BANKType_B4 = $02 : !BANKType_B5 = $02 : !BANKType_B6 = $02 : !BANKType_B7 = $02
!BANKType_B8 = $02 : !BANKType_B9 = $02 : !BANKType_BA = $02 : !BANKType_BB = $02
!BANKType_BC = $02 : !BANKType_BD = $02 : !BANKType_BE = $02 : !BANKType_BF = $02
!BANKType_C0 = $02 : !BANKType_C1 = $02 : !BANKType_C2 = $02 : !BANKType_C3 = $02
!BANKType_C4 = $02 : !BANKType_C5 = $02 : !BANKType_C6 = $02 : !BANKType_C7 = $02
!BANKType_C8 = $02 : !BANKType_C9 = $02 : !BANKType_CA = $02 : !BANKType_CB = $02
!BANKType_CC = $02 : !BANKType_CD = $02 : !BANKType_CE = $02 : !BANKType_CF = $02
!BANKType_D0 = $02 : !BANKType_D1 = $02 : !BANKType_D2 = $02 : !BANKType_D3 = $02
!BANKType_D4 = $02 : !BANKType_D5 = $02 : !BANKType_D6 = $02 : !BANKType_D7 = $02
!BANKType_D8 = $02 : !BANKType_D9 = $02 : !BANKType_DA = $02 : !BANKType_DB = $02
!BANKType_DC = $02 : !BANKType_DD = $02 : !BANKType_DE = $02 : !BANKType_DF = $02
!BANKType_E0 = $02 : !BANKType_E1 = $02 : !BANKType_E2 = $02 : !BANKType_E3 = $02
!BANKType_E4 = $02 : !BANKType_E5 = $02 : !BANKType_E6 = $02 : !BANKType_E7 = $02
!BANKType_E8 = $02 : !BANKType_E9 = $02 : !BANKType_EA = $02 : !BANKType_EB = $02
!BANKType_EC = $02 : !BANKType_ED = $02 : !BANKType_EE = $02 : !BANKType_EF = $02
!BANKType_F0 = $02 : !BANKType_F1 = $02 : !BANKType_F2 = $02 : !BANKType_F3 = $02
!BANKType_F4 = $02 : !BANKType_F5 = $02 : !BANKType_F6 = $02 : !BANKType_F7 = $02
!BANKType_F8 = $02 : !BANKType_F9 = $02 : !BANKType_FA = $02 : !BANKType_FB = $02
!BANKType_FC = $02 : !BANKType_FD = $02 : !BANKType_FE = $00 : !BANKType_FF = $00

!BANK_00 = 80 : !BANK_01 = 81 : !BANK_02 = 82 : !BANK_03 = 83
!BANK_04 = 84 : !BANK_05 = 85 : !BANK_06 = 86 : !BANK_07 = 87
!BANK_08 = 88 : !BANK_09 = 89 : !BANK_0A = 8A : !BANK_0B = 8B
!BANK_0C = 8C : !BANK_0D = 8D : !BANK_0E = 8E : !BANK_0F = 8F
!BANK_10 = 90 : !BANK_11 = 91 : !BANK_12 = 92 : !BANK_13 = 93
!BANK_14 = 94 : !BANK_15 = 95 : !BANK_16 = 96 : !BANK_17 = 97
!BANK_18 = 98 : !BANK_19 = 99 : !BANK_1A = 9A : !BANK_1B = 9B
!BANK_1C = 9C : !BANK_1D = 9D : !BANK_1E = 9E : !BANK_1F = 9F
!BANK_20 = A0 : !BANK_21 = A1 : !BANK_22 = A2 : !BANK_23 = A3
!BANK_24 = A4 : !BANK_25 = A5 : !BANK_26 = A6 : !BANK_27 = A7
!BANK_28 = A8 : !BANK_29 = A9 : !BANK_2A = AA : !BANK_2B = AB
!BANK_2C = AC : !BANK_2D = AD : !BANK_2E = AE : !BANK_2F = AF
!BANK_30 = B0 : !BANK_31 = B1 : !BANK_32 = B2 : !BANK_33 = B3
!BANK_34 = B4 : !BANK_35 = B5 : !BANK_36 = B6 : !BANK_37 = B7
!BANK_38 = B8 : !BANK_39 = B9 : !BANK_3A = BA : !BANK_3B = BB
!BANK_3C = BC : !BANK_3D = BD : !BANK_3E = BE : !BANK_3F = BF
!BANK_40 = C0 : !BANK_41 = C1 : !BANK_42 = C2 : !BANK_43 = C3
!BANK_44 = C4 : !BANK_45 = C5 : !BANK_46 = C6 : !BANK_47 = C7
!BANK_48 = C8 : !BANK_49 = C9 : !BANK_4A = CA : !BANK_4B = CB
!BANK_4C = CC : !BANK_4D = CD : !BANK_4E = CE : !BANK_4F = CF
!BANK_50 = D0 : !BANK_51 = D1 : !BANK_52 = D2 : !BANK_53 = D3
!BANK_54 = D4 : !BANK_55 = D5 : !BANK_56 = D6 : !BANK_57 = D7
!BANK_58 = D8 : !BANK_59 = D9 : !BANK_5A = DA : !BANK_5B = DB
!BANK_5C = DC : !BANK_5D = DD : !BANK_5E = DE : !BANK_5F = DF
!BANK_60 = E0 : !BANK_61 = E1 : !BANK_62 = E2 : !BANK_63 = E3
!BANK_64 = E4 : !BANK_65 = E5 : !BANK_66 = E6 : !BANK_67 = E7
!BANK_68 = E8 : !BANK_69 = E9 : !BANK_6A = EA : !BANK_6B = EB
!BANK_6C = EC : !BANK_6D = ED : !BANK_6E = EE : !BANK_6F = EF
!BANK_70 = F0 : !BANK_71 = F1 : !BANK_72 = F2 : !BANK_73 = F3
!BANK_74 = F4 : !BANK_75 = F5 : !BANK_76 = F6 : !BANK_77 = F7
!BANK_78 = F8 : !BANK_79 = F9 : !BANK_7A = FA : !BANK_7B = FB
!BANK_7C = FC : !BANK_7D = FD : !BANK_7E = 7E : !BANK_7F = 7F
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
