type
  SelectMgrTypeOfDepthTolerance* {.size: sizeof(cint),
                                  importcpp: "SelectMgr_TypeOfDepthTolerance",
                                  header: "SelectMgr_TypeOfDepthTolerance.hxx".} = enum
    SelectMgrTypeOfDepthToleranceUniform,
    SelectMgrTypeOfDepthToleranceUniformPixels,
    SelectMgrTypeOfDepthToleranceSensitivityFactor

