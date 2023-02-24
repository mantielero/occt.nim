import ../../wrapper/tkg2d/tkg2d
import ../../wrapper/tkg3d/tkg3d
import ../../wrapper/tkmath/tkmath
import ../../wrapper/tkernel/tkernel

proc newCylindricalSurface*(a3: Ax3Obj; radius: cfloat): ptr GeomCylindricalSurface {.
    cdecl, constructor, importcpp: "new Geom_CylindricalSurface(@)", 
    header: "Geom_CylindricalSurface.hxx".}

proc cylindricalSurface*(a3: Ax3Obj; radius: cfloat): Handle[GeomCylindricalSurface] =
  newHandle( newCylindricalSurface(a3, radius) )


# ===========
# 2D
# ===========

# tkg2d/geom2d
proc ellipse*[T:Ax2dObj|Ax22dObj]( axis: T; 
               majorRadius: cfloat; 
               minorRadius: cfloat): Handle[Geom2dEllipse] {.
    cdecl, importcpp: "new Geom2d_Ellipse(@)", header: "Geom2d_Ellipse.hxx".}


proc trimmedCurve*[T:Geom2dCurve | Geom2dEllipse](c: Handle[T]; 
            u1: cfloat; u2: cfloat;
            sense: bool = true; 
            theAdjustPeriodic: bool = true): Handle[Geom2dTrimmedCurve] {.
    cdecl, importcpp: "new Geom2d_TrimmedCurve(@)", header: "Geom2d_TrimmedCurve.hxx".}

proc getPnt*[T:Geom2dTrimmedCurve|Geom2dEllipse; N:SomeNumber](c:Handle[T]; val:N):Pnt2dObj =
  `*`(c).value(val.cfloat)

#----
#Handle[geom_types.GeomSurface]
converter toPlane*(aSurface:Handle[Geom_Surface]): Handle[GeomPlane] =
  return downcast[Geom_Surface, GeomPlane](aSurface)


proc location*(aPlane:Handle[GeomPlane]):PntObj =
  `*`(aPlane).location()