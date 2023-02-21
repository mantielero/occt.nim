import ../../wrapper/tkgeombase/gc/[gc_types,gc_makesegment, gc_makearcofcircle]
import ../../wrapper/tktopalgo/brepbuilderapi/[brepbuilderapi_types,brepbuilderapi_makeedge]

import ../../wrapper/tkg3d/geom/[geom_types,geom_circle]

#import ../../wrapper/tkgeombase
#import ../../wrapper/tktopalgo

#proc edge*(obj:)

proc edge*(obj: MakeSegment): EdgeObj =
  edge(obj.toHandleGeomTrimmedCurve)

proc edge*(obj: MakeArcOfCircle): EdgeObj =
  edge(obj.toHandleGeomTrimmedCurve)  

# proc edge*(obj: GeomCircle): EdgeObj =
#   edge(obj.toHandleGeomTrimmedCurve)  