# import ../../wrapper
# import ../../wrapper
# import ../../wrapper
# import ../../wrapper
# import ../../wrapper
# import ../../wrapper

# proc edge*(p1: gp_Pnt; p2: gp_Pnt): EdgeObj {.cdecl,
#     constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}

#<Handle[gce2d_types.GCE2dMakeSegment], Handle[geom_types.GeomCylindricalSurface]>

# proc edge*(s: Handle[GCE2dMakeSegment]; c: Handle[GeomCylindricalSurface]): EdgeObj = 
#   edge(`*`(s), c)
    
