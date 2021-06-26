import brepbuilderapi_types


type
  BRepBuilderAPI_MakeSolid* {.header: "BRepBuilderAPI_MakeSolid.hxx", importcpp: "BRepBuilderAPI_MakeSolid", byref.} = object #of class BRepBuilderAPI_MakeShape
    ## Describes functions to build a solid from shells. A solid is made of
    ## one shell, or a series of shells, which do not intersect each other.
    ## One of these shells constitutes the outside skin of the solid. It may
    ## be closed (a finite solid) or open (an infinite solid). Other shells
    ## form hollows (cavities) in these previous ones. Each must bound a
    ## closed volume. A MakeSolid object provides a framework for: - defining
    ## and implementing the construction of a solid, and - consulting the
    ## result.



{.push header: "BRepBuilderAPI_MakeSolid.hxx".}

proc constructBRepBuilderAPI_MakeSolid*(): BRepBuilderAPI_MakeSolid {.constructor,importcpp: "BRepBuilderAPI_MakeSolid::BRepBuilderAPI_MakeSolid".}
    ## Initializes the construction of a solid. An empty solid is considered
    ## to cover the whole space. The Add function is used to define shells to
    ## bound it.

proc constructBRepBuilderAPI_MakeSolid*(S: TopoDS_CompSolid): BRepBuilderAPI_MakeSolid {.constructor,importcpp: "BRepBuilderAPI_MakeSolid::BRepBuilderAPI_MakeSolid(@)".}
    ## Make a solid from a CompSolid.

proc constructBRepBuilderAPI_MakeSolid*(S: TopoDS_Shell): BRepBuilderAPI_MakeSolid {.constructor,importcpp: "BRepBuilderAPI_MakeSolid::BRepBuilderAPI_MakeSolid(@)".}
    ## Make a solid from a shell.

proc constructBRepBuilderAPI_MakeSolid*(S1: TopoDS_Shell, S2: TopoDS_Shell): BRepBuilderAPI_MakeSolid {.constructor,importcpp: "BRepBuilderAPI_MakeSolid::BRepBuilderAPI_MakeSolid(@)".}
    ## Make a solid from two shells.

proc constructBRepBuilderAPI_MakeSolid*(S1: TopoDS_Shell, S2: TopoDS_Shell, S3: TopoDS_Shell): BRepBuilderAPI_MakeSolid {.constructor,importcpp: "BRepBuilderAPI_MakeSolid::BRepBuilderAPI_MakeSolid(@)".}
    ## Make a solid from three shells. Constructs a solid - covering the
    ## whole space, or - from shell S, or - from two shells S1 and S2, or -
    ## from three shells S1, S2 and S3, or Warning No check is done to verify
    ## the conditions of coherence of the resulting solid. In particular, S1,
    ## S2 (and S3) must not intersect each other. Besides, after all shells
    ## have been added using the Add function, one of these shells should
    ## constitute the outside skin of the solid; it may be closed (a finite
    ## solid) or open (an infinite solid). Other shells form hollows
    ## (cavities) in these previous ones. Each must bound a closed volume.

proc constructBRepBuilderAPI_MakeSolid*(So: TopoDS_Solid): BRepBuilderAPI_MakeSolid {.constructor,importcpp: "BRepBuilderAPI_MakeSolid::BRepBuilderAPI_MakeSolid(@)".}
    ## Make a solid from a solid. Usefull for adding later.

proc constructBRepBuilderAPI_MakeSolid*(So: TopoDS_Solid, S: TopoDS_Shell): BRepBuilderAPI_MakeSolid {.constructor,importcpp: "BRepBuilderAPI_MakeSolid::BRepBuilderAPI_MakeSolid(@)".}
    ## Add a shell to a solid.

proc ` new`*(this: var BRepBuilderAPI_MakeSolid, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepBuilderAPI_MakeSolid, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var BRepBuilderAPI_MakeSolid, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var BRepBuilderAPI_MakeSolid, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var BRepBuilderAPI_MakeSolid, a00: cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepBuilderAPI_MakeSolid, a00: pointer, a01: pointer)  {.importcpp: "#  delete #".}

proc add*(this: var BRepBuilderAPI_MakeSolid, S: TopoDS_Shell)  {.importcpp: "Add".}
    ## Adds the shell to the current solid. Warning No check is done to
    ## verify the conditions of coherence of the resulting solid. In
    ## particular, S must not intersect other shells of the solid under
    ## construction. Besides, after all shells have been added, one of these
    ## shells should constitute the outside skin of the solid. It may be
    ## closed (a finite solid) or open (an infinite solid). Other shells form
    ## hollows (cavities) in these previous ones. Each must bound a closed
    ## volume.

proc isDone*(this: BRepBuilderAPI_MakeSolid): Standard_Boolean  {.importcpp: "IsDone".}
    ## Returns true if the solid is built. For this class, a solid under
    ## construction is always valid. If no shell has been added, it could be
    ## a whole-space solid. However, no check was done to verify the
    ## conditions of coherence of the resulting solid.

proc solid*(this: var BRepBuilderAPI_MakeSolid): TopoDS_Solid  {.importcpp: "Solid".}
    ## Returns the new Solid.

proc isDeleted*(this: var BRepBuilderAPI_MakeSolid, S: TopoDS_Shape): Standard_Boolean  {.importcpp: "IsDeleted".}

{.pop.}  # header: "BRepBuilderAPI_MakeSolid.hxx"
