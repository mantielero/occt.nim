import ../../wrapper/tkgeombase/gce2d/gce2d_types
import ../../wrapper/tkernel/tkernel
import ../../wrapper/tkg2d/tkg2d
import ../../wrapper/tkg3d/tkg3d
import ../../wrapper/tktopalgo/tktopalgo
import ../../wrapper/tkbrep/tkbrep

# proc edge*[T:Handle[Geom2dTrimmedCurve]|HandleGeom2dTrimmedCurve](L: T; 
#        s: Handle[GeomCylindricalSurface]): EdgeObj {.
#     cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}


proc edge*[T:Handle[Geom2dTrimmedCurve]|HandleGeom2dTrimmedCurve](L: T; 
       s: Handle[GeomCylindricalSurface]): TopoDS_Edge {.
    cdecl, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}


#TopoDS_Edge anEdge1OnSurf1 = BRepBuilderAPI_MakeEdge(anArc1, aCyl1);