import topods_types

{.push header: "TopoDS.hxx".}


# Constructors and methods
#[
proc ` new`*(this: var TopoDS, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDS, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TopoDS, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TopoDS, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TopoDS, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDS, pointer, pointer)  {.importcpp: "#  delete #".}
]#

#this: var TopoDS,
proc vertex*( S: TopoDS_Shape): TopoDS_Vertex  {.importcpp: "TopoDS::Vertex(@)".}
  ## Basic tool to access the data structure. Casts shape S to the more
  ## specialized return type, Vertex. Exceptions Standard_TypeMismatch if S
  ## cannot be cast to this return type.

#proc vertex*(this: var TopoDS, a:var TopoDS_Shape): TopoDS_Vertex  {.importcpp: "Vertex".}

#this: var TopoDS,
proc edge*( S: TopoDS_Shape): TopoDS_Edge  {.importcpp: "TopoDS::Edge(@)".}
  ## Casts shape S to the more specialized return type, Edge Exceptions
  ## Standard_TypeMismatch if S cannot be cast to this return type.

# this: var TopoDS,
#proc edge*( a:TopoDS_Shape): TopoDS_Edge  {.importcpp: "TopoDS::Edge(@)".}

#this: var TopoDS,
proc wire*(S: TopoDS_Shape): TopoDS_Wire  {.importcpp: "TopoDS::Wire(@)".}
  ## Casts shape S to the more specialized return type, Wire. Exceptions
  ## Standard_TypeMismatch if S cannot be cast to this return type.

#proc wire*(this: var TopoDS, a:var TopoDS_Shape): TopoDS_Wire  {.importcpp: "Wire".}

#this: var TopoDS, 
proc face*(S: TopoDS_Shape): TopoDS_Face  {.importcpp: "TopoDS::Face(@)".}
  ## Casts shape S to the more specialized return type, Face. Exceptions
  ## Standard_TypeMismatch if S cannot be cast to this return type.

#proc face*(this: var TopoDS, a:var TopoDS_Shape): TopoDS_Face  {.importcpp: "Face".}

#this: var TopoDS, 
proc shell*(S: TopoDS_Shape): TopoDS_Shell  {.importcpp: "TopoDS::Shell(@)".}
  ## Casts shape S to the more specialized return type, Shell. Exceptions
  ## Standard_TypeMismatch if S cannot be cast to this return type.

#proc shell*(this: var TopoDS, a:var TopoDS_Shape): TopoDS_Shell  {.importcpp: "Shell".}

#this: var TopoDS,
proc solid*( S: TopoDS_Shape): TopoDS_Solid  {.importcpp: "TopoDS::Solid(@)".}
  ## Casts shape S to the more specialized return type, Solid. Exceptions
  ## Standard_TypeMismatch if S cannot be cast to this return type.

#proc solid*(this: var TopoDS, a:var TopoDS_Shape): TopoDS_Solid  {.importcpp: "Solid".}

#this: var TopoDS,
proc compSolid*( S: TopoDS_Shape): TopoDS_CompSolid  {.importcpp: "TopoDS::CompSolid(@)".}
  ## Casts shape S to the more specialized return type, CompSolid.
  ## Exceptions Standard_TypeMismatch if S cannot be cast to this return
  ## type.

#this: var TopoDS, 
#proc compSolid*(a:var TopoDS_Shape): TopoDS_CompSolid  {.importcpp: "TopoDS::CompSolid(@)".}

#this: var TopoDS, 
proc compound*(S: TopoDS_Shape): TopoDS_Compound  {.importcpp: "TopoDS::Compound(@)".}
  ## Casts shape S to the more specialized return type, Compound.
  ## Exceptions Standard_TypeMismatch if S cannot be cast to this return
  ## type.

#proc compound*(this: var TopoDS, a:var TopoDS_Shape): TopoDS_Compound  {.importcpp: "Compound".}

{.pop.} # header: "TopoDS.hxx
