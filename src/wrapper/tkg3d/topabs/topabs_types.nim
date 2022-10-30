# PROVIDES: TopAbsOrientation TopAbsShapeEnum TopAbsState TopAbs
# DEPENDS:

type
  TopAbsOrientation* {.size: sizeof(cint), importcpp: "TopAbs_Orientation",
                      header: "TopAbs_Orientation.hxx".} = enum
    TopAbsFORWARD, TopAbsREVERSED, TopAbsINTERNAL, TopAbsEXTERNAL

  TopAbsShapeEnum* {.size: sizeof(cint), importcpp: "TopAbs_ShapeEnum",
                    header: "TopAbs_ShapeEnum.hxx".} = enum
    topAbsCOMPOUND, topAbsCOMPSOLID, topAbsSOLID, topAbsSHELL, topAbsFACE,
    topAbsWIRE, topAbsEDGE, topAbsVERTEX, topAbsSHAPE

  TopAbsState* {.size: sizeof(cint), importcpp: "TopAbs_State",
                header: "TopAbs_State.hxx".} = enum
    TopAbsIN, TopAbsOUT, TopAbsON, TopAbsUNKNOWN

  TopAbs* {.importcpp: "TopAbs", header: "TopAbs.hxx", bycopy.} = object 

