import brepbuilderapi_types


type
  BRepBuilderAPI* {.header: "BRepBuilderAPI.hxx", importcpp: "BRepBuilderAPI", byref.} = object
    ## The BRepBuilderAPI package provides an Application Programming
    ## Interface for the BRep topology data structure.



{.push header: "BRepBuilderAPI.hxx".}

proc ` new`*(this: var BRepBuilderAPI, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepBuilderAPI, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var BRepBuilderAPI, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var BRepBuilderAPI, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var BRepBuilderAPI, a00: cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepBuilderAPI, a00: pointer, a01: pointer)  {.importcpp: "#  delete #".}

proc plane*(this: var BRepBuilderAPI, P: handle[Geom_Plane])  {.importcpp: "Plane".}
    ## Sets the current plane.

proc plane*(this: var BRepBuilderAPI): handle[Geom_Plane]  {.importcpp: "Plane".}
    ## Returns the current plane.

proc precision*(this: var BRepBuilderAPI, P: Standard_Real)  {.importcpp: "Precision".}
    ## Sets the default precision. The current Precision is returned.

proc precision*(this: var BRepBuilderAPI): Standard_Real  {.importcpp: "Precision".}
    ## Returns the default precision.

{.pop.}  # header: "BRepBuilderAPI.hxx"
