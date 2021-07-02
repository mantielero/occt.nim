type
  AIS_TrihedronSelectionMode* {.size: sizeof(cint),
                               importcpp: "AIS_TrihedronSelectionMode",
                               header: "AIS_TrihedronSelectionMode.hxx".} = enum
    AIS_TrihedronSelectionModeEntireObject = 0,
    AIS_TrihedronSelectionModeOrigin = 1, AIS_TrihedronSelectionModeAxes = 2,
    AIS_TrihedronSelectionModeMainPlanes = 3

