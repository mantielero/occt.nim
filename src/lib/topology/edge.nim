#import ../../wrapper/gce2d/gce2d_types
import ../../wrapper/standard/standard_types
import ../../wrapper/geom2d/geom2d_includes
import ../../wrapper/geom/geom_includes
import ../../wrapper/topods/topods_includes
# import ../../wrapper
# import ../../wrapper

# proc edge*[T:Handle[Geom2dTrimmedCurve]|HandleGeom2dTrimmedCurve](L: T; 
#        s: Handle[GeomCylindricalSurface]): EdgeObj {.
#     cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}


proc edge*[T:Handle[Geom2dTrimmedCurve]|HandleGeom2dTrimmedCurve](L: T; 
       s: Handle[GeomCylindricalSurface]): TopoDS_Edge {.
    cdecl, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}


#TopoDS_Edge anEdge1OnSurf1 = BRepBuilderAPI_MakeEdge(anArc1, aCyl1);