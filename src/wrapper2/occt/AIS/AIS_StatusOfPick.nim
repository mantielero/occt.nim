type
  AIS_StatusOfPick* {.size: sizeof(cint), importcpp: "AIS_StatusOfPick",
                     header: "AIS_StatusOfPick.hxx".} = enum
    AIS_SOP_Error, AIS_SOP_NothingSelected, AIS_SOP_Removed, AIS_SOP_OneSelected,
    AIS_SOP_SeveralSelected

