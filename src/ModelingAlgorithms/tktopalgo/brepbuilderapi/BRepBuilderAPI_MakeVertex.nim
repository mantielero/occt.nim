import brepbuilderapi_types


type
  BRepBuilderAPI_MakeVertex* {.header: "BRepBuilderAPI_MakeVertex.hxx", importcpp: "BRepBuilderAPI_MakeVertex", byref.} = object #of class BRepBuilderAPI_MakeShape
    ## Describes functions to build BRepBuilder vertices directly from 3D
    ## geometric points. A vertex built using a MakeVertex object is only
    ## composed of a 3D point and a default precision value
    ## (Precision::Confusion()). Later on, 2D representations can be added,
    ## for example, when inserting a vertex in an edge. A MakeVertex object
    ## provides a framework for: - defining and implementing the construction
    ## of a vertex, and - consulting the result.



{.push header: "BRepBuilderAPI_MakeVertex.hxx".}

proc constructBRepBuilderAPI_MakeVertex*(P: gp_Pnt): BRepBuilderAPI_MakeVertex {.constructor,importcpp: "BRepBuilderAPI_MakeVertex::BRepBuilderAPI_MakeVertex(@)".}
    ## Constructs a vertex from point P. Example create a vertex from a 3D
    ## point. gp_Pnt P(0,0,10); TopoDS_Vertex V =
    ## BRepBuilderAPI_MakeVertex(P);

proc ` new`*(this: var BRepBuilderAPI_MakeVertex, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepBuilderAPI_MakeVertex, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var BRepBuilderAPI_MakeVertex, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var BRepBuilderAPI_MakeVertex, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var BRepBuilderAPI_MakeVertex, a00: cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepBuilderAPI_MakeVertex, a00: pointer, a01: pointer)  {.importcpp: "#  delete #".}

proc vertex*(this: var BRepBuilderAPI_MakeVertex): TopoDS_Vertex  {.importcpp: "Vertex".}
    ## Returns the constructed vertex.

{.pop.}  # header: "BRepBuilderAPI_MakeVertex.hxx"
