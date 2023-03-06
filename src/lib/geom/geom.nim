import ../../wrapper/gp/gp_includes
import ../../wrapper/geom/geom_includes
import ../../wrapper/standard/standard_includes

proc newCylindricalSurface*(a3: gp_Ax3; radius: cfloat): ptr GeomCylindricalSurface {.
    cdecl, constructor, importcpp: "new Geom_CylindricalSurface(@)", 
    header: "Geom_CylindricalSurface.hxx".}

proc cylindricalSurface*(a3: gp_Ax3; radius: cfloat): Handle[GeomCylindricalSurface] =
  newHandle( newCylindricalSurface(a3, radius) )




#----
#Handle[geom_types.GeomSurface]
converter toPlane*(aSurface:Handle[Geom_Surface]): Handle[GeomPlane] =
  return downcast[Geom_Surface, GeomPlane](aSurface)


proc location*(aPlane:Handle[GeomPlane]):gp_Pnt =
  `*`(aPlane).location()



proc isGeomPlane*[T](obj:Handle[T]): bool {.importcpp:"(#->DynamicType() == Geom_Plane::get_type_descriptor())",
                                            header:"Geom_Plane.hxx".}

