type
  BRepFillTransitionStyle* {.size: sizeof(cint),
                            importcpp: "BRepFill_TransitionStyle",
                            header: "BRepFill_TransitionStyle.hxx".} = enum
    BRepFillModified, BRepFillRight, BRepFillRound

