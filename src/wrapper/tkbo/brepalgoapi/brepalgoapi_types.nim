import ../bopalgo/bopalgo_types
import ../../tkbrep/brep/brep_types
import ../../tktopalgo/brepbuilderapi/brepbuilderapi_types

type
  BRepAlgoAPI_Algo* {.importcpp: "BRepAlgoAPI_Algo",
                     header: "BRepAlgoAPI_Algo.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape 

  BRepAlgoAPI_BuilderAlgo* {.importcpp: "BRepAlgoAPI_BuilderAlgo",
                            header: "BRepAlgoAPI_BuilderAlgo.hxx", bycopy.} = object of BRepAlgoAPI_Algo 

  BRepAlgoAPI_BooleanOperation* {.importcpp: "BRepAlgoAPI_BooleanOperation",
                                 header: "BRepAlgoAPI_BooleanOperation.hxx",
                                 bycopy.} = object of BRepAlgoAPI_BuilderAlgo 

  BRepAlgoAPI_Check* {.importcpp: "BRepAlgoAPI_Check",
                      header: "BRepAlgoAPI_Check.hxx", bycopy.} = object of BOPAlgoOptions 

  BRepAlgoAPI_Common* {.importcpp: "BRepAlgoAPI_Common",
                       header: "BRepAlgoAPI_Common.hxx", bycopy.} = object of BRepAlgoAPI_BooleanOperation 

  BRepAlgoAPI_Cut* {.importcpp: "BRepAlgoAPI_Cut", header: "BRepAlgoAPI_Cut.hxx",
                    bycopy.} = object of BRepAlgoAPI_BooleanOperation 

  BRepAlgoAPI_Defeaturing* {.importcpp: "BRepAlgoAPI_Defeaturing",
                            header: "BRepAlgoAPI_Defeaturing.hxx", bycopy.} = object of BRepAlgoAPI_Algo 

  BRepAlgoAPI_Fuse* {.importcpp: "BRepAlgoAPI_Fuse",
                     header: "BRepAlgoAPI_Fuse.hxx", bycopy.} = object of BRepAlgoAPI_BooleanOperation 

  BRepAlgoAPI_Section* {.importcpp: "BRepAlgoAPI_Section",
                        header: "BRepAlgoAPI_Section.hxx", bycopy.} = object of BRepAlgoAPI_BooleanOperation 
                        #header: "BRepAlgoAPI_Section.hxx", bycopy.} = object of BRepAlgoAPI_BooleanOperation 
                        #header: "BRepAlgoAPI_Section.hxx", bycopy.} = object of BRepAlgoAPI_BooleanOperation 

                        #header: "BRepAlgoAPI_Section.hxx", bycopy.} = object of BRepAlgoAPI_BooleanOperation 
  BRepAlgoAPI_Splitter* {.importcpp: "BRepAlgoAPI_Splitter",
                         header: "BRepAlgoAPI_Splitter.hxx", bycopy.} = object of BRepAlgoAPI_BuilderAlgo 

