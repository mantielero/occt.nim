type
  ChFi2d* {.importcpp: "ChFi2d", header: "ChFi2d.hxx", bycopy.} = object

  ChFi2dConstructionError* {.size: sizeof(cint),
                            importcpp: "ChFi2d_ConstructionError",
                            header: "ChFi2d_ConstructionError.hxx".} = enum
    ChFi2dNotPlanar, ChFi2dNoFace, ChFi2dInitialisationError,
    ChFi2dParametersError, ChFi2dReady, ChFi2dIsDone, ChFi2dComputationError,
    ChFi2dConnexionError, ChFi2dTangencyError, ChFi2dFirstEdgeDegenerated,
    ChFi2dLastEdgeDegenerated, ChFi2dBothEdgesDegenerated, ChFi2dNotAuthorized

  ChFi2dAnaFilletAlgo* {.importcpp: "ChFi2d_AnaFilletAlgo",
                        header: "ChFi2d_AnaFilletAlgo.hxx", bycopy.} = object 

  ChFi2dBuilder* {.importcpp: "ChFi2d_Builder", header: "ChFi2d_Builder.hxx", bycopy.} = object 

  ChFi2dChamferAPI* {.importcpp: "ChFi2d_ChamferAPI",
                     header: "ChFi2d_ChamferAPI.hxx", bycopy.} = object 

  ChFi2dFilletAlgo* {.importcpp: "ChFi2d_FilletAlgo",
                     header: "ChFi2d_FilletAlgo.hxx", bycopy.} = object 

  FilletPoint* {.importcpp: "FilletPoint", header: "ChFi2d_FilletAlgo.hxx", bycopy.} = object 

  #FilletPoint* {.importcpp: "FilletPoint", header: "ChFi2d_FilletAlgo.hxx", bycopy.} = object 
  ChFi2dFilletAPI* {.importcpp: "ChFi2d_FilletAPI", header: "ChFi2d_FilletAPI.hxx",
                    bycopy.} = object 

