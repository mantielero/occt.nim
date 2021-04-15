import brepbuilderapi_types


type
  BRepBuilderAPI_NurbsConvert* {.header: "BRepBuilderAPI_NurbsConvert.hxx", importcpp: "BRepBuilderAPI_NurbsConvert", byref.} = object #of class BRepBuilderAPI_ModifyShape
    ## Conversion of the complete geometry of a shape (all 3D analytical
    ## representation of surfaces and curves) into NURBS geometry (execpt for
    ## Planes). For example, all curves supporting edges of the basis shape
    ## are converted into BSpline curves, and all surfaces supporting its
    ## faces are converted into BSpline surfaces.



{.push header: "BRepBuilderAPI_NurbsConvert.hxx".}

proc constructBRepBuilderAPI_NurbsConvert*(): BRepBuilderAPI_NurbsConvert {.constructor,importcpp: "BRepBuilderAPI_NurbsConvert::BRepBuilderAPI_NurbsConvert".}
    ## Constructs a framework for converting the geometry of a shape into
    ## NURBS geometry. Use the function Perform to define the shape to
    ## convert.

proc constructBRepBuilderAPI_NurbsConvert*(S: TopoDS_Shape, Copy: Standard_Boolean): BRepBuilderAPI_NurbsConvert {.constructor,importcpp: "BRepBuilderAPI_NurbsConvert::BRepBuilderAPI_NurbsConvert(@)".}
    ## Builds a new shape by converting the geometry of the shape S into
    ## NURBS geometry. Specifically, all curves supporting edges of S are
    ## converted into BSpline curves, and all surfaces supporting its faces
    ## are converted into BSpline surfaces. Use the function Shape to access
    ## the new shape. Note: the constructed framework can be reused to
    ## convert other shapes. You specify these with the function Perform.

proc ` new`*(this: var BRepBuilderAPI_NurbsConvert, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepBuilderAPI_NurbsConvert, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var BRepBuilderAPI_NurbsConvert, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var BRepBuilderAPI_NurbsConvert, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var BRepBuilderAPI_NurbsConvert, a00: cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepBuilderAPI_NurbsConvert, a00: pointer, a01: pointer)  {.importcpp: "#  delete #".}

proc perform*(this: var BRepBuilderAPI_NurbsConvert, S: TopoDS_Shape, Copy: Standard_Boolean)  {.importcpp: "Perform".}
    ## Builds a new shape by converting the geometry of the shape S into
    ## NURBS geometry. Specifically, all curves supporting edges of S are
    ## converted into BSpline curves, and all surfaces supporting its faces
    ## are converted into BSpline surfaces. Use the function Shape to access
    ## the new shape. Note: this framework can be reused to convert other
    ## shapes: you specify them by calling the function Perform again.

proc modified*(this: var BRepBuilderAPI_NurbsConvert, S: TopoDS_Shape): TopTools_ListOfShape  {.importcpp: "Modified".}
    ## Returns the list of shapes modified from the shape <S>.

proc modifiedShape*(this: BRepBuilderAPI_NurbsConvert, S: TopoDS_Shape): TopoDS_Shape  {.importcpp: "ModifiedShape".}
    ## Returns the modified shape corresponding to <S>. S can correspond to
    ## the entire initial shape or to its subshape. Exceptions
    ## Standard_NoSuchObject if S is not the initial shape or a subshape of
    ## the initial shape to which the transformation has been applied.

proc correctVertexTol*(this: var BRepBuilderAPI_NurbsConvert)  {.importcpp: "CorrectVertexTol".}

{.pop.}  # header: "BRepBuilderAPI_NurbsConvert.hxx"
