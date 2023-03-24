import ../../wrapper/gc/[gc_types,gc_makesegment, gc_makearcofcircle]
import ../../wrapper/brepbuilderapi/[brepbuilderapi_types,brepbuilderapi_makeedge]

#import ../../wrapper/geom/[geom_types,geom_circle]


proc edge*(obj: MakeSegment): EdgeObj =
  edge(obj.toHandleGeomTrimmedCurve)

proc edge*(obj: MakeArcOfCircle): EdgeObj =
  edge(obj.toHandleGeomTrimmedCurve)  

# proc edge*(obj: GeomCircle): EdgeObj =
#   edge(obj.toHandleGeomTrimmedCurve)  