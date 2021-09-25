import cinterop, gp, BRepBuilderAPI, gp#, gc, gp


csource "BRepPrimAPI_MakePrism.hxx":
  type
    BRepPrimAPI_MakePrism* = object of CClass

  converter toTopoDS_Shape*(self: BRepPrimAPI_MakePrism):TopoDS_Shape {.importcpp:"(#)".}

csource "BRepPrimAPI_MakeCylinder.hxx":
  type
    BRepPrimAPI_MakeCylinder* = object of CClass

  converter toTopoDS_Shape*(self: BRepPrimAPI_MakeCylinder):TopoDS_Shape {.importcpp:"(#)".}

proc makePrism*(face:TopoDS_Face, v:Vec):BRepPrimAPI_MakePrism =
  BRepPrimAPI_MakePrism.init(face, v)

proc makeCylinder*(ax:Ax2, radius, height:float):BRepPrimAPI_MakeCylinder =
  BRepPrimAPI_MakeCylinder.init(ax, radius, height)


proc shape*(s:BRepPrimAPI_MakeCylinder):TopoDS_Shape =
  cexpr[TopoDS_Shape]^s.Shape()