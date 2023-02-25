import ../../wrapper/tkg3d/tkg3d
import ../../wrapper/tkmath/tkmath
import ../../wrapper/tkernel/tkernel

proc newCylindricalSurface*(a3: Ax3Obj; radius: cfloat): ptr GeomCylindricalSurface {.
    cdecl, constructor, importcpp: "new Geom_CylindricalSurface(@)", 
    header: "Geom_CylindricalSurface.hxx".}

proc cylindricalSurface*(a3: Ax3Obj; radius: cfloat): Handle[GeomCylindricalSurface] =
  newHandle( newCylindricalSurface(a3, radius) )




#----
#Handle[geom_types.GeomSurface]
converter toPlane*(aSurface:Handle[Geom_Surface]): Handle[GeomPlane] =
  return downcast[Geom_Surface, GeomPlane](aSurface)


proc location*(aPlane:Handle[GeomPlane]):PntObj =
  `*`(aPlane).location()