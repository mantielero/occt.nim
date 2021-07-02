type
  AIS_TypeOfIso* {.size: sizeof(cint), importcpp: "AIS_TypeOfIso",
                  header: "AIS_TypeOfIso.hxx".} = enum
    AIS_TOI_IsoU, AIS_TOI_IsoV, AIS_TOI_Both

