type
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

  BRepBuilderAPI_MakeShape* {.header: "BRepBuilderAPI_MakeShape.hxx", importcpp: "BRepBuilderAPI_MakeShape", byref.} = object #of class BRepBuilderAPI_Command
    ## This is the root class for all shape constructions. It stores the
    ## result.



