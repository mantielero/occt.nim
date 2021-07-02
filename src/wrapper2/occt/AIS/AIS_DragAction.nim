type
  AIS_DragAction* {.size: sizeof(cint), importcpp: "AIS_DragAction",
                   header: "AIS_DragAction.hxx".} = enum
    AIS_DragActionStart, AIS_DragActionUpdate, AIS_DragActionStop,
    AIS_DragActionAbort

