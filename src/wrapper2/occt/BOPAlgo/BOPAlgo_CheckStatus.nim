type
  BOPAlgoCheckStatus* {.size: sizeof(cint), importcpp: "BOPAlgo_CheckStatus",
                       header: "BOPAlgo_CheckStatus.hxx".} = enum
    BOPAlgoCheckUnknown, BOPAlgoBadType, BOPAlgoSelfIntersect, BOPAlgoTooSmallEdge,
    BOPAlgoNonRecoverableFace, BOPAlgoIncompatibilityOfVertex,
    BOPAlgoIncompatibilityOfEdge, BOPAlgoIncompatibilityOfFace,
    BOPAlgoOperationAborted, BOPAlgoGeomAbsC0, BOPAlgoInvalidCurveOnSurface,
    BOPAlgoNotValid

