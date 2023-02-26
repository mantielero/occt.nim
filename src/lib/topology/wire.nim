import ../../wrapper/occt_wrapper

proc `&=`*[T:TopoDS_Edge|TopoDS_Wire](wire:var BRepBuilderAPI_MakeWire; edge:T) =
  ## adding edges to a wire
  wire.add(edge)

# converter toTopoDSWire*(this: BRepBuilderAPI_MakeWire): TopoDS_Wire =
#   ## converter (see types involved)
#   this.wire

proc wire*(edges: varargs[TopoDS_Edge]): BRepBuilderAPI_MakeWire =
  result = newWire() 
  for edge in edges:
    result &= edge

# proc `&`*(w:TopoDS  _Edge; e:TopoDS_Wire): BRepBuilderAPI_MakeWire =
#   result = wire()
#   result &= w
#   result &= e  

# proc `&`*(e:TopoDS_Wire; w:TopoDS_Edge): BRepBuilderAPI_MakeWire =
#   result = wire()
#   result &= e
#   result &= w  

proc `&`*(w1,w2:TopoDS_Wire): BRepBuilderAPI_MakeWire =
  result = wire()
  result &= w1
  result &= w2 