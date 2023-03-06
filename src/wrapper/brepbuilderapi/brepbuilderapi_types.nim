import ../brep/brep_types
import ../bnd/bnd_types
import ../gp/gp_types
import ../ncollection/ncollection_types
import ../standard/standard_types

type
  #BndBox* = object
  Selector* = object of RootObj  # FIXME
  BRepToolsReShape* = object     # FIXME

type
  BRepBuilderAPI_EdgeError* {.size: sizeof(cint),
                             importcpp: "BRepBuilderAPI_EdgeError",
                             header: "BRepBuilderAPI_EdgeError.hxx".} = enum
    BRepBuilderAPI_EdgeDone, BRepBuilderAPI_PointProjectionFailed,
    BRepBuilderAPI_ParameterOutOfRange,
    BRepBuilderAPI_DifferentPointsOnClosedCurve,
    BRepBuilderAPI_PointWithInfiniteParameter,
    BRepBuilderAPI_DifferentsPointAndParameter,
    BRepBuilderAPI_LineThroughIdenticPoints

  BRepBuilderAPI_FaceError* {.size: sizeof(cint),
                             importcpp: "BRepBuilderAPI_FaceError",
                             header: "BRepBuilderAPI_FaceError.hxx".} = enum
    BRepBuilderAPI_FaceDone, BRepBuilderAPI_NoFace, BRepBuilderAPI_NotPlanar,
    BRepBuilderAPI_CurveProjectionFailed, BRepBuilderAPI_ParametersOutOfRange

  BRepBuilderAPI_PipeError* {.size: sizeof(cint),
                             importcpp: "BRepBuilderAPI_PipeError",
                             header: "BRepBuilderAPI_PipeError.hxx".} = enum
    BRepBuilderAPI_PipeDone, BRepBuilderAPI_PipeNotDone,
    BRepBuilderAPI_PlaneNotIntersectGuide, BRepBuilderAPI_ImpossibleContact

  BRepBuilderAPI_ShapeModification* {.size: sizeof(cint), importcpp: "BRepBuilderAPI_ShapeModification", header: "BRepBuilderAPI_ShapeModification.hxx".} = enum
    BRepBuilderAPI_Preserved, BRepBuilderAPI_Deleted, BRepBuilderAPI_Trimmed,
    BRepBuilderAPI_Merged, BRepBuilderAPI_BoundaryModified

  BRepBuilderAPI_ShellError* {.size: sizeof(cint),
                              importcpp: "BRepBuilderAPI_ShellError",
                              header: "BRepBuilderAPI_ShellError.hxx".} = enum
    BRepBuilderAPI_ShellDone, BRepBuilderAPI_EmptyShell,
    BRepBuilderAPI_DisconnectedShell, BRepBuilderAPI_ShellParametersOutOfRange

  BRepBuilderAPI_TransitionMode* {.size: sizeof(cint),
                                  importcpp: "BRepBuilderAPI_TransitionMode",
                                  header: "BRepBuilderAPI_TransitionMode.hxx".} = enum
    BRepBuilderAPI_Transformed, BRepBuilderAPI_RightCorner,
    BRepBuilderAPI_RoundCorner

  BRepBuilderAPI* {.importcpp: "BRepBuilderAPI", header: "BRepBuilderAPI.hxx", bycopy.} = object 

  BRepBuilderAPI_Collect* {.importcpp: "BRepBuilderAPI_Collect",
                           header: "BRepBuilderAPI_Collect.hxx", bycopy.} = object

  BRepBuilderAPI_Command* {.importcpp: "BRepBuilderAPI_Command",
                           header: "BRepBuilderAPI_Command.hxx", bycopy, pure, inheritable.} = object 

  BRepBuilderAPI_FindPlane* {.importcpp: "BRepBuilderAPI_FindPlane",
                             header: "BRepBuilderAPI_FindPlane.hxx", bycopy.} = object 

  BRepBuilderAPI_FastSewingFS_VARStatuses* = cuint

  BRepBuilderAPI_FastSewingFS_Statuses* {.size: sizeof(cint),
      importcpp: "BRepBuilderAPI_FastSewing::FS_Statuses",
      header: "BRepBuilderAPI_FastSewing.hxx".} = enum
    FS_OK = 0x00000000, FS_Degenerated = 0x00000001, FS_FindVertexError = 0x00000002,
    FS_FindEdgeError = 0x00000004, FS_FaceWithNullSurface = 0x00000008,
    FS_NotNaturalBoundsFace = 0x00000010, FS_InfiniteSurface = 0x00000020,
    FS_EmptyInput = 0x00000040, FS_Exception = 0x00000080

  BRepBuilderAPI_VertexInspectorTarget* = cint

  BRepBuilderAPI_WireError* {.size: sizeof(cint),
                             importcpp: "BRepBuilderAPI_WireError",
                             header: "BRepBuilderAPI_WireError.hxx".} = enum
    BRepBuilderAPI_WireDone, BRepBuilderAPI_EmptyWire,
    BRepBuilderAPI_DisconnectedWire, BRepBuilderAPI_NonManifoldWire

  BRepBuilderAPI_BndBoxTree* = NCollectionUBTree[cint, BndBox]

  VectorOfPoint* = NCollectionVector[gp_Xyz]

  BRepBuilderAPI_MakeShape* {.importcpp: "BRepBuilderAPI_MakeShape",
                             header: "BRepBuilderAPI_MakeShape.hxx", bycopy.} = object of BRepBuilderAPI_Command 

  EdgeObj* {.importcpp: "BRepBuilderAPI_MakeEdge",
                            header: "BRepBuilderAPI_MakeEdge.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape

  Edge2dObj* {.importcpp: "BRepBuilderAPI_MakeEdge2d",
                              header: "BRepBuilderAPI_MakeEdge2d.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape

  BRepBuilderAPI_MakeFace* {.importcpp: "BRepBuilderAPI_MakeFace",
                            header: "BRepBuilderAPI_MakeFace.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape 

  BRepBuilderAPI_MakePolygon* {.importcpp: "BRepBuilderAPI_MakePolygon",
                               header: "BRepBuilderAPI_MakePolygon.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape 

  BRepBuilderAPI_MakeShell* {.importcpp: "BRepBuilderAPI_MakeShell",
                             header: "BRepBuilderAPI_MakeShell.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape 

  BRepBuilderAPI_MakeSolid* {.importcpp: "BRepBuilderAPI_MakeSolid",
                             header: "BRepBuilderAPI_MakeSolid.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape 

  BRepBuilderAPI_MakeVertex* {.importcpp: "BRepBuilderAPI_MakeVertex",
                              header: "BRepBuilderAPI_MakeVertex.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape 

  BRepBuilderAPI_MakeWire* {.importcpp: "BRepBuilderAPI_MakeWire",
                            header: "BRepBuilderAPI_MakeWire.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape 

  BRepBuilderAPI_ModifyShape* {.importcpp: "BRepBuilderAPI_ModifyShape",
                               header: "BRepBuilderAPI_ModifyShape.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape 

  BRepBuilderAPI_Copy* {.importcpp: "BRepBuilderAPI_Copy",
                        header: "BRepBuilderAPI_Copy.hxx", bycopy.} = object of BRepBuilderAPI_ModifyShape 

  BRepBuilderAPI_GTransform* {.importcpp: "BRepBuilderAPI_GTransform",
                              header: "BRepBuilderAPI_GTransform.hxx", bycopy.} = object of BRepBuilderAPI_ModifyShape 

  BRepBuilderAPI_NurbsConvert* {.importcpp: "BRepBuilderAPI_NurbsConvert",
                                header: "BRepBuilderAPI_NurbsConvert.hxx", bycopy.} = object of BRepBuilderAPI_ModifyShape 

  BRepBuilderAPI_Transform* {.importcpp: "BRepBuilderAPI_Transform",
                             header: "BRepBuilderAPI_Transform.hxx", bycopy.} = object of BRepBuilderAPI_ModifyShape 

  BRepBuilderAPI_BndBoxTreeSelector* {.importcpp: "BRepBuilderAPI_BndBoxTreeSelector", header: "BRepBuilderAPI_BndBoxTreeSelector.hxx",
                                      bycopy.} = object of Selector 

  BRepBuilderAPI_FastSewing* {.importcpp: "BRepBuilderAPI_FastSewing",
                              header: "BRepBuilderAPI_FastSewing.hxx", bycopy.} = object of StandardTransient

  BRepBuilderAPI_Sewing* {.importcpp: "BRepBuilderAPI_Sewing",
                          header: "BRepBuilderAPI_Sewing.hxx", bycopy.} = object of StandardTransient 

  HandleBRepBuilderAPI_Sewing* = Handle[BRepBuilderAPI_Sewing]

  BRepBuilderAPI_VertexInspector* {.importcpp: "BRepBuilderAPI_VertexInspector", header: "BRepBuilderAPI_VertexInspector.hxx",
                                   bycopy.} = object of NCollectionCellFilterInspectorXYZ
                                   #bycopy.} = object of NCollectionCellFilterInspectorXYZ
                                   #bycopy.} = object of NCollectionCellFilterInspectorXYZ

  BRepBuilderAPI_CellFilter* = NCollectionCellFilter[
      BRepBuilderAPI_VertexInspector]

