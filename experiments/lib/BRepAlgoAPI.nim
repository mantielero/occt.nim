import cinterop, BRepBuilderAPI

csource "BRepAlgoAPI_Fuse.hxx":
  type
    BRepAlgoAPI_Fuse* = object of CClass

proc fuse*(s1, s2: TopoDS_Shape):BRepAlgoAPI_Fuse =
  BRepAlgoAPI_Fuse.init(s1,s2)