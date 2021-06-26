import brepbuilderapi_types


type
  BRepBuilderAPI_FindPlane* {.header: "BRepBuilderAPI_FindPlane.hxx", importcpp: "BRepBuilderAPI_FindPlane", byref.} = object
    ## Describes functions to find the plane in which the edges of a given
    ## shape are located. A FindPlane object provides a framework for: -
    ## extracting the edges of a given shape, - implementing the construction
    ## algorithm, and - consulting the result.



{.push header: "BRepBuilderAPI_FindPlane.hxx".}

proc constructBRepBuilderAPI_FindPlane*(): BRepBuilderAPI_FindPlane {.constructor,importcpp: "BRepBuilderAPI_FindPlane::BRepBuilderAPI_FindPlane".}
    ## Initializes an empty algorithm. The function Init is then used to
    ## define the shape.

proc constructBRepBuilderAPI_FindPlane*(S: TopoDS_Shape, Tol: Standard_Real): BRepBuilderAPI_FindPlane {.constructor,importcpp: "BRepBuilderAPI_FindPlane::BRepBuilderAPI_FindPlane(@)".}
    ## Constructs the plane containing the edges of the shape S. A plane is
    ## built only if all the edges are within a distance of less than or
    ## equal to tolerance from a planar surface. This tolerance value is
    ## equal to the larger of the following two values: - Tol, where the
    ## default value is negative, or - the largest of the tolerance values
    ## assigned to the individual edges of S. Use the function Found to
    ## verify that a plane is built. The resulting plane is then retrieved
    ## using the function Plane.

proc ` new`*(this: var BRepBuilderAPI_FindPlane, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepBuilderAPI_FindPlane, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var BRepBuilderAPI_FindPlane, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var BRepBuilderAPI_FindPlane, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var BRepBuilderAPI_FindPlane, a00: cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepBuilderAPI_FindPlane, a00: pointer, a01: pointer)  {.importcpp: "#  delete #".}

proc init*(this: var BRepBuilderAPI_FindPlane, S: TopoDS_Shape, Tol: Standard_Real)  {.importcpp: "Init".}
    ## Constructs the plane containing the edges of the shape S. A plane is
    ## built only if all the edges are within a distance of less than or
    ## equal to tolerance from a planar surface. This tolerance value is
    ## equal to the larger of the following two values: - Tol, where the
    ## default value is negative, or - the largest of the tolerance values
    ## assigned to the individual edges of S. Use the function Found to
    ## verify that a plane is built. The resulting plane is then retrieved
    ## using the function Plane.

proc found*(this: BRepBuilderAPI_FindPlane): Standard_Boolean  {.importcpp: "Found".}
    ## Returns true if a plane containing the edges of the shape is found and
    ## built. Use the function Plane to consult the result.

proc plane*(this: BRepBuilderAPI_FindPlane): handle[Geom_Plane]  {.importcpp: "Plane".}
    ## Returns the plane containing the edges of the shape. Warning Use the
    ## function Found to verify that the plane is built. If a plane is not
    ## found, Plane returns a null handle.

{.pop.}  # header: "BRepBuilderAPI_FindPlane.hxx"
