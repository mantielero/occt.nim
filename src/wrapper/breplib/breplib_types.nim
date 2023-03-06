type
  BRepLib* {.importcpp: "BRepLib", header: "BRepLib.hxx", bycopy.} = object ## ! Computes the max distance between edge
                                                                    ## ! and its 2d
                                                                    ## representation on the face.
                                                                    ## ! Sets the default precision.  The current Precision
                                                                    ## ! is returned.



type
  BRepLib_CheckCurveOnSurface* {.importcpp: "BRepLib_CheckCurveOnSurface",
                                header: "BRepLib_CheckCurveOnSurface.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Default
                                                                                        ## constructor
                                                                                        ##
                                                                                        ## !
                                                                                        ## Computes
                                                                                        ## the
                                                                                        ## max
                                                                                        ## distance
                                                                                        ## for
                                                                                        ## the
                                                                                        ## 3d
                                                                                        ## curve
                                                                                        ## of
                                                                                        ## <myCOnSurfGeom>
                                                                                        ##
                                                                                        ## !
                                                                                        ## and
                                                                                        ## 2d
                                                                                        ## curve
                                                                                        ## <theCurveOnSurface>
                                                                                        ##
                                                                                        ## !
                                                                                        ## If
                                                                                        ## isMultiThread
                                                                                        ## ==
                                                                                        ## Standard_True
                                                                                        ## then
                                                                                        ## computation
                                                                                        ## will
                                                                                        ## be
                                                                                        ## performed
                                                                                        ## in
                                                                                        ## parallel.


type
  BRepLib_Command* {.importcpp: "BRepLib_Command", header: "BRepLib_Command.hxx",
                    bycopy, pure, inheritable.} = object ## ! Set done to False.


type
  BRepLib_EdgeError* {.size: sizeof(cint), importcpp: "BRepLib_EdgeError",
                      header: "BRepLib_EdgeError.hxx".} = enum
    BRepLib_EdgeDone, BRepLib_PointProjectionFailed, BRepLib_ParameterOutOfRange,
    BRepLib_DifferentPointsOnClosedCurve, BRepLib_PointWithInfiniteParameter,
    BRepLib_DifferentsPointAndParameter, BRepLib_LineThroughIdenticPoints


type
  BRepLib_FaceError* {.size: sizeof(cint), importcpp: "BRepLib_FaceError",
                      header: "BRepLib_FaceError.hxx".} = enum
    BRepLib_FaceDone, BRepLib_NoFace, BRepLib_NotPlanar,
    BRepLib_CurveProjectionFailed, BRepLib_ParametersOutOfRange

type
  BRepLib_FindSurface* {.importcpp: "BRepLib_FindSurface",
                        header: "BRepLib_FindSurface.hxx", bycopy.} = object


type
  BRepLib_FuseEdges* {.importcpp: "BRepLib_FuseEdges",
                      header: "BRepLib_FuseEdges.hxx", bycopy.} = object ## ! Initialise members  and build  construction of map
                                                                    ## ! of ancestors.
                                                                    ## ! Build the all the lists of edges that are to be fused

type
  BRepLib_MakeShape* {.importcpp: "BRepLib_MakeShape",
                      header: "BRepLib_MakeShape.hxx", bycopy.} = object of BRepLib_Command ##
                                                                                     ## !
                                                                                     ## This
                                                                                     ## is
                                                                                     ## called
                                                                                     ## by
                                                                                     ## Shape().
                                                                                     ## It
                                                                                     ## does
                                                                                     ## nothing
                                                                                     ## but
                                                                                     ##
                                                                                     ## !
                                                                                     ## may
                                                                                     ## be
                                                                                     ## redefined.


type
  BRepLib_MakeEdge* {.importcpp: "BRepLib_MakeEdge",
                     header: "BRepLib_MakeEdge.hxx", bycopy.} = object of BRepLib_MakeShape




type
  BRepLib_MakeEdge2d* {.importcpp: "BRepLib_MakeEdge2d",
                       header: "BRepLib_MakeEdge2d.hxx", bycopy.} = object of BRepLib_MakeShape


type
  BRepLib_MakeFace* {.importcpp: "BRepLib_MakeFace",
                     header: "BRepLib_MakeFace.hxx", bycopy.} = object of BRepLib_MakeShape ##
                                                                                     ## !
                                                                                     ## Not
                                                                                     ## done.
                                                                                     ##
                                                                                     ## !
                                                                                     ## Reorient
                                                                                     ## the
                                                                                     ## current
                                                                                     ## face
                                                                                     ## if
                                                                                     ## the
                                                                                     ## boundary
                                                                                     ## is
                                                                                     ## not
                                                                                     ##
                                                                                     ## !
                                                                                     ## finite.

type
  BRepLib_MakePolygon* {.importcpp: "BRepLib_MakePolygon",
                        header: "BRepLib_MakePolygon.hxx", bycopy.} = object of BRepLib_MakeShape ##
                                                                                           ## !
                                                                                           ## Creates
                                                                                           ## an
                                                                                           ## empty
                                                                                           ## MakePolygon.


type
  BRepLib_MakeShell* {.importcpp: "BRepLib_MakeShell",
                      header: "BRepLib_MakeShell.hxx", bycopy.} = object of BRepLib_MakeShape ##
                                                                                       ## !
                                                                                       ## Not
                                                                                       ## done.


type
  BRepLib_MakeSolid* {.importcpp: "BRepLib_MakeSolid",
                      header: "BRepLib_MakeSolid.hxx", bycopy.} = object of BRepLib_MakeShape ##
                                                                                       ## !
                                                                                       ## Solid
                                                                                       ## covers
                                                                                       ## whole
                                                                                       ## space.

type
  BRepLib_MakeVertex* {.importcpp: "BRepLib_MakeVertex",
                       header: "BRepLib_MakeVertex.hxx", bycopy.} = object of BRepLib_MakeShape


type
  BRepLib_MakeWire* {.importcpp: "BRepLib_MakeWire",
                     header: "BRepLib_MakeWire.hxx", bycopy.} = object of BRepLib_MakeShape ##
                                                                                     ## !
                                                                                     ## NotDone
                                                                                     ## MakeWire.

type
  BRepLib_ShellError* {.size: sizeof(cint), importcpp: "BRepLib_ShellError",
                       header: "BRepLib_ShellError.hxx".} = enum
    BRepLib_ShellDone, BRepLib_EmptyShell, BRepLib_DisconnectedShell,
    BRepLib_ShellParametersOutOfRange



type
  BRepLib_ShapeModification* {.size: sizeof(cint),
                              importcpp: "BRepLib_ShapeModification",
                              header: "BRepLib_ShapeModification.hxx".} = enum
    BRepLib_Preserved, BRepLib_Deleted, BRepLib_Trimmed, BRepLib_Merged,
    BRepLib_BoundaryModified





type
  BRepLib_ValidateEdge* {.importcpp: "BRepLib_ValidateEdge",
                         header: "BRepLib_ValidateEdge.hxx", bycopy.} = object ## !
                                                                          ## Initialization
                                                                          ## constructor
                                                                          ## ! Adds some margin for
                                                                          ## distance
                                                                          ## checking


type
  BRepLib_WireError* {.size: sizeof(cint), importcpp: "BRepLib_WireError",
                      header: "BRepLib_WireError.hxx".} = enum
    BRepLib_WireDone, BRepLib_EmptyWire, BRepLib_DisconnectedWire,
    BRepLib_NonManifoldWire

