import ../../wrapper/occt_wrapper


proc newCompound*(shapes: varargs[TopoDS_Shape]):TopoDS_Compound =
  var aBuilder:BRepBuilder
  aBuilder.makeCompound(result)
  for aShape in shapes:
    aBuilder.add(result, aShape)  
