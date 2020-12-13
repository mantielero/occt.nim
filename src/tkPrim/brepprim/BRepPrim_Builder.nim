{.push header: "BRepPrim_Builder.hxx".}


# Constructors and methods
proc constructor_BRepPrim_Builder*(): BRepPrim_Builder {.constructor,importcpp: "BRepPrim_Builder".}
  ## Creates an empty, useless Builder. Necesseray for compilation.

proc constructor_BRepPrim_Builder*(B: BRep_Builder): BRepPrim_Builder {.constructor,importcpp: "BRepPrim_Builder(@)".}
  ## Creates from a Builder.
#[
proc ` new`*(this: var BRepPrim_Builder, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepPrim_Builder, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var BRepPrim_Builder, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var BRepPrim_Builder, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var BRepPrim_Builder, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepPrim_Builder, pointer, pointer)  {.importcpp: "#  delete #".}
]#
proc builder*(this: BRepPrim_Builder): BRep_Builder  {.importcpp: "Builder".}

proc makeShell*(this: BRepPrim_Builder, S: var TopoDS_Shell)  {.importcpp: "MakeShell".}
  ## Make a empty Shell.

proc makeFace*(this: BRepPrim_Builder, F: var TopoDS_Face, P: gp_Pln)  {.importcpp: "MakeFace".}
  ## Returns in <F> a Face built with the plane equation <P>. Used by all
  ## primitives.

proc makeWire*(this: BRepPrim_Builder, W: var TopoDS_Wire)  {.importcpp: "MakeWire".}
  ## Returns in <W> an empty Wire.

proc makeDegeneratedEdge*(this: BRepPrim_Builder, E: var TopoDS_Edge)  {.importcpp: "MakeDegeneratedEdge".}
  ## Returns in <E> a degenerated edge.

proc makeEdge*(this: BRepPrim_Builder, E: var TopoDS_Edge, L: gp_Lin)  {.importcpp: "MakeEdge".}
  ## Returns in <E> an Edge built with the line equation <L>.

proc makeEdge*(this: BRepPrim_Builder, E: var TopoDS_Edge, C: gp_Circ)  {.importcpp: "MakeEdge".}
  ## Returns in <E> an Edge built with the circle equation <C>.

proc setPCurve*(this: BRepPrim_Builder, E: var TopoDS_Edge, F: TopoDS_Face, L: gp_Lin2d)  {.importcpp: "SetPCurve".}
  ## Sets the line <L> to be the curve representing the edge <E> in the
  ## parametric space of the surface of <F>.

proc setPCurve*(this: BRepPrim_Builder, E: var TopoDS_Edge, F: TopoDS_Face, L1: gp_Lin2d, L2: gp_Lin2d)  {.importcpp: "SetPCurve".}
  ## Sets the lines <L1,L2> to be the curves representing the edge <E> in
  ## the parametric space of the closed surface of <F>.

proc setPCurve*(this: BRepPrim_Builder, E: var TopoDS_Edge, F: TopoDS_Face, C: gp_Circ2d)  {.importcpp: "SetPCurve".}
  ## Sets the circle <C> to be the curve representing the edge <E> in the
  ## parametric space of the surface of <F>.

proc makeVertex*(this: BRepPrim_Builder, V: var TopoDS_Vertex, P: gp_Pnt)  {.importcpp: "MakeVertex".}
  ## Returns in <V> a Vertex built with the point <P>.

proc reverseFace*(this: BRepPrim_Builder, F: var TopoDS_Face)  {.importcpp: "ReverseFace".}
  ## Reverses the Face <F>.

proc addEdgeVertex*(this: BRepPrim_Builder, E: var TopoDS_Edge, V: TopoDS_Vertex, P: cdouble, direct: bool)  {.importcpp: "AddEdgeVertex".}
  ## Adds the Vertex <V> in the Edge <E>. <P> is the parameter of the
  ## vertex on the edge. If direct is False the Vertex is reversed.

proc addEdgeVertex*(this: BRepPrim_Builder, E: var TopoDS_Edge, V: TopoDS_Vertex, P1: cdouble, P2: cdouble)  {.importcpp: "AddEdgeVertex".}
  ## Adds the Vertex <V> in the Edge <E>. <P1,P2> are the parameters of the
  ## vertex on the closed edge.

proc setParameters*(this: BRepPrim_Builder, E: var TopoDS_Edge, V: TopoDS_Vertex, P1: cdouble, P2: cdouble)  {.importcpp: "SetParameters".}
  ## <P1,P2> are the parameters of the vertex on the edge. The edge is a
  ## closed curve.

proc addWireEdge*(this: BRepPrim_Builder, W: var TopoDS_Wire, E: TopoDS_Edge, direct: bool)  {.importcpp: "AddWireEdge".}
  ## Adds the Edge <E> in the Wire <W>, if direct is False the Edge is
  ## reversed.

proc addFaceWire*(this: BRepPrim_Builder, F: var TopoDS_Face, W: TopoDS_Wire)  {.importcpp: "AddFaceWire".}
  ## Adds the Wire <W> in the Face <F>.

proc addShellFace*(this: BRepPrim_Builder, Sh: var TopoDS_Shell, F: TopoDS_Face)  {.importcpp: "AddShellFace".}
  ## Adds the Face <F> in the Shell <Sh>.

proc completeEdge*(this: BRepPrim_Builder, E: var TopoDS_Edge)  {.importcpp: "CompleteEdge".}
  ## This is called once an edge is completed. It gives the opportunity to
  ## perform any post treatment.

proc completeWire*(this: BRepPrim_Builder, W: var TopoDS_Wire)  {.importcpp: "CompleteWire".}
  ## This is called once a wire is completed. It gives the opportunity to
  ## perform any post treatment.

proc completeFace*(this: BRepPrim_Builder, F: var TopoDS_Face)  {.importcpp: "CompleteFace".}
  ## This is called once a face is completed. It gives the opportunity to
  ## perform any post treatment.

proc completeShell*(this: BRepPrim_Builder, S: var TopoDS_Shell)  {.importcpp: "CompleteShell".}
  ## This is called once a shell is completed. It gives the opportunity to
  ## perform any post treatment.

{.pop.} # header: "BRepPrim_Builder.hxx
