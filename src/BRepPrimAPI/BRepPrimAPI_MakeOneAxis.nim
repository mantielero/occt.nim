import brepprimapi_types
import ../TopoDS/topods_types


{.push header: "BRepPrimAPI_MakeOneAxis.hxx".}


# Constructors and methods
#[
proc ` new`*(this: var BRepPrimAPI_MakeOneAxis, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepPrimAPI_MakeOneAxis, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var BRepPrimAPI_MakeOneAxis, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var BRepPrimAPI_MakeOneAxis, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var BRepPrimAPI_MakeOneAxis, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepPrimAPI_MakeOneAxis, pointer, pointer)  {.importcpp: "#  delete #".}
]#
proc oneAxis*(this: var BRepPrimAPI_MakeOneAxis): pointer  {.importcpp: "OneAxis".}
  ## The inherited commands should provide the algorithm. Returned as a
  ## pointer.

proc build*(this: var BRepPrimAPI_MakeOneAxis)  {.importcpp: "Build".}
  ## Stores the solid in myShape.

proc face*(this: var BRepPrimAPI_MakeOneAxis): TopoDS_Face  {.importcpp: "Face".}
  ## Returns the lateral face of the rotational primitive.

proc shell*(this: var BRepPrimAPI_MakeOneAxis): TopoDS_Shell  {.importcpp: "Shell".}
  ## Returns the constructed rotational primitive as a shell.

proc solid*(this: var BRepPrimAPI_MakeOneAxis): TopoDS_Solid  {.importcpp: "Solid".}
  ## Returns the constructed rotational primitive as a solid.

{.pop.} # header: "BRepPrimAPI_MakeOneAxis.hxx
