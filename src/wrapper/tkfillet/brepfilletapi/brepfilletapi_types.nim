import ../../tkbrep/brep/brep_types
import ../../tktopalgo/brepbuilderapi/brepbuilderapi_types
type
  BRepFilletAPI_LocalOperation* {.importcpp: "BRepFilletAPI_LocalOperation",
                                 header: "BRepFilletAPI_LocalOperation.hxx",
                                 bycopy.} = object of BRepBuilderAPI_MakeShape 

  BRepFilletAPI_MakeChamfer* {.importcpp: "BRepFilletAPI_MakeChamfer",
                              header: "BRepFilletAPI_MakeChamfer.hxx", bycopy.} = object of BRepFilletAPI_LocalOperation 

  BRepFilletAPI_MakeFillet* {.importcpp: "BRepFilletAPI_MakeFillet",
                             header: "BRepFilletAPI_MakeFillet.hxx", bycopy.} = object of BRepFilletAPI_LocalOperation 
                             header: "BRepFilletAPI_MakeFillet.hxx", bycopy.} = object of BRepFilletAPI_LocalOperation 

                             header: "BRepFilletAPI_MakeFillet.hxx", bycopy.} = object of BRepFilletAPI_LocalOperation 
  BRepFilletAPI_MakeFillet2d* {.importcpp: "BRepFilletAPI_MakeFillet2d",
                               header: "BRepFilletAPI_MakeFillet2d.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape 

