type
  BRepBuilderAPI_Command* {.header: "BRepBuilderAPI_Command.hxx", 
      importcpp: "BRepBuilderAPI_Command", byref.} = object of RootObj
    ## Root class for all commands in BRepBuilderAPI.

  BRepBuilderAPI_MakeShape* {.header: "BRepBuilderAPI_MakeShape.hxx", 
      importcpp: "BRepBuilderAPI_MakeShape", byref.} = object of BRepBuilderAPI_Command
    ## This is the root class for all shape constructions. It stores the
    ## result.


  BRepBuilderAPI_ModifyShape* {.header: "BRepBuilderAPI_ModifyShape.hxx",
      importcpp: "BRepBuilderAPI_ModifyShape",
      byref.} = object of BRepBuilderAPI_MakeShape
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

  BRepBuilderAPI_Transform* {.header: "BRepBuilderAPI_Transform.hxx",
      importcpp: "BRepBuilderAPI_Transform",
      byref.} = object of BRepBuilderAPI_ModifyShape
    ## Geometric transformation on a shape. The transformation to be applied
    ## is defined as a gp_Trsf transformation, i.e. a transformation which
    ## does not modify the underlying geometry of shapes. The transformation
    ## is applied to: - all curves which support edges of a shape, and - all
    ## surfaces which support its faces. A Transform object provides a
    ## framework for: - defining the geometric transformation to be applied,
    ## - implementing the transformation algorithm, and - consulting the
    ## results.
    

  BRepBuilderAPI_WireError* {.size:sizeof(cuint),header: "BRepBuilderAPI_WireError.hxx", importcpp: "BRepBuilderAPI_WireError", pure.} = enum
    ## Indicates the outcome of wire construction, i.e. whether it is
    ## successful or not, as explained below: - BRepBuilderAPI_WireDone No
    ## error occurred. The wire is correctly built. -
    ## BRepBuilderAPI_EmptyWire No initialization of the algorithm. Only an
    ## empty constructor was used. - BRepBuilderAPI_DisconnectedWire The last
    ## edge which you attempted to add was not connected to the wire. -
    ## BRepBuilderAPI_NonManifoldWire The wire with some singularity.

    BRepBuilderAPI_WireDone = 0,
    BRepBuilderAPI_EmptyWire = 1,
    BRepBuilderAPI_DisconnectedWire = 2,
    BRepBuilderAPI_NonManifoldWire = 3

  BRepBuilderAPI_FaceError* {.size:sizeof(cuint),header: "BRepBuilderAPI_FaceError.hxx", importcpp: "BRepBuilderAPI_FaceError", pure.} = enum
    ## Indicates the outcome of the construction of a face, i.e. whether it
    ## has been successful or not, as explained below: -
    ## BRepBuilderAPI_FaceDone No error occurred. The face is correctly
    ## built. - BRepBuilderAPI_NoFace No initialization of the algorithm;
    ## only an empty constructor was used. - BRepBuilderAPI_NotPlanar No
    ## surface was given and the wire was not planar. -
    ## BRepBuilderAPI_CurveProjectionFailed Not used so far. -
    ## BRepBuilderAPI_ParametersOutOfRange The parameters given to limit the
    ## surface are out of its bounds.

    BRepBuilderAPI_FaceDone = 0,
    BRepBuilderAPI_NoFace = 1,
    BRepBuilderAPI_NotPlanar = 2,
    BRepBuilderAPI_CurveProjectionFailed = 3,
    BRepBuilderAPI_ParametersOutOfRange = 4

  BRepBuilderAPI_ShellError* {.size:sizeof(cuint),header: "BRepBuilderAPI_ShellError.hxx", importcpp: "BRepBuilderAPI_ShellError", pure.} = enum
    ## Indicates the outcome of the construction of a face, i.e. whether it
    ## is successful or not, as explained below: - BRepBuilderAPI_ShellDone
    ## No error occurred. The shell is correctly built. -
    ## BRepBuilderAPI_EmptyShell No initialization of the algorithm: only an
    ## empty constructor was used. - BRepBuilderAPI_DisconnectedShell not yet
    ## used - BRepBuilderAPI_ShellParametersOutOfRange The parameters given
    ## to limit the surface are out of its bounds.

    BRepBuilderAPI_ShellDone = 0,
    BRepBuilderAPI_EmptyShell = 1,
    BRepBuilderAPI_DisconnectedShell = 2,
    BRepBuilderAPI_ShellParametersOutOfRange = 3

  BRepBuilderAPI_EdgeError* {.size:sizeof(cuint),header: "BRepBuilderAPI_EdgeError.hxx", importcpp: "BRepBuilderAPI_EdgeError", pure.} = enum
    ## Indicates the outcome of the construction of an edge, i.e. whether it
    ## has been successful or not, as explained below: -
    ## BRepBuilderAPI_EdgeDone No error occurred; The edge is correctly
    ## built. - BRepBuilderAPI_PointProjectionFailed No parameters were given
    ## but the projection of the 3D points on the curve failed. This happens
    ## when the point distance to the curve is greater than the precision
    ## value. - BRepBuilderAPI_ParameterOutOfRange The given parameters are
    ## not in the parametric range C->FirstParameter(), C->LastParameter() -
    ## BRepBuilderAPI_DifferentPointsOnClosedCurve The two vertices or points
    ## are the extremities of a closed curve but have different locations. -
    ## BRepBuilderAPI_PointWithInfiniteParameter A finite coordinate point
    ## was associated with an infinite parameter (see the Precision package
    ## for a definition of infinite values). -
    ## BRepBuilderAPI_DifferentsPointAndParameter The distance between the 3D
    ## point and the point evaluated on the curve with the parameter is
    ## greater than the precision. - BRepBuilderAPI_LineThroughIdenticPoints
    ## Two identical points were given to define a line (construction of an
    ## edge without curve); gp::Resolution is used for the confusion test.

    BRepBuilderAPI_EdgeDone = 0,
    BRepBuilderAPI_PointProjectionFailed = 1,
    BRepBuilderAPI_ParameterOutOfRange = 2,
    BRepBuilderAPI_DifferentPointsOnClosedCurve = 3,
    BRepBuilderAPI_PointWithInfiniteParameter = 4,
    BRepBuilderAPI_DifferentsPointAndParameter = 5,
    BRepBuilderAPI_LineThroughIdenticPoints = 6

  BRepBuilderAPI_MakeWire* {.header: "BRepBuilderAPI_MakeWire.hxx", importcpp: "BRepBuilderAPI_MakeWire", byref.} = object #of class BRepBuilderAPI_MakeShape
    ## Describes functions to build wires from edges. A wire can be built
    ## from any number of edges. To build a wire you first initialize the
    ## construction, then add edges in sequence. An unlimited number of edges
    ## can be added. The initialization of construction is done with: - no
    ## edge (an empty wire), or - edges of an existing wire, or - up to four
    ## connectable edges. In order to be added to a wire under construction,
    ## an edge (unless it is the first one) must satisfy the following
    ## condition: one of its vertices must be geometrically coincident with
    ## one of the vertices of the wire (provided that the highest tolerance
    ## factor is assigned to the two vertices). It could also be the same
    ## vertex. - The given edge is shared by the wire if it contains: - two
    ## vertices, identical to two vertices of the wire under construction (a
    ## general case of the wire closure), or - one vertex, identical to a
    ## vertex of the wire under construction; the other vertex not being
    ## geometrically coincident with another vertex of the wire. - In other
    ## cases, when one of the vertices of the edge is simply geometrically
    ## coincident with a vertex of the wire under construction (provided that
    ## the highest tolerance factor is assigned to the two vertices), the
    ## given edge is first copied and the coincident vertex is replaced in
    ## this new edge, by the coincident vertex of the wire. Note: it is
    ## possible to build non manifold wires using this construction tool. A
    ## MakeWire object provides a framework for: - initializing the
    ## construction of a wire, - adding edges to the wire under construction,
    ## and - consulting the result.


  BRepBuilderAPI_MakeFace* {.header: "BRepBuilderAPI_MakeFace.hxx", 
    importcpp: "BRepBuilderAPI_MakeFace", byref.} = object of BRepBuilderAPI_MakeShape
    ## Provides methods to build faces.

