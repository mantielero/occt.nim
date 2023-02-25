import ../../wrapper/tktopalgo/tktopalgo
import ../../wrapper/tkmath/tkmath
import ../../wrapper/tkernel/tkernel
import ../../wrapper/tkgeombase/tkgeombase
import ../../wrapper/tkg3d/tkg3d
import ../../wrapper/tkg2d/tkg2d

# proc edge*(p1: PntObj; p2: PntObj): EdgeObj {.cdecl,
#     constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}

#<Handle[gce2d_types.GCE2dMakeSegment], Handle[geom_types.GeomCylindricalSurface]>

# proc edge*(s: Handle[GCE2dMakeSegment]; c: Handle[GeomCylindricalSurface]): EdgeObj = 
#   edge(`*`(s), c)
    
