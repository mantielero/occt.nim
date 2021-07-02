type
  ChFiDS_ChamfMode* {.size: sizeof(cint), importcpp: "ChFiDS_ChamfMode",
                     header: "ChFiDS_ChamfMode.hxx".} = enum
    ChFiDS_ClassicChamfer, ChFiDS_ConstThroatChamfer,
    ChFiDS_ConstThroatWithPenetrationChamfer

