type
  BRepFeatStatusError* {.size: sizeof(cint), importcpp: "BRepFeat_StatusError",
                        header: "BRepFeat_StatusError.hxx".} = enum
    BRepFeatOK, BRepFeatBadDirect, BRepFeatBadIntersect, BRepFeatEmptyBaryCurve,
    BRepFeatEmptyCutResult, BRepFeatFalseSide, BRepFeatIncDirection,
    BRepFeatIncSlidFace, BRepFeatIncParameter, BRepFeatIncTypes,
    BRepFeatIntervalOverlap, BRepFeatInvFirstShape, BRepFeatInvOption,
    BRepFeatInvShape, BRepFeatLocOpeNotDone, BRepFeatLocOpeInvNotDone,
    BRepFeatNoExtFace, BRepFeatNoFaceProf, BRepFeatNoGluer, BRepFeatNoIntersectF,
    BRepFeatNoIntersectU, BRepFeatNoParts, BRepFeatNoProjPt,
    BRepFeatNotInitialized, BRepFeatNotYetImplemented, BRepFeatNullRealTool,
    BRepFeatNullToolF, BRepFeatNullToolU

