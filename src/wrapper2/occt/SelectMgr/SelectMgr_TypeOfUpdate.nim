type
  SelectMgrTypeOfUpdate* {.size: sizeof(cint), importcpp: "SelectMgr_TypeOfUpdate",
                          header: "SelectMgr_TypeOfUpdate.hxx".} = enum
    SelectMgrTOU_Full, SelectMgrTOU_Partial, SelectMgrTOU_None

