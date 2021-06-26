{.push header: "TopoDS.hxx".}


# Constructors and methods
proc ` new`*(this: var TopoDS, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDS, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TopoDS, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TopoDS, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TopoDS, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDS, pointer, pointer)  {.importcpp: "#  delete #".}

proc vertex*(this: var TopoDS, S: TopoDS_Shape): TopoDS_Vertex  {.importcpp: "Vertex".}
  ## Basic tool to access the data structure. Casts shape S to the more
  ## specialized return type, Vertex. Exceptions Standard_TypeMismatch if S
  ## cannot be cast to this return type.

proc vertex*(this: var TopoDS, var TopoDS_Shape): TopoDS_Vertex  {.importcpp: "Vertex".}

proc edge*(this: var TopoDS, S: TopoDS_Shape): TopoDS_Edge  {.importcpp: "Edge".}
  ## Casts shape S to the more specialized return type, Edge Exceptions
  ## Standard_TypeMismatch if S cannot be cast to this return type.

proc edge*(this: var TopoDS, var TopoDS_Shape): TopoDS_Edge  {.importcpp: "Edge".}

proc wire*(this: var TopoDS, S: TopoDS_Shape): TopoDS_Wire  {.importcpp: "Wire".}
  ## Casts shape S to the more specialized return type, Wire. Exceptions
  ## Standard_TypeMismatch if S cannot be cast to this return type.

proc wire*(this: var TopoDS, var TopoDS_Shape): TopoDS_Wire  {.importcpp: "Wire".}

proc face*(this: var TopoDS, S: TopoDS_Shape): TopoDS_Face  {.importcpp: "Face".}
  ## Casts shape S to the more specialized return type, Face. Exceptions
  ## Standard_TypeMismatch if S cannot be cast to this return type.

proc face*(this: var TopoDS, var TopoDS_Shape): TopoDS_Face  {.importcpp: "Face".}

proc shell*(this: var TopoDS, S: TopoDS_Shape): TopoDS_Shell  {.importcpp: "Shell".}
  ## Casts shape S to the more specialized return type, Shell. Exceptions
  ## Standard_TypeMismatch if S cannot be cast to this return type.

proc shell*(this: var TopoDS, var TopoDS_Shape): TopoDS_Shell  {.importcpp: "Shell".}

proc solid*(this: var TopoDS, S: TopoDS_Shape): TopoDS_Solid  {.importcpp: "Solid".}
  ## Casts shape S to the more specialized return type, Solid. Exceptions
  ## Standard_TypeMismatch if S cannot be cast to this return type.

proc solid*(this: var TopoDS, var TopoDS_Shape): TopoDS_Solid  {.importcpp: "Solid".}

proc compSolid*(this: var TopoDS, S: TopoDS_Shape): TopoDS_CompSolid  {.importcpp: "CompSolid".}
  ## Casts shape S to the more specialized return type, CompSolid.
  ## Exceptions Standard_TypeMismatch if S cannot be cast to this return
  ## type.

proc compSolid*(this: var TopoDS, var TopoDS_Shape): TopoDS_CompSolid  {.importcpp: "CompSolid".}

proc compound*(this: var TopoDS, S: TopoDS_Shape): TopoDS_Compound  {.importcpp: "Compound".}
  ## Casts shape S to the more specialized return type, Compound.
  ## Exceptions Standard_TypeMismatch if S cannot be cast to this return
  ## type.

proc compound*(this: var TopoDS, var TopoDS_Shape): TopoDS_Compound  {.importcpp: "Compound".}

{.pop.} # header: "TopoDS.hxx