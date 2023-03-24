#import ../brepprim/brepprim_types
#import ../brep/brep_types
import ../brepbuilderapi/brepbuilderapi_types
#export ../brepprim/brepprim_types
type
  # I think they should be included in brepprim_types

  BRepPrimAPI_MakeBox* {.importcpp: "BRepPrimAPI_MakeBox",
                        header: "BRepPrimAPI_MakeBox.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape 

  BRepPrimAPI_MakeHalfSpace* {.importcpp: "BRepPrimAPI_MakeHalfSpace",
                              header: "BRepPrimAPI_MakeHalfSpace.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape 

  BRepPrimAPI_MakeOneAxis* {.importcpp: "BRepPrimAPI_MakeOneAxis",
                            header: "BRepPrimAPI_MakeOneAxis.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape 

  BRepPrimAPI_MakeCylinder* {.importcpp: "BRepPrimAPI_MakeCylinder",
                             header: "BRepPrimAPI_MakeCylinder.hxx", bycopy.} = object of BRepPrimAPI_MakeOneAxis 

  BRepPrimAPI_MakeCone* {.importcpp: "BRepPrimAPI_MakeCone",
                         header: "BRepPrimAPI_MakeCone.hxx", bycopy.} = object of BRepPrimAPI_MakeOneAxis 

  BRepPrimAPI_MakeRevolution* {.importcpp: "BRepPrimAPI_MakeRevolution",
                               header: "BRepPrimAPI_MakeRevolution.hxx", bycopy.} = object of BRepPrimAPI_MakeOneAxis 

  BRepPrimAPI_MakeSphere* {.importcpp: "BRepPrimAPI_MakeSphere",
                           header: "BRepPrimAPI_MakeSphere.hxx", bycopy.} = object of BRepPrimAPI_MakeOneAxis 

  BRepPrimAPI_MakeSweep* {.importcpp: "BRepPrimAPI_MakeSweep",
                          header: "BRepPrimAPI_MakeSweep.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape 

  BRepPrimAPI_MakeRevol* {.importcpp: "BRepPrimAPI_MakeRevol",
                          header: "BRepPrimAPI_MakeRevol.hxx", bycopy.} = object of BRepPrimAPI_MakeSweep 

  BRepPrimAPI_MakePrism* {.importcpp: "BRepPrimAPI_MakePrism",
                          header: "BRepPrimAPI_MakePrism.hxx", bycopy.} = object of BRepPrimAPI_MakeSweep 

  BRepPrimAPI_MakeTorus* {.importcpp: "BRepPrimAPI_MakeTorus",
                          header: "BRepPrimAPI_MakeTorus.hxx", bycopy.} = object of BRepPrimAPI_MakeOneAxis 
                          #header: "BRepPrimAPI_MakeTorus.hxx", bycopy.} = object of BRepPrimAPI_MakeOneAxis 

                          #header: "BRepPrimAPI_MakeTorus.hxx", bycopy.} = object of BRepPrimAPI_MakeOneAxis 
  BRepPrimAPI_MakeWedge* {.importcpp: "BRepPrimAPI_MakeWedge",
                          header: "BRepPrimAPI_MakeWedge.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape 

