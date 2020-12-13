{.push header: "BRep_TVertex.hxx".}


# Constructors and methods
proc constructor_BRep_TVertex*(): BRep_TVertex {.constructor,importcpp: "BRep_TVertex".}

proc tolerance*(this: BRep_TVertex): Standard_Real  {.importcpp: "Tolerance".}

proc tolerance*(this: var BRep_TVertex, T: Standard_Real)  {.importcpp: "Tolerance".}

proc updateTolerance*(this: var BRep_TVertex, T: Standard_Real)  {.importcpp: "UpdateTolerance".}
  ## Sets the tolerance to the max of <T> and the current tolerance.

proc pnt*(this: BRep_TVertex): gp_Pnt  {.importcpp: "Pnt".}

proc pnt*(this: var BRep_TVertex, P: gp_Pnt)  {.importcpp: "Pnt".}

proc points*(this: BRep_TVertex): BRep_ListOfPointRepresentation  {.importcpp: "Points".}

proc changePoints*(this: var BRep_TVertex): BRep_ListOfPointRepresentation  {.importcpp: "ChangePoints".}

proc emptyCopy*(this: BRep_TVertex): Handle[TopoDS_TShape]  {.importcpp: "EmptyCopy".}
  ## Returns a copy of the TShape with no sub-shapes.

proc get_type_name*(this: var BRep_TVertex): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var BRep_TVertex): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: BRep_TVertex): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "BRep_TVertex.hxx
