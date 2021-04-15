type
  TopoDSToStep_MakeEdgeError* {.size:sizeof(cuint),header: "TopoDSToStep_MakeEdgeError.hxx", importcpp: "TopoDSToStep_MakeEdgeError", pure.} = enum
    TopoDSToStep_EdgeDone = 0,
    TopoDSToStep_NonManifoldEdge = 1,
    TopoDSToStep_EdgeOther = 2

  TopoDSToStep_MakeFaceError* {.size:sizeof(cuint),header: "TopoDSToStep_MakeFaceError.hxx", importcpp: "TopoDSToStep_MakeFaceError", pure.} = enum
    TopoDSToStep_FaceDone = 0,
    TopoDSToStep_InfiniteFace = 1,
    TopoDSToStep_NonManifoldFace = 2,
    TopoDSToStep_NoWireMapped = 3,
    TopoDSToStep_FaceOther = 4

  TopoDSToStep_MakeWireError* {.size:sizeof(cuint),header: "TopoDSToStep_MakeWireError.hxx", importcpp: "TopoDSToStep_MakeWireError", pure.} = enum
    TopoDSToStep_WireDone = 0,
    TopoDSToStep_NonManifoldWire = 1,
    TopoDSToStep_WireOther = 2

  TopoDSToStep_MakeVertexError* {.size:sizeof(cuint),header: "TopoDSToStep_MakeVertexError.hxx", importcpp: "TopoDSToStep_MakeVertexError", pure.} = enum
    TopoDSToStep_VertexDone = 0,
    TopoDSToStep_VertexOther = 1

  TopoDSToStep_BuilderError* {.size:sizeof(cuint),header: "TopoDSToStep_BuilderError.hxx", importcpp: "TopoDSToStep_BuilderError", pure.} = enum
    TopoDSToStep_BuilderDone = 0,
    TopoDSToStep_NoFaceMapped = 1,
    TopoDSToStep_BuilderOther = 2

  TopoDSToStep_FacetedError* {.size:sizeof(cuint),header: "TopoDSToStep_FacetedError.hxx", importcpp: "TopoDSToStep_FacetedError", pure.} = enum
    TopoDSToStep_FacetedDone = 0,
    TopoDSToStep_SurfaceNotPlane = 1,
    TopoDSToStep_PCurveNotLinear = 2

  TopoDS_TShape* {.header: "TopoDS_TShape.hxx", importcpp: "TopoDS_TShape", byref.} = object #of class Standard_Transient
    ## A TShape is a topological structure describing a set of points in a 2D
    ## or 3D space.

  TopoDS_Solid* {.header: "TopoDS_Solid.hxx", importcpp: "TopoDS_Solid", byref.} = object #of class TopoDS_Shape
    ## Describes a solid shape which - references an underlying solid shape
    ## with the potential to be given a location and an orientation - has a
    ## location for the underlying shape, giving its placement in the local
    ## coordinate system - has an orientation for the underlying shape, in
    ## terms of its geometry (as opposed to orientation in relation to other
    ## shapes).

  TopoDS_Compound* {.header: "TopoDS_Compound.hxx", importcpp: "TopoDS_Compound", byref.} = object #of class TopoDS_Shape
    ## Describes a compound which - references an underlying compound with
    ## the potential to be given a location and an orientation - has a
    ## location for the underlying compound, giving its placement in the
    ## local coordinate system - has an orientation for the underlying
    ## compound, in terms of its geometry (as opposed to orientation in
    ## relation to other shapes). Casts shape S to the more specialized
    ## return type, Compound.

  TopoDS_Vertex* {.header: "TopoDS_Vertex.hxx", importcpp: "TopoDS_Vertex", byref.} = object #of class TopoDS_Shape
    ## Describes a vertex which - references an underlying vertex with the
    ## potential to be given a location and an orientation - has a location
    ## for the underlying vertex, giving its placement in the local
    ## coordinate system - has an orientation for the underlying vertex, in
    ## terms of its geometry (as opposed to orientation in relation to other
    ## shapes).

  TopoDSToStep_Tool* {.header: "TopoDSToStep_Tool.hxx", importcpp: "TopoDSToStep_Tool", byref.} = object
    ## This Tool Class provides Information to build a ProSTEP Shape model
    ## from a Cas.Cad BRep.

  TopoDS_Wire* {.header: "TopoDS_Wire.hxx", importcpp: "TopoDS_Wire", byref.} = object #of class TopoDS_Shape
    ## Describes a wire which - references an underlying wire with the
    ## potential to be given a location and an orientation - has a location
    ## for the underlying wire, giving its placement in the local coordinate
    ## system - has an orientation for the underlying wire, in terms of its
    ## geometry (as opposed to orientation in relation to other shapes).

  TopoDS_CompSolid* {.header: "TopoDS_CompSolid.hxx", importcpp: "TopoDS_CompSolid", byref.} = object #of class TopoDS_Shape
    ## Describes a composite solid which - references an underlying composite
    ## solid with the potential to be given a location and an orientation -
    ## has a location for the underlying composite solid, giving its
    ## placement in the local coordinate system - has an orientation for the
    ## underlying composite solid, in terms of its geometry (as opposed to
    ## orientation in relation to other shapes). Casts shape S to the more
    ## specialized return type, CompSolid.

  TopoDS_Edge* {.header: "TopoDS_Edge.hxx", importcpp: "TopoDS_Edge", byref.} = object #of class TopoDS_Shape
    ## Describes an edge which - references an underlying edge with the
    ## potential to be given a location and an orientation - has a location
    ## for the underlying edge, giving its placement in the local coordinate
    ## system - has an orientation for the underlying edge, in terms of its
    ## geometry (as opposed to orientation in relation to other shapes).

  TopoDS_Shape* {.header: "TopoDS_Shape.hxx", importcpp: "TopoDS_Shape", byref.} = object
    ## Describes a shape which - references an underlying shape with the
    ## potential to be given a location and an orientation - has a location
    ## for the underlying shape, giving its placement in the local coordinate
    ## system - has an orientation for the underlying shape, in terms of its
    ## geometry (as opposed to orientation in relation to other shapes).
    ## Note: A Shape is empty if it references an underlying shape which has
    ## an empty list of shapes.

  TopoDS_Face* {.header: "TopoDS_Face.hxx", importcpp: "TopoDS_Face", byref.} = object #of class TopoDS_Shape
    ## Describes a face which - references an underlying face with the
    ## potential to be given a location and an orientation - has a location
    ## for the underlying face, giving its placement in the local coordinate
    ## system - has an orientation for the underlying face, in terms of its
    ## geometry (as opposed to orientation in relation to other shapes).

  TopoDS_Shell* {.header: "TopoDS_Shell.hxx", importcpp: "TopoDS_Shell", byref.} = object #of class TopoDS_Shape
    ## Describes a shell which - references an underlying shell with the
    ## potential to be given a location and an orientation - has a location
    ## for the underlying shell, giving its placement in the local coordinate
    ## system - has an orientation for the underlying shell, in terms of its
    ## geometry (as opposed to orientation in relation to other shapes).



