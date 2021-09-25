import cinterop, TopAbs, BRepBuilderAPI

csource "TopExp_Explorer.hxx":
  type
    TopExp_Explorer* = object of CClass


proc explorer*(s:TopoDS_Shape, toFind:ShapeEnum, toAvoid:ShapeEnum = sShape):TopExp_Explorer =
  TopExp_Explorer.init(s, toFind, toAvoid)

#TopExp_Explorer (const TopoDS_Shape &S, const TopAbs_ShapeEnum ToFind, const TopAbs_ShapeEnum ToAvoid=TopAbs_SHAPE)

#TopExp_Explorer anEdgeExplorer(myBody, TopAbs_EDGE);

proc more*(this:TopExp_Explorer):bool =
  cexpr[bool]^this.More()

proc next*(this:TopExp_Explorer) =
  cexpr^this.Next()

proc current*(this:TopExp_Explorer):TopoDS_Shape =
  cexpr[TopoDS_Shape]^this.Current()