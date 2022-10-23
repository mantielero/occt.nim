

type
  BoxObj* {.importcpp: "BRepPrimAPI_MakeBox",
                        header: "BRepPrimAPI_MakeBox.hxx", bycopy.} = object #of BRepBuilderAPI_MakeShape ##
                                                                                                  ## !
                                                                                                  ## Default
                                                                                                  ## constructor

  CylinderObj* {.importcpp: "BRepPrimAPI_MakeCylinder",
                             header: "BRepPrimAPI_MakeCylinder.hxx", bycopy.} = object #of BRepPrimAPI_MakeOneAxis ##
                                                                                                           ## !
                                                                                                           ## Make

  OneAxisObj* {.importcpp: "BRepPrimAPI_MakeOneAxis",
                            header: "BRepPrimAPI_MakeOneAxis.hxx", bycopy.} = object #of BRepBuilderAPI_MakeShape ##
                                                                                                          ## !
                                                                                                          ## The
                                                                                                          ## inherited
                                                                                                          ## commands
                                                                                                          ## should
                                                                                                          ## provide
                                                                                                          ## the
                                                                                                          ## algorithm.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Returned
                                                                                                          ## as
                                                                                                          ## a
                                                                                                          ## pointer.
           
  # FIXME
  BRepPrimWedge* = object
  TopoDS_Shell* = object
  TopoDS_Solid* = object  
  TopoDS_Face* = object   
  TopoDS_Shape* = object 
  BRepPrimCylinder* = object