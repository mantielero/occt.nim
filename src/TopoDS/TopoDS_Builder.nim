{.push header: "TopoDS_Builder.hxx".}


# Constructors and methods
proc ` new`*(this: var TopoDS_Builder, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDS_Builder, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TopoDS_Builder, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TopoDS_Builder, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TopoDS_Builder, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDS_Builder, pointer, pointer)  {.importcpp: "#  delete #".}

proc makeWire*(this: TopoDS_Builder, W: var TopoDS_Wire)  {.importcpp: "MakeWire".}
  ## Make an empty Wire.

proc makeShell*(this: TopoDS_Builder, S: var TopoDS_Shell)  {.importcpp: "MakeShell".}
  ## Make an empty Shell.

proc makeSolid*(this: TopoDS_Builder, S: var TopoDS_Solid)  {.importcpp: "MakeSolid".}
  ## Make a Solid covering the whole 3D space.

proc makeCompSolid*(this: TopoDS_Builder, C: var TopoDS_CompSolid)  {.importcpp: "MakeCompSolid".}
  ## Make an empty Composite Solid.

proc makeCompound*(this: TopoDS_Builder, C: var TopoDS_Compound)  {.importcpp: "MakeCompound".}
  ## Make an empty Compound.

proc add*(this: TopoDS_Builder, S: var TopoDS_Shape, C: TopoDS_Shape)  {.importcpp: "Add".}
  ## Add the Shape C in the Shape S. Exceptions - TopoDS_FrozenShape if S
  ## is not free and cannot be modified. - TopoDS__UnCompatibleShapes if S
  ## and C are not compatible.

proc remove*(this: TopoDS_Builder, S: var TopoDS_Shape, C: TopoDS_Shape)  {.importcpp: "Remove".}
  ## Remove the Shape C from the Shape S. Exceptions TopoDS_FrozenShape if
  ## S is frozen and cannot be modified.

proc makeShape*(this: TopoDS_Builder, S: var TopoDS_Shape, T: Handle[TopoDS_TShape])  {.importcpp: "MakeShape".}
  ## The basic method to make a Shape, used by all the Make methods.

{.pop.} # header: "TopoDS_Builder.hxx
