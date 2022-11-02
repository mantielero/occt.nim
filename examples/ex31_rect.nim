# Create a rectangle (that would be a wire based on 4 edges)
import occt

proc newSegment(p1,p2:PntObj):EdgeObj = # BRepBuilderAPI_MakeEdge -> EdgeObj
  # From gc_makesegment: segment outputs a MakeSegment. There is a converter
  # from MakeSegment to HandleGeomTrimmerCurve
  var l1:HandleGeomTrimmedCurve = segment(p1, p2)  # gc_makesegment.nim
  edge(l1)  # tktopalgo -> brepbuilderapi_makeedge.nim: edge*(L: HandleGeomCurve): EdgeObj

#[

In the file `tkg3d/geom/geom_types.nim` we see that `HandleGeomTrimmedCurve` is
an object of `HandleGeomCurve`.

]#

proc rect(p1,p2,p3,p4:PntObj):BRepBuilderAPI_MakeWire =
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
var p1 = pnt(0,0,0)
var p2 = pnt(0,20,0)
var p3 = pnt(30,20,0)
var p4 = pnt(30,0,0)
var w = rect(p1,p2,p3,p4)
"step2.step".toSTEP(w)

