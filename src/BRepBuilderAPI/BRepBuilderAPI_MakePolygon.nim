import brepbuilderapi_types


type
  BRepBuilderAPI_MakePolygon* {.header: "BRepBuilderAPI_MakePolygon.hxx", importcpp: "BRepBuilderAPI_MakePolygon", byref.} = object #of class BRepBuilderAPI_MakeShape
    ## Describes functions to build polygonal wires. A polygonal wire can be
    ## built from any number of points or vertices, and consists of a
    ## sequence of connected rectilinear edges. When a point or vertex is
    ## added to the polygon if it is identic to the previous point no edge is
    ## built. The method added can be used to test it. Construction of a
    ## Polygonal Wire You can construct: - a complete polygonal wire by
    ## defining all its points or vertices (limited to four), or - an empty
    ## polygonal wire and add its points or vertices in sequence (unlimited
    ## number). A MakePolygon object provides a framework for: - initializing
    ## the construction of a polygonal wire, - adding points or vertices to
    ## the polygonal wire under construction, and - consulting the result.



{.push header: "BRepBuilderAPI_MakePolygon.hxx".}

proc constructBRepBuilderAPI_MakePolygon*(): BRepBuilderAPI_MakePolygon {.constructor,importcpp: "BRepBuilderAPI_MakePolygon::BRepBuilderAPI_MakePolygon".}
    ## Initializes an empty polygonal wire, to which points or vertices are
    ## added using the Add function. As soon as the polygonal wire under
    ## construction contains vertices, it can be consulted using the Wire
    ## function.

proc constructBRepBuilderAPI_MakePolygon*(P1: gp_Pnt, P2: gp_Pnt): BRepBuilderAPI_MakePolygon {.constructor,importcpp: "BRepBuilderAPI_MakePolygon::BRepBuilderAPI_MakePolygon(@)".}

proc constructBRepBuilderAPI_MakePolygon*(P1: gp_Pnt, P2: gp_Pnt, P3: gp_Pnt, Close: Standard_Boolean): BRepBuilderAPI_MakePolygon {.constructor,importcpp: "BRepBuilderAPI_MakePolygon::BRepBuilderAPI_MakePolygon(@)".}

proc constructBRepBuilderAPI_MakePolygon*(P1: gp_Pnt, P2: gp_Pnt, P3: gp_Pnt, P4: gp_Pnt, Close: Standard_Boolean): BRepBuilderAPI_MakePolygon {.constructor,importcpp: "BRepBuilderAPI_MakePolygon::BRepBuilderAPI_MakePolygon(@)".}
    ## Constructs a polygonal wire from 2, 3 or 4 points. Vertices are
    ## automatically created on the given points. The polygonal wire is
    ## closed if Close is true; otherwise it is open. Further vertices can be
    ## added using the Add function. The polygonal wire under construction
    ## can be consulted at any time by using the Wire function. Example //an
    ## open polygon from four points TopoDS_Wire W =
    ## BRepBuilderAPI_MakePolygon(P1,P2,P3,P4); Warning: The process is
    ## equivalent to: - initializing an empty polygonal wire, - and adding
    ## the given points in sequence. Consequently, be careful when using this
    ## function: if the sequence of points p1 - p2 - p1 is found among the
    ## arguments of the constructor, you will create a polygonal wire with
    ## two consecutive coincident edges.

proc constructBRepBuilderAPI_MakePolygon*(V1: TopoDS_Vertex, V2: TopoDS_Vertex): BRepBuilderAPI_MakePolygon {.constructor,importcpp: "BRepBuilderAPI_MakePolygon::BRepBuilderAPI_MakePolygon(@)".}

proc constructBRepBuilderAPI_MakePolygon*(V1: TopoDS_Vertex, V2: TopoDS_Vertex, V3: TopoDS_Vertex, Close: Standard_Boolean): BRepBuilderAPI_MakePolygon {.constructor,importcpp: "BRepBuilderAPI_MakePolygon::BRepBuilderAPI_MakePolygon(@)".}

proc constructBRepBuilderAPI_MakePolygon*(V1: TopoDS_Vertex, V2: TopoDS_Vertex, V3: TopoDS_Vertex, V4: TopoDS_Vertex, Close: Standard_Boolean): BRepBuilderAPI_MakePolygon {.constructor,importcpp: "BRepBuilderAPI_MakePolygon::BRepBuilderAPI_MakePolygon(@)".}
    ## Constructs a polygonal wire from 2, 3 or 4 vertices. The polygonal
    ## wire is closed if Close is true; otherwise it is open (default value).
    ## Further vertices can be added using the Add function. The polygonal
    ## wire under construction can be consulted at any time by using the Wire
    ## function. Example //a closed triangle from three vertices TopoDS_Wire
    ## W = BRepBuilderAPI_MakePolygon(V1,V2,V3,Standard_True); Warning The
    ## process is equivalent to: - initializing an empty polygonal wire, -
    ## then adding the given points in sequence. So be careful, as when using
    ## this function, you could create a polygonal wire with two consecutive
    ## coincident edges if the sequence of vertices v1 - v2 - v1 is found
    ## among the constructor's arguments.

proc ` new`*(this: var BRepBuilderAPI_MakePolygon, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepBuilderAPI_MakePolygon, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var BRepBuilderAPI_MakePolygon, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var BRepBuilderAPI_MakePolygon, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var BRepBuilderAPI_MakePolygon, a00: cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepBuilderAPI_MakePolygon, a00: pointer, a01: pointer)  {.importcpp: "#  delete #".}

proc add*(this: var BRepBuilderAPI_MakePolygon, P: gp_Pnt)  {.importcpp: "Add".}

proc add*(this: var BRepBuilderAPI_MakePolygon, V: TopoDS_Vertex)  {.importcpp: "Add".}
    ## Adds the point P or the vertex V at the end of the polygonal wire
    ## under construction. A vertex is automatically created on the point P.
    ## Warning - When P or V is coincident to the previous vertex, no edge is
    ## built. The method Added can be used to test for this. Neither P nor V
    ## is checked to verify that it is coincident with another vertex than
    ## the last one, of the polygonal wire under construction. It is also
    ## possible to add vertices on a closed polygon (built for example by
    ## using a constructor which declares the polygon closed, or after the
    ## use of the Close function). Consequently, be careful using this
    ## function: you might create: - a polygonal wire with two consecutive
    ## coincident edges, or - a non manifold polygonal wire. - P or V is not
    ## checked to verify if it is coincident with another vertex but the last
    ## one, of the polygonal wire under construction. It is also possible to
    ## add vertices on a closed polygon (built for example by using a
    ## constructor which declares the polygon closed, or after the use of the
    ## Close function). Consequently, be careful when using this function:
    ## you might create: - a polygonal wire with two consecutive coincident
    ## edges, or - a non-manifold polygonal wire.

proc added*(this: BRepBuilderAPI_MakePolygon): Standard_Boolean  {.importcpp: "Added".}
    ## Returns true if the last vertex added to the constructed polygonal
    ## wire is not coincident with the previous one.

proc close*(this: var BRepBuilderAPI_MakePolygon)  {.importcpp: "Close".}
    ## Closes the polygonal wire under construction. Note - this is
    ## equivalent to adding the first vertex to the polygonal wire under
    ## construction.

proc firstVertex*(this: BRepBuilderAPI_MakePolygon): TopoDS_Vertex  {.importcpp: "FirstVertex".}

proc lastVertex*(this: BRepBuilderAPI_MakePolygon): TopoDS_Vertex  {.importcpp: "LastVertex".}
    ## Returns the first or the last vertex of the polygonal wire under
    ## construction. If the constructed polygonal wire is closed, the first
    ## and the last vertices are identical.

proc isDone*(this: BRepBuilderAPI_MakePolygon): Standard_Boolean  {.importcpp: "IsDone".}
    ## Returns true if this algorithm contains a valid polygonal wire (i.e.
    ## if there is at least one edge). IsDone returns false if fewer than two
    ## vertices have been chained together by this construction algorithm.

proc edge*(this: BRepBuilderAPI_MakePolygon): TopoDS_Edge  {.importcpp: "Edge".}
    ## Returns the edge built between the last two points or vertices added
    ## to the constructed polygonal wire under construction. Warning If there
    ## is only one vertex in the polygonal wire, the result is a null edge.

proc wire*(this: var BRepBuilderAPI_MakePolygon): TopoDS_Wire  {.importcpp: "Wire".}
    ## Returns the constructed polygonal wire, or the already built part of
    ## the polygonal wire under construction. Exceptions StdFail_NotDone if
    ## the wire is not built, i.e. if fewer than two vertices have been
    ## chained together by this construction algorithm.

{.pop.}  # header: "BRepBuilderAPI_MakePolygon.hxx"
