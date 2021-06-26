{.push header: "BRep_TFace.hxx".}


# Constructors and methods
proc constructor_BRep_TFace*(): BRep_TFace {.constructor,importcpp: "BRep_TFace".}
  ## Creates an empty TFace.

proc surface*(this: BRep_TFace): Handle[Geom_Surface]  {.importcpp: "Surface".}

proc triangulation*(this: BRep_TFace): Handle[Poly_Triangulation]  {.importcpp: "Triangulation".}

proc location*(this: BRep_TFace): TopLoc_Location  {.importcpp: "Location".}

proc tolerance*(this: BRep_TFace): Standard_Real  {.importcpp: "Tolerance".}

proc surface*(this: var BRep_TFace, S: Handle[Geom_Surface])  {.importcpp: "Surface".}

proc triangulation*(this: var BRep_TFace, T: Handle[Poly_Triangulation])  {.importcpp: "Triangulation".}

proc location*(this: var BRep_TFace, L: TopLoc_Location)  {.importcpp: "Location".}

proc tolerance*(this: var BRep_TFace, T: Standard_Real)  {.importcpp: "Tolerance".}

proc naturalRestriction*(this: BRep_TFace): Standard_Boolean  {.importcpp: "NaturalRestriction".}

proc naturalRestriction*(this: var BRep_TFace, N: Standard_Boolean)  {.importcpp: "NaturalRestriction".}

proc emptyCopy*(this: BRep_TFace): Handle[TopoDS_TShape]  {.importcpp: "EmptyCopy".}
  ## Returns a copy of the TShape with no sub-shapes. The new Face has no
  ## triangulation.

proc get_type_name*(this: var BRep_TFace): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var BRep_TFace): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: BRep_TFace): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "BRep_TFace.hxx
