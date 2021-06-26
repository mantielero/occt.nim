{.passL: "-losg -losgSim -losgAnimation -losgTerrain -losgDB -losgText -losgFX -losgUI -losgGA -losgUtil -losgManipulator -losgViewer -losgParticle -losgVolume -losgPresentation -losgWidget -losgShadow", passC:"-I/usr/include/osg" .}


#[
include BRepBuilderAPI_Collect
include BRepBuilderAPI_Transform
include BRepBuilderAPI_MakeFace
include BRepBuilderAPI_ModifyShape
include BRepBuilderAPI_TransitionMode
include BRepBuilderAPI_EdgeError
include BRepBuilderAPI_MakeShape
]#
include BRepBuilderAPI_MakeEdge
#[
include BRepBuilderAPI_WireError
include BRepBuilderAPI_MakeShell
include BRepBuilderAPI_MakePolygon
include BRepBuilderAPI_BndBoxTreeSelector
include BRepBuilderAPI_PipeError
include BRepBuilderAPI
include BRepBuilderAPI_Sewing
include BRepBuilderAPI_MakeVertex
include BRepBuilderAPI_ShapeModification
include BRepBuilderAPI_FastSewing
include BRepBuilderAPI_Copy
include BRepBuilderAPI_MakeSolid
include BRepBuilderAPI_FaceError
include BRepBuilderAPI_MakeEdge2d
include BRepBuilderAPI_CellFilter
include BRepBuilderAPI_VertexInspector
include BRepBuilderAPI_NurbsConvert
include BRepBuilderAPI_ShellError
include BRepBuilderAPI_FindPlane
]#
include BRepBuilderAPI_MakeWire
#[
include BRepBuilderAPI_GTransform
include BRepBuilderAPI_Command
]#

