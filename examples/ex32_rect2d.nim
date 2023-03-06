# Working with 2D
# https://dev.opencascade.org/doc/refman/html/package_geom2d.html
# https://dev.opencascade.org/doc/refman/html/package_gce2d.html

# Create a rectangle (that would be a wire based on 4 edges)
import occt

proc newSegment(p1,p2:gp_Pnt2d):TopoDS_Edge =  #Edge2dObj = 
  var l1:HandleGeom2dTrimmedCurve = segment(p1, p2)
  var e = edge2d(l1)
  return e


proc rect(p1,p2,p3,p4:gp_Pnt2d):BRepBuilderAPI_MakeWire =
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
  if w.isDone:
    echo "Wire created successfully"
  return w

#-----
var p1 = pnt2d(0,0)
var p2 = pnt2d(0,20)
var p3 = pnt2d(30,20)
var p4 = pnt2d(30,0)
var w = rect(p1,p2,p3,p4)
"step2.step".toSTEP(w)