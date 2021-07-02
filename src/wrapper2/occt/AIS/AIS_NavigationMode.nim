type
  AIS_NavigationMode* {.size: sizeof(cint), importcpp: "AIS_NavigationMode",
                       header: "AIS_NavigationMode.hxx".} = enum
    AIS_NavigationModeOrbit, AIS_NavigationModeFirstPersonFlight,
    AIS_NavigationModeFirstPersonWalk


const
  AIS_NavigationModeLOWER* = 0
  AIS_NavigationModeUPPER* = aIS_NavigationModeFirstPersonWalk
