import brepbuilderapi_types


type
  BRepBuilderAPI_Copy* {.header: "BRepBuilderAPI_Copy.hxx", importcpp: "BRepBuilderAPI_Copy", byref.} = object #of class BRepBuilderAPI_ModifyShape
    ## Duplication of a shape. A Copy object provides a framework for: -
    ## defining the construction of a duplicate shape, - implementing the
    ## construction algorithm, and - consulting the result.



{.push header: "BRepBuilderAPI_Copy.hxx".}

proc constructBRepBuilderAPI_Copy*(): BRepBuilderAPI_Copy {.constructor,importcpp: "BRepBuilderAPI_Copy::BRepBuilderAPI_Copy".}
    ## Constructs an empty copy framework. Use the function Perform to copy
    ## shapes.

proc constructBRepBuilderAPI_Copy*(S: TopoDS_Shape, copyGeom: Standard_Boolean, copyMesh: Standard_Boolean): BRepBuilderAPI_Copy {.constructor,importcpp: "BRepBuilderAPI_Copy::BRepBuilderAPI_Copy(@)".}
    ## Constructs a copy framework and copies the shape S. Use the function
    ## Shape to access the result. If copyMesh is True, triangulation
    ## contained in original shape will be copied along with geometry (by
    ## default, triangulation gets lost). If copyGeom is False, only
    ## topological objects will be copied, while geometry and triangulation
    ## will be shared with original shape. Note: the constructed framework
    ## can be reused to copy other shapes: just specify them with the
    ## function Perform.

proc ` new`*(this: var BRepBuilderAPI_Copy, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepBuilderAPI_Copy, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var BRepBuilderAPI_Copy, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var BRepBuilderAPI_Copy, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var BRepBuilderAPI_Copy, a00: cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepBuilderAPI_Copy, a00: pointer, a01: pointer)  {.importcpp: "#  delete #".}

proc perform*(this: var BRepBuilderAPI_Copy, S: TopoDS_Shape, copyGeom: Standard_Boolean, copyMesh: Standard_Boolean)  {.importcpp: "Perform".}
    ## Copies the shape S. Use the function Shape to access the result. If
    ## copyMesh is True, triangulation contained in original shape will be
    ## copied along with geometry (by default, triangulation gets lost). If
    ## copyGeom is False, only topological objects will be copied, while
    ## geometry and triangulation will be shared with original shape.

{.pop.}  # header: "BRepBuilderAPI_Copy.hxx"
