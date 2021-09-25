{.passC:"-I/usr/include/opencascade/" .}
{.experimental: "codeReordering".}
{.experimental: "callOperator".}

include LocalAnalysis
include LocalAnalysis_CurveContinuity
include LocalAnalysis_StatusErrorType
include LocalAnalysis_SurfaceContinuity

