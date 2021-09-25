import cinterop, BRepBuilderAPI

csource "TopoDS.hxx":
  type
    TopoDS* {.cgen:"(TopoDS::$1(@))".} = object of CClass

proc wire*(s:TopoDS_Shape):TopoDS_Wire =
  cexpr[TopoDS_Wire]^TopoDS.Wire(s)

proc edge*(s:TopoDS_Shape):TopoDS_Edge =
  cexpr[TopoDS_Edge]^TopoDS.Edge(s)