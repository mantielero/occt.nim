import ../../tkernel/message/message_types
import ../../tkernel/ncollection/ncollection_types
import ../../tkernel/standard/standard_types


type
  TopoDS_FrozenShape* = object        # FIXME
  
  TopoDS_LockedShape* = object        # FIXME
  
  TopoDS_UnCompatibleShapes* = object # FIXME

  TopoDS_ListIteratorOfListOfShape* {.importcpp:"NCollection_List<TopoDS_Shape>::Iterator", header: "TopoDS_ListOfShape.hxx", bycopy.} = object

  TopoDS* {.importcpp: "TopoDS", header: "TopoDS.hxx", bycopy.} = object 

  TopoDS_Builder* {.importcpp: "TopoDS_Builder", header: "TopoDS_Builder.hxx", 
                    bycopy, pure, inheritable.} = object

  TopoDS_Iterator* {.importcpp: "TopoDS_Iterator", header: "TopoDS_Iterator.hxx",
                    bycopy.} = object 

  TopoDS_Shape* {.importcpp: "TopoDS_Shape", header: "TopoDS_Shape.hxx", bycopy, pure, inheritable.} = object 

  TopoDS_ListOfShape* = NCollectionList[TopoDS_Shape]

  TopoDS_Compound* {.importcpp: "TopoDS_Compound", header: "TopoDS_Compound.hxx",
                    bycopy.} = object of TopoDS_Shape 

  TopoDS_CompSolid* {.importcpp: "TopoDS_CompSolid",
                     header: "TopoDS_CompSolid.hxx", bycopy.} = object of TopoDS_Shape 

  TopoDS_Edge* {.importcpp: "TopoDS_Edge", header: "TopoDS_Edge.hxx", bycopy.} = object of TopoDS_Shape 

  TopoDS_Face* {.importcpp: "TopoDS_Face", header: "TopoDS_Face.hxx", bycopy.} = object of TopoDS_Shape 

  TopoDS_Shell* {.importcpp: "TopoDS_Shell", header: "TopoDS_Shell.hxx", bycopy.} = object of TopoDS_Shape 

  TopoDS_Solid* {.importcpp: "TopoDS_Solid", header: "TopoDS_Solid.hxx", bycopy.} = object of TopoDS_Shape 

  TopoDS_Vertex* {.importcpp: "TopoDS_Vertex", header: "TopoDS_Vertex.hxx", bycopy.} = object of TopoDS_Shape 

  TopoDS_Wire* {.importcpp: "TopoDS_Wire", header: "TopoDS_Wire.hxx", bycopy.} = object of TopoDS_Shape 

  HandleTopoDS_FrozenShape* = Handle[TopoDS_FrozenShape]

  HandleTopoDS_LockedShape* = Handle[TopoDS_LockedShape]

  HandleTopoDS_UnCompatibleShapes* = Handle[TopoDS_UnCompatibleShapes]

  TopoDS_AlertAttribute* {.importcpp: "TopoDS_AlertAttribute",
                          header: "TopoDS_AlertAttribute.hxx", bycopy.} = object of MessageAttributeStream 

  TopoDS_AlertWithShape* {.importcpp: "TopoDS_AlertWithShape",
                          header: "TopoDS_AlertWithShape.hxx", bycopy.} = object of MessageAlert 

  TopoDS_HShape* {.importcpp: "TopoDS_HShape", header: "TopoDS_HShape.hxx", bycopy.} = object of StandardTransient 

  HandleTopoDS_HShape* = Handle[TopoDS_HShape]

  TopoDS_TShape* {.importcpp: "TopoDS_TShape", header: "TopoDS_TShape.hxx", bycopy.} = object of StandardTransient 

  TopoDS_TFace* {.importcpp: "TopoDS_TFace", header: "TopoDS_TFace.hxx", bycopy.} = object of TopoDS_TShape 

  HandleTopoDS_TFace* = Handle[TopoDS_TFace]

  TopoDS_TEdge* {.importcpp: "TopoDS_TEdge", header: "TopoDS_TEdge.hxx", bycopy.} = object of TopoDS_TShape 

  HandleTopoDS_TEdge* = Handle[TopoDS_TEdge]

  TopoDS_TCompSolid* {.importcpp: "TopoDS_TCompSolid",
                      header: "TopoDS_TCompSolid.hxx", bycopy.} = object of TopoDS_TShape 

  HandleTopoDS_TCompSolid* = Handle[TopoDS_TCompSolid]

  TopoDS_TCompound* {.importcpp: "TopoDS_TCompound",
                     header: "TopoDS_TCompound.hxx", bycopy.} = object of TopoDS_TShape 

  HandleTopoDS_TCompound* = Handle[TopoDS_TCompound]

  TopoDS_TShell* {.importcpp: "TopoDS_TShell", header: "TopoDS_TShell.hxx", bycopy.} = object of TopoDS_TShape 

  HandleTopoDS_TShell* = Handle[TopoDS_TShell]

  TopoDS_TSolid* {.importcpp: "TopoDS_TSolid", header: "TopoDS_TSolid.hxx", bycopy.} = object of TopoDS_TShape 

  HandleTopoDS_TSolid* = Handle[TopoDS_TSolid]

  TopoDS_TVertex* {.importcpp: "TopoDS_TVertex", header: "TopoDS_TVertex.hxx", bycopy.} = object of TopoDS_TShape 

  HandleTopoDS_TVertex* = Handle[TopoDS_TVertex]

  #TopoDS_TVertex* {.importcpp: "TopoDS_TVertex", header: "TopoDS_TVertex.hxx", bycopy.} = object of TopoDS_TShape 
  TopoDS_TWire* {.importcpp: "TopoDS_TWire", header: "TopoDS_TWire.hxx", bycopy.} = object of TopoDS_TShape 

  HandleTopoDS_TWire* = Handle[TopoDS_TWire]

