import brepbuilderapi_types


type
  BRepBuilderAPI_ModifyShape* {.header: "BRepBuilderAPI_ModifyShape.hxx", importcpp: "BRepBuilderAPI_ModifyShape", byref.} = object #of class BRepBuilderAPI_MakeShape
    ## Implements the methods of MakeShape for the constant topology
    ## modifications. The methods are implemented when the modification uses
    ## a Modifier from BRepTools. Some of them have to be redefined if the
    ## modification is implemented with another tool (see Transform from
    ## BRepBuilderAPI for example). The BRepBuilderAPI package provides the
    ## following frameworks to perform modifications of this sort: -
    ## BRepBuilderAPI_Copy to produce the copy of a shape, -
    ## BRepBuilderAPI_Transform and BRepBuilderAPI_GTransform to apply a
    ## geometric transformation to a shape, - BRepBuilderAPI_NurbsConvert to
    ## convert the whole geometry of a shape into NURBS geometry, -
    ## BRepOffsetAPI_DraftAngle to build a tapered shape.



{.push header: "BRepBuilderAPI_ModifyShape.hxx".}

proc constructBRepBuilderAPI_ModifyShape*(): BRepBuilderAPI_ModifyShape {.constructor,importcpp: "BRepBuilderAPI_ModifyShape::BRepBuilderAPI_ModifyShape".}
    ## Empty constructor.

proc constructBRepBuilderAPI_ModifyShape*(S: TopoDS_Shape): BRepBuilderAPI_ModifyShape {.constructor,importcpp: "BRepBuilderAPI_ModifyShape::BRepBuilderAPI_ModifyShape(@)".}
    ## Initializes the modifier with the Shape <S>, and set the field
    ## <myInitialShape> to <S>.

proc constructBRepBuilderAPI_ModifyShape*(M: handle[BRepTools_Modification]): BRepBuilderAPI_ModifyShape {.constructor,importcpp: "BRepBuilderAPI_ModifyShape::BRepBuilderAPI_ModifyShape(@)".}
    ## Set the field <myModification> with <M>.

proc constructBRepBuilderAPI_ModifyShape*(S: TopoDS_Shape, M: handle[BRepTools_Modification]): BRepBuilderAPI_ModifyShape {.constructor,importcpp: "BRepBuilderAPI_ModifyShape::BRepBuilderAPI_ModifyShape(@)".}
    ## Initializes the modifier with the Shape <S>, and set the field
    ## <myInitialShape> to <S>, and set the field <myModification> with <M>,
    ## the performs the modification.

proc ` new`*(this: var BRepBuilderAPI_ModifyShape, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepBuilderAPI_ModifyShape, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var BRepBuilderAPI_ModifyShape, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var BRepBuilderAPI_ModifyShape, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var BRepBuilderAPI_ModifyShape, a00: cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepBuilderAPI_ModifyShape, a00: pointer, a01: pointer)  {.importcpp: "#  delete #".}

proc modified*(this: var BRepBuilderAPI_ModifyShape, S: TopoDS_Shape): TopTools_ListOfShape  {.importcpp: "Modified".}
    ## Returns the list of shapes modified from the shape <S>.

proc modifiedShape*(this: BRepBuilderAPI_ModifyShape, S: TopoDS_Shape): TopoDS_Shape  {.importcpp: "ModifiedShape".}
    ## Returns the modified shape corresponding to <S>. S can correspond to
    ## the entire initial shape or to its subshape. Exceptions
    ## Standard_NoSuchObject if S is not the initial shape or a subshape of
    ## the initial shape to which the transformation has been applied. Raises
    ## NoSuchObject from Standard if S is not the initial shape or a sub-
    ## shape of the initial shape.

proc doModif*(this: var BRepBuilderAPI_ModifyShape, S: TopoDS_Shape)  {.importcpp: "DoModif".}
    ## Performs the previously given modification on the shape <S>.

proc doModif*(this: var BRepBuilderAPI_ModifyShape, M: handle[BRepTools_Modification])  {.importcpp: "DoModif".}
    ## Performs the modification <M> on a previously given shape.

proc doModif*(this: var BRepBuilderAPI_ModifyShape, S: TopoDS_Shape, M: handle[BRepTools_Modification])  {.importcpp: "DoModif".}
    ## Performs the modification <M> on the shape <S>.

proc doModif*(this: var BRepBuilderAPI_ModifyShape)  {.importcpp: "DoModif".}

{.pop.}  # header: "BRepBuilderAPI_ModifyShape.hxx"
