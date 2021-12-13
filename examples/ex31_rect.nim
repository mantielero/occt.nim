# Create a rectangle (that would be a wire based on 4 edges)
import occt

proc newSegment(p1,p2:Pnt):BRepBuilderAPI_MakeEdge =
  var l1:HandleGeomTrimmedCurve = segment(p1, p2)
  edge(l1)


proc toSTEP[T:TopoDS_Solid | TopoDS_Wire ](fname:string; solid:T) =
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
  var l1 = newSegment(p1, p2)
  var l2 = newSegment(p2, p3)
  var l3 = newSegment(p3, p4)
  var l4 = newSegment(p4, p1)

  var w = wire()
  w.add(l1)
  w.add(l2)
  w.add(l3)
  w.add(l4)
  return w

#-----
var p1 = newPnt(0,0,0)
var p2 = newPnt(0,20,0)
var p3 = newPnt(30,20,0)
var p4 = newPnt(30,0,0)
var w = rect(p1,p2,p3,p4)
"step2.step".toSTEP(w)