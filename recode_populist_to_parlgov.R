library(tidyverse)
populist = readxl::read_excel(here::here("populist-version-1-20190211.xlsx"))

# Makes populist$Party == party$name_short of ParlGov
populist = populist %>% mutate(Party = case_when(
Party == "FPÖ" ~ "FPO",
Party == "TS" ~ "TS",
Party == "BZÖ" ~ "BZO",
Party == "Martin" ~ "Martin",
Party == "VB" ~ "VB",
Party == "PVDA/PTB" ~ "PvdA",
Party == "LDD" ~ "LD|LDD",
Party == "FN" ~ "FN",
Party == "Ataka" ~ "Ataka",
Party == "GERB" ~ "GERB",
Party == "BBZ/BBT" ~ "BBZ",
Party == "IMRO" ~ "VMRO",
Party == "VMRO-NFSB-Ataka" ~ NA_character_, # Not in ParlGov
Party == "NFSB" ~ "NFSB",
Party == "RZS" ~ "RZS",
Party == "NDSV" ~ "NDSV",
Party == "HL-SR/CL-LP" ~ "CL-LP",
Party == "HSP" ~ "HSP",
Party == "HDSSB" ~ "HDSSB",
Party == "Zivi Zid" ~ "ZZ",
Party == "MOST" ~ "Most",
Party == "AKEL" ~ "AKEL",
Party == "ELAM" ~ "ELAM",
Party == "SYM / SYPOL" ~ "SYM",
Party == "ANO" ~ "ANO",
Party == "Dawn" ~ "UPD", #=Dawn of Direct Democracy?
Party == "SPD" ~ "SPD",
Party == "KSCM" ~ "KSCM",
Party == "SSO" ~ "SSO",
Party == "VV" ~ "VV",
Party == "S-JB" ~ "S-JB",
Party == "SPR-RSC" ~ "SPR-RSC",
Party == "DF" ~ "DF",
Party == "En-O" ~ "En-O",
Party == "SF" ~ "SF",
Party == "FrP" ~ "FrP",
Party == "ERP" ~ "ERP",
Party == "EKRE" ~ NA_character_, # Not in ParlGov
Party == "Ps" ~ NA_character_, # Not in ParlGov
Party == "VAS" ~ "DL|VAS",
Party == "SIN" ~ "UV|SIN",
Party == "FN" ~ "FN",
Party == "PCF/FdG" ~ "PCF",
Party == "FI" ~ "FI",
Party == "Linke" ~ "Li/PDS",
Party == "AfD" ~ "AfD",
Party == "SYRIZA" ~ "SYRIZA",
Party == "ANEL" ~ "ANEL",
Party == "Golden Dawn" ~ "LS-CA",
Party == "KKE" ~ "KKE",
Party == "LAOS" ~ "LAOS",
Party == "SYN" ~ "SYN",
Party == "DIKKI" ~ "DIKKI",
Party == "FIDESZ" ~ NA_character_, #UNCLEAR: Fi-MPSz or Fi+KDNP?
Party == "Jobbik" ~ "Jobbik",
Party == "MIÉP" ~ "MIEP",
Party == "MMP" ~ "MMP",
Party == "Graen" ~ NA_character_, #ICELANDIC ...
Party == "F" ~ NA_character_,
Party == "M" ~ NA_character_,
Party == "FIF" ~ NA_character_,
Party == "B-H" ~ NA_character_,
Party == "Ff" ~ NA_character_,
Party == "Sj" ~ NA_character_,
Party == "SF" ~ NA_character_,
Party == "SP" ~ NA_character_, # ... ICELANDIC END
Party == "PdL" ~ "PLD", #UNCLEAR, SEEMS CLOSEST???
Party == "LN" ~ "LN",
Party == "M5S" ~ "M5S",
Party == "SEL" ~ NA_character_, #NA
Party == "FdI" ~ "FdI-CN",
Party == "RC" ~ NA_character_, # Not in Parl Gov
Party == "PdCI" ~ "PdCI",
Party == "MSFT" ~ "MSFT",
Party == "PRC" ~ "PRC",
Party == "JL" ~ "JL",
Party == "ZRP" ~ NA_character_, # Not in ParlGov
Party == "TT" ~ "TT-LDP",
Party == "TPP" ~ "TPP", #Although Tpp also exists
Party == "DK" ~ "DK",
Party == "DP" ~ "DP",
Party == "LCP" ~ "LCP",
Party == "SPF / Fronto" ~ "SPF",
Party == "ADR" ~ "AR|ADR",
Party == "Dei Lenk" ~ "DL", # UNCLEAR: The Left?
Party == "PVV" ~ "PVV",
Party == "SP" ~ "SP",
Party == "PvdD" ~ "PvdD",
Party == "SGP" ~ "SGP",
Party == "LPF" ~ "LPF",
Party == "50PLUS" ~ "50+",
Party == "FrP" ~ NA_character_, # Norway
Party == "SV" ~ NA_character_,
Party == "SP" ~ NA_character_,
Party == "Rodt" ~ NA_character_,
Party == "KrF" ~ NA_character_, # ..Norway
Party == "PiS" ~ "PiS",
Party == "Kukiz '15" ~ "K",
Party == "LPR" ~ "LPR",
Party == "Liberty" ~ "LP", # UNCLEAR: Libertas Poland?
Party == "Razem" ~ "Razem",
Party == "SRP" ~ "SRP",
Party == "BE" ~ "BE",
Party == "CDU (PEV & PCP)" ~ "CDU", # UNCLEAR: PEV & PCP coded separately in ParlGov
Party == "PRM" ~ "PRM",
Party == "PRU" ~ "PRU",
Party == "PPDD" ~ "PP-DD",
Party == "Smer" ~ "Smer",
Party == "ANO" ~ "ANO",
Party == "SNS" ~ "SNS",
Party == "L'SNS" ~ "LsNS",
Party == "OLaNO" ~ "OLaNO",
Party == "KSS" ~ "KSS",
Party == "SR" ~ "SR",
Party == "SaS" ~ "SaS",
Party == "PSNS" ~ "PSNS",
Party == "ZdLe / L" ~ "ZdLe",
Party == "SNS" ~ "SNS",
Party == "LMS" ~ "LMS",
Party == "Podemos" ~ "P",
Party == "IU" ~ NA_character_, # Not in Parl Gov
Party == "SD" ~ "SD",
Party == "V" ~ "V",
Party == "SVP" ~ NA_character_, #Switzerland
Party == "UKIP" ~ "UKIP",
Party == "Con" ~ "Con",
Party == "DUP" ~ "DUP"
))

write_csv(populist, here::here("populist_parl-gov-compatible.csv"))
