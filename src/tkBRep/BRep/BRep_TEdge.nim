{.push header: "BRep_TEdge.hxx".}


# Constructors and methods
proc constructor_BRep_TEdge*(): BRep_TEdge {.constructor,importcpp: "BRep_TEdge".}
  ## Creates an empty TEdge.

proc tolerance*(this: BRep_TEdge): Standard_Real  {.importcpp: "Tolerance".}

proc tolerance*(this: var BRep_TEdge, T: Standard_Real)  {.importcpp: "Tolerance".}

proc updateTolerance*(this: var BRep_TEdge, T: Standard_Real)  {.importcpp: "UpdateTolerance".}
  ## Sets the tolerance to the max of <T> and the current tolerance.

proc sameParameter*(this: BRep_TEdge): Standard_Boolean  {.importcpp: "SameParameter".}

proc sameParameter*(this: var BRep_TEdge, S: Standard_Boolean)  {.importcpp: "SameParameter".}

proc sameRange*(this: BRep_TEdge): Standard_Boolean  {.importcpp: "SameRange".}

proc sameRange*(this: var BRep_TEdge, S: Standard_Boolean)  {.importcpp: "SameRange".}

proc degenerated*(this: BRep_TEdge): Standard_Boolean  {.importcpp: "Degenerated".}

proc degenerated*(this: var BRep_TEdge, S: Standard_Boolean)  {.importcpp: "Degenerated".}

proc curves*(this: BRep_TEdge): BRep_ListOfCurveRepresentation  {.importcpp: "Curves".}

proc changeCurves*(this: var BRep_TEdge): BRep_ListOfCurveRepresentation  {.importcpp: "ChangeCurves".}

proc emptyCopy*(this: BRep_TEdge): Handle[TopoDS_TShape]  {.importcpp: "EmptyCopy".}
  ## Returns a copy of the TShape with no sub-shapes.

proc get_type_name*(this: var BRep_TEdge): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var BRep_TEdge): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: BRep_TEdge): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "BRep_TEdge.hxx
