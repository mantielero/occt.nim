import topods_types


type
  TopoDS_Iterator* {.header: "TopoDS_Iterator.hxx", importcpp: "TopoDS_Iterator", byref.} = object
    ## Iterates on the underlying shape underlying a given TopoDS_Shape
    ## object, providing access to its component sub-shapes. Each component
    ## shape is returned as a TopoDS_Shape with an orientation, and a
    ## compound of the original values and the relative values.



{.push header: "TopoDS_Iterator.hxx".}

proc constructTopoDS_Iterator*(): TopoDS_Iterator {.constructor,importcpp: "TopoDS_Iterator::TopoDS_Iterator".}
    ## Creates an empty Iterator.

proc constructTopoDS_Iterator*(S: TopoDS_Shape, cumOri: Standard_Boolean, cumLoc: Standard_Boolean): TopoDS_Iterator {.constructor,importcpp: "TopoDS_Iterator::TopoDS_Iterator(@)".}
    ## Creates an Iterator on <S> sub-shapes. Note: - If cumOri is true, the
    ## function composes all sub-shapes with the orientation of S. - If
    ## cumLoc is true, the function multiplies all sub-shapes by the location
    ## of S, i.e. it applies to each sub-shape the transformation that is
    ## associated with S.

proc ` new`*(this: var TopoDS_Iterator, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDS_Iterator, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TopoDS_Iterator, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TopoDS_Iterator, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TopoDS_Iterator, a00: cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDS_Iterator, a00: pointer, a01: pointer)  {.importcpp: "#  delete #".}

proc initialize*(this: var TopoDS_Iterator, S: TopoDS_Shape, cumOri: Standard_Boolean, cumLoc: Standard_Boolean)  {.importcpp: "Initialize".}
    ## Initializes this iterator with shape S. Note: - If cumOri is true, the
    ## function composes all sub-shapes with the orientation of S. - If
    ## cumLoc is true, the function multiplies all sub-shapes by the location
    ## of S, i.e. it applies to each sub-shape the transformation that is
    ## associated with S.

proc more*(this: TopoDS_Iterator): Standard_Boolean  {.importcpp: "More".}
    ## Returns true if there is another sub-shape in the shape which this
    ## iterator is scanning.

proc next*(this: var TopoDS_Iterator)  {.importcpp: "Next".}
    ## Moves on to the next sub-shape in the shape which this iterator is
    ## scanning. Exceptions Standard_NoMoreObject if there are no more sub-
    ## shapes in the shape.

proc value*(this: TopoDS_Iterator): TopoDS_Shape  {.importcpp: "Value".}
    ## Returns the current sub-shape in the shape which this iterator is
    ## scanning. Exceptions Standard_NoSuchObject if there is no current sub-
    ## shape.

{.pop.}  # header: "TopoDS_Iterator.hxx"
