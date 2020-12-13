{.push header: "TopoDSToStep.hxx".}


# Constructors and methods
proc ` new`*(this: var TopoDSToStep, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TopoDSToStep, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TopoDSToStep, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TopoDSToStep, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep, pointer, pointer)  {.importcpp: "#  delete #".}

proc decodeBuilderError*(this: var TopoDSToStep, E: TopoDSToStep_BuilderError): Handle[TCollection_HAsciiString]  {.importcpp: "DecodeBuilderError".}

proc decodeFaceError*(this: var TopoDSToStep, E: TopoDSToStep_MakeFaceError): Handle[TCollection_HAsciiString]  {.importcpp: "DecodeFaceError".}

proc decodeWireError*(this: var TopoDSToStep, E: TopoDSToStep_MakeWireError): Handle[TCollection_HAsciiString]  {.importcpp: "DecodeWireError".}

proc decodeEdgeError*(this: var TopoDSToStep, E: TopoDSToStep_MakeEdgeError): Handle[TCollection_HAsciiString]  {.importcpp: "DecodeEdgeError".}

proc decodeVertexError*(this: var TopoDSToStep, E: TopoDSToStep_MakeVertexError): Handle[TCollection_HAsciiString]  {.importcpp: "DecodeVertexError".}
  ## Returns a new shape without undirect surfaces.

proc addResult*(this: var TopoDSToStep, FP: Handle[Transfer_FinderProcess], Shape: TopoDS_Shape, entity: Handle[Standard_Transient])  {.importcpp: "AddResult".}
  ## Adds an entity into the list of results (binders) for shape stored in
  ## FinderProcess

proc addResult*(this: var TopoDSToStep, FP: Handle[Transfer_FinderProcess], Tool: TopoDSToStep_Tool)  {.importcpp: "AddResult".}
  ## Adds all entities recorded in Tool into the map of results (binders)
  ## stored in FinderProcess

{.pop.} # header: "TopoDSToStep.hxx
