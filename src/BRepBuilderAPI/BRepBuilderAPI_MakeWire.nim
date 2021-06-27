import brepbuilderapi_types
import ../TopoDS/topods_types

{.push header: "BRepBuilderAPI_MakeWire.hxx".}

proc MakeWire*(): BRepBuilderAPI_MakeWire {.constructor,importcpp: "BRepBuilderAPI_MakeWire::BRepBuilderAPI_MakeWire".}
    ## Constructs an empty wire framework, to which edges are added using the
    ## Add function. As soon as the wire contains one edge, it can return
    ## with the use of the function Wire. Warning The function Error will
    ## return BRepBuilderAPI_EmptyWire if it is called before at least one
    ## edge is added to the wire under construction.

proc MakeWire*(E: TopoDS_Edge): BRepBuilderAPI_MakeWire {.constructor,importcpp: "BRepBuilderAPI_MakeWire::BRepBuilderAPI_MakeWire(@)".}
    ## Make a Wire from an edge.

proc MakeWire*(E1: TopoDS_Edge, E2: TopoDS_Edge): BRepBuilderAPI_MakeWire {.constructor,importcpp: "BRepBuilderAPI_MakeWire::BRepBuilderAPI_MakeWire(@)".}
    ## Make a Wire from two edges.

proc MakeWire*(E1: TopoDS_Edge, E2: TopoDS_Edge, E3: TopoDS_Edge): TopoDS_Wire {.constructor,importcpp: "BRepBuilderAPI_MakeWire::BRepBuilderAPI_MakeWire(@)".}
    ## Make a Wire from three edges.

proc constructBRepBuilderAPI_MakeWire*(E1: TopoDS_Edge, E2: TopoDS_Edge, E3: TopoDS_Edge, E4: TopoDS_Edge): BRepBuilderAPI_MakeWire {.constructor,importcpp: "BRepBuilderAPI_MakeWire::BRepBuilderAPI_MakeWire(@)".}
    ## Make a Wire from four edges. Constructs a wire - from the TopoDS_Wire
    ## W composed of the edge E, or - from edge E, or - from two edges E1 and
    ## E2, or - from three edges E1, E2 and E3, or - from four edges E1, E2,
    ## E3 and E4. Further edges can be added using the function Add. Given
    ## edges are added in a sequence. Each of them must be connectable to the
    ## wire under construction, and so must satisfy the following condition
    ## (unless it is the first edge of the wire): one of its vertices must be
    ## geometrically coincident with one of the vertices of the wire
    ## (provided that the highest tolerance factor is assigned to the two
    ## vertices). It could also be the same vertex. Warning If an edge is not
    ## connectable to the wire under construction it is not added. The
    ## function Error will return BRepBuilderAPI_DisconnectedWire, the
    ## function IsDone will return false and the function Wire will raise an
    ## error, until a new connectable edge is added.

proc constructBRepBuilderAPI_MakeWire*(W: TopoDS_Wire): BRepBuilderAPI_MakeWire {.constructor,importcpp: "BRepBuilderAPI_MakeWire::BRepBuilderAPI_MakeWire(@)".}
    ## Make a Wire from a Wire. Usefull for adding later.

proc constructBRepBuilderAPI_MakeWire*(W: TopoDS_Wire, E: TopoDS_Edge): BRepBuilderAPI_MakeWire {.constructor,importcpp: "BRepBuilderAPI_MakeWire::BRepBuilderAPI_MakeWire(@)".}
    ## Add an edge to a wire.

proc ` new`*(this: var BRepBuilderAPI_MakeWire, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepBuilderAPI_MakeWire, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var BRepBuilderAPI_MakeWire, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var BRepBuilderAPI_MakeWire, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var BRepBuilderAPI_MakeWire, a00: cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepBuilderAPI_MakeWire, a00: pointer, a01: pointer)  {.importcpp: "#  delete #".}

proc add*(this: var BRepBuilderAPI_MakeWire, E: TopoDS_Edge)  {.importcpp: "Add".}
    ## Adds the edge E to the wire under construction. E must be connectable
    ## to the wire under construction, and, unless it is the first edge of
    ## the wire, must satisfy the following condition: one of its vertices
    ## must be geometrically coincident with one of the vertices of the wire
    ## (provided that the highest tolerance factor is assigned to the two
    ## vertices). It could also be the same vertex. Warning If E is not
    ## connectable to the wire under construction it is not added. The
    ## function Error will return BRepBuilderAPI_DisconnectedWire, the
    ## function IsDone will return false and the function Wire will raise an
    ## error, until a new connectable edge is added.

proc add*(this: var BRepBuilderAPI_MakeWire, W: TopoDS_Wire)  {.importcpp: "Add".}
    ## Add the edges of <W> to the current wire.

#[
proc add*(this: var BRepBuilderAPI_MakeWire, L: TopTools_ListOfShape)  {.importcpp: "Add".}
    ## Adds the edges of <L> to the current wire. The edges are not to be
    ## consecutive. But they are to be all connected geometrically or
    ## topologically. If some of them are not connected the Status give
    ## DisconnectedWire but the "Maker" is Done() and you can get the partial
    ## result. (ie connected to the first edgeof the list <L>)

proc isDone*(this: BRepBuilderAPI_MakeWire): Standard_Boolean  {.importcpp: "IsDone".}
    ## Returns true if this algorithm contains a valid wire. IsDone returns
    ## false if: - there are no edges in the wire, or - the last edge which
    ## you tried to add was not connectable.

proc error*(this: BRepBuilderAPI_MakeWire): BRepBuilderAPI_WireError  {.importcpp: "Error".}
    ## Returns the construction status - BRepBuilderAPI_WireDone if the wire
    ## is built, or - another value of the BRepBuilderAPI_WireError
    ## enumeration indicating why the construction failed.
]#
proc wire*(this: var BRepBuilderAPI_MakeWire): TopoDS_Wire  {.importcpp: "Wire".}
    ## Returns the constructed wire; or the part of the wire under
    ## construction already built. Exceptions StdFail_NotDone if a wire is
    ## not built.

proc edge*(this: BRepBuilderAPI_MakeWire): TopoDS_Edge  {.importcpp: "Edge".}
    ## Returns the last edge added to the wire under construction. Warning -
    ## This edge can be different from the original one (the argument of the
    ## function Add, for instance,) - A null edge is returned if there are no
    ## edges in the wire under construction, or if the last edge which you
    ## tried to add was not connectable..

proc vertex*(this: BRepBuilderAPI_MakeWire): TopoDS_Vertex  {.importcpp: "Vertex".}
    ## Returns the last vertex of the last edge added to the wire under
    ## construction. Warning A null vertex is returned if there are no edges
    ## in the wire under construction, or if the last edge which you tried to
    ## add was not connectableR

{.pop.}  # header: "BRepBuilderAPI_MakeWire.hxx"
