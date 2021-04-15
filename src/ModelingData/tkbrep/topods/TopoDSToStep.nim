import topods_types


type
  TopoDSToStep* {.header: "TopoDSToStep.hxx", importcpp: "TopoDSToStep", byref.} = object
    ## This package implements the mapping between CAS.CAD Shape
    ## representation and AP214 Shape Representation. The target schema is
    ## pms_c4 (a subset of AP214)



{.push header: "TopoDSToStep.hxx".}

proc ` new`*(this: var TopoDSToStep, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TopoDSToStep, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TopoDSToStep, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TopoDSToStep, a00: cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep, a00: pointer, a01: pointer)  {.importcpp: "#  delete #".}

proc decodeBuilderError*(this: var TopoDSToStep, E: TopoDSToStep_BuilderError): handle[TCollection_HAsciiString]  {.importcpp: "DecodeBuilderError".}

proc decodeFaceError*(this: var TopoDSToStep, E: TopoDSToStep_MakeFaceError): handle[TCollection_HAsciiString]  {.importcpp: "DecodeFaceError".}

proc decodeWireError*(this: var TopoDSToStep, E: TopoDSToStep_MakeWireError): handle[TCollection_HAsciiString]  {.importcpp: "DecodeWireError".}

proc decodeEdgeError*(this: var TopoDSToStep, E: TopoDSToStep_MakeEdgeError): handle[TCollection_HAsciiString]  {.importcpp: "DecodeEdgeError".}

proc decodeVertexError*(this: var TopoDSToStep, E: TopoDSToStep_MakeVertexError): handle[TCollection_HAsciiString]  {.importcpp: "DecodeVertexError".}
    ## Returns a new shape without undirect surfaces.

proc addResult*(this: var TopoDSToStep, FP: handle[Transfer_FinderProcess], Shape: TopoDS_Shape, entity: handle[Standard_Transient])  {.importcpp: "AddResult".}
    ## Adds an entity into the list of results (binders) for shape stored in
    ## FinderProcess

proc addResult*(this: var TopoDSToStep, FP: handle[Transfer_FinderProcess], Tool: TopoDSToStep_Tool)  {.importcpp: "AddResult".}
    ## Adds all entities recorded in Tool into the map of results (binders)
    ## stored in FinderProcess

{.pop.}  # header: "TopoDSToStep.hxx"
