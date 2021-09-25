import cinterop, BRepBuilderAPI#, gp, gc


csource "BRepFilletAPI_MakeFillet.hxx":
  type
    BRepFilletAPI_MakeFillet* = object of CClass

  #converter toTopoDS_Edge*(self: BRepPrimAPI_MakePrism):TopoDS_Shape {.importcpp:"(#)".}

proc makeFillet*(s:TopoDS_Shape):BRepFilletAPI_MakeFillet =
  BRepFilletAPI_MakeFillet.init(s)

#   Standard_EXPORT BRepFilletAPI_MakeFillet(const TopoDS_Shape& S, const ChFi3d_FilletShape FShape = ChFi3d_Rational);

proc add*[T:SomeNumber](this:BRepFilletAPI_MakeFillet, t:T, e:TopoDS_Edge) =
  cexpr^this.Add(t.cfloat, e)

#proc shape*() =
#  pass

proc shape*(fillet:BRepFilletAPI_MakeFillet):TopoDS_Shape =
  cexpr[TopoDS_Shape]^fillet.Shape()