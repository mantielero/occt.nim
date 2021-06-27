{.passL: "-losg -losgSim -losgAnimation -losgTerrain -losgDB -losgText -losgFX -losgUI -losgGA -losgUtil -losgManipulator -losgViewer -losgParticle -losgVolume -losgPresentation -losgWidget -losgShadow", passC:"-I/usr/include/osg" .}

import brepbuilderapi_types
import BRepBuilderAPI_Command
# include BRepBuilderAPI_Collect
import BRepBuilderAPI_Transform
import BRepBuilderAPI_MakeFace
import BRepBuilderAPI_ModifyShape
# include BRepBuilderAPI_TransitionMode
# include BRepBuilderAPI_EdgeError
import BRepBuilderAPI_MakeShape

import  BRepBuilderAPI_MakeEdge

# include BRepBuilderAPI_WireError
# include BRepBuilderAPI_MakeShell
# include BRepBuilderAPI_MakePolygon
# include BRepBuilderAPI_BndBoxTreeSelector
# include BRepBuilderAPI_PipeError
# include BRepBuilderAPI
# include BRepBuilderAPI_Sewing
# include BRepBuilderAPI_MakeVertex
# include BRepBuilderAPI_ShapeModification
# include BRepBuilderAPI_FastSewing
# include BRepBuilderAPI_Copy
# include BRepBuilderAPI_MakeSolid
# include BRepBuilderAPI_FaceError
# include BRepBuilderAPI_MakeEdge2d
# include BRepBuilderAPI_CellFilter
# include BRepBuilderAPI_VertexInspector
# include BRepBuilderAPI_NurbsConvert
# include BRepBuilderAPI_ShellError
# include BRepBuilderAPI_FindPlane

import BRepBuilderAPI_MakeWire

# include BRepBuilderAPI_GTransform

export brepbuilderapi_types,
       BRepBuilderAPI_Command, BRepBuilderAPI_Transform, 
       BRepBuilderAPI_MakeFace,       
       BRepBuilderAPI_ModifyShape, BRepBuilderAPI_MakeShape, 
       BRepBuilderAPI_MakeEdge, BRepBuilderAPI_MakeWire

