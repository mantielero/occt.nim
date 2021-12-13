# Create a rectangle (that would be a wire based on 4 edges)
import occt


proc toSTEP[T:TopoDS_Solid| TopoDS_Wire ](fname:string; solid:T) =
  # Writer
  var writer = newSTEPControlWriter() 
  var tmp1 = setCVal("xstep.cascade.unit", "MM")
  var tmp2 = setCVal("write.step.unit", "MM")
  var tmp3 = setIVal("write.step.nonmanifold", 1)

  #discard writer.transfer(shape, STEPControlAsIs)
  var transferStatus = writer.transfer(solid, STEPControlAsIs)  # This is like a convert function
  if transferStatus != IFSelectRetDone:
    raise newException(ValueError, "Error while transferring shape to STEP")

  # Write transferred structure to STEP file
  var writeStatus = writer.write(fname) 
  if writeStatus != IFSelect_RetDone:
    raise newException(ValueError, "Error while writing transferred shape to STEP file")

proc rect(p1,p2,p3,p4:Pnt):BRepBuilderAPI_MakeWire =
  # https://dev.opencascade.org/doc/refman/html/class_g_c___make_segment.html
  var l1:HandleGeomTrimmedCurve = segment(p1, p2)
  var l2:HandleGeomTrimmedCurve = segment(p2, p3)
  var l3:HandleGeomTrimmedCurve = segment(p3, p4)
  var l4:HandleGeomTrimmedCurve = segment(p4, p1)

  var ll1:BRepBuilderAPI_MakeEdge = edge(l1)
  var ll2:BRepBuilderAPI_MakeEdge = edge(l2)
  var ll3:BRepBuilderAPI_MakeEdge = edge(l3)
  var ll4:BRepBuilderAPI_MakeEdge = edge(l4)

  var w = wire()
  w.add(ll1)
  w.add(ll2)
  w.add(ll3)
  w.add(ll4)
  return w

var p1 = newPnt(0,0,0)
var p2 = newPnt(0,20,0)
var p3 = newPnt(30,20,0)
var p4 = newPnt(30,0,0)
var w = rect(p1,p2,p3,p4)
"step2.step".toSTEP(w)