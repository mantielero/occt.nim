type
  AIS_TypeOfAxis* {.size: sizeof(cint), importcpp: "AIS_TypeOfAxis",
                   header: "AIS_TypeOfAxis.hxx".} = enum
    AIS_TOAX_Unknown, AIS_TOAX_XAxis, AIS_TOAX_YAxis, AIS_TOAX_ZAxis

