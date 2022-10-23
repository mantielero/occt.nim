# Create a rectangle (that would be a wire based on 4 edges)
import occt

proc newSegment(p1,p2:Pnt):BRepBuilderAPI_MakeEdge =
  var l1:HandleGeomTrimmedCurve = segment(p1, p2)
  edge(l1)


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