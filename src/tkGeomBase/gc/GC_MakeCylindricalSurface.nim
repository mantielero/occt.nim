{.push header: "GC_MakeCylindricalSurface.hxx".}


# Constructors and methods
proc constructor_GC_MakeCylindricalSurface*(A2: gp_Ax2, Radius: cdouble): GC_MakeCylindricalSurface {.constructor,importcpp: "GC_MakeCylindricalSurface(@)".}
  ## A2 defines the local coordinate system of the cylindrical surface. The
  ## "ZDirection" of A2 defines the direction of the surface's axis of
  ## symmetry. At the creation the parametrization of the surface is
  ## defined such that the normal Vector (N = D1U ^ D1V) is oriented
  ## towards the "outside region" of the surface. Warnings : It is not
  ## forbidden to create a cylindrical surface with Radius = 0.0 Status is
  ## "NegativeRadius" if Radius < 0.0

proc constructor_GC_MakeCylindricalSurface*(C: gp_Cylinder): GC_MakeCylindricalSurface {.constructor,importcpp: "GC_MakeCylindricalSurface(@)".}
  ## Creates a CylindricalSurface from a non persistent Cylinder from
  ## package gp.

proc constructor_GC_MakeCylindricalSurface*(Cyl: gp_Cylinder, Point: gp_Pnt): GC_MakeCylindricalSurface {.constructor,importcpp: "GC_MakeCylindricalSurface(@)".}
  ## Make a CylindricalSurface from Geom <TheCylinder> parallel to another
  ## CylindricalSurface <Cylinder> and passing through a Pnt <Point>.

proc constructor_GC_MakeCylindricalSurface*(Cyl: gp_Cylinder, Dist: cdouble): GC_MakeCylindricalSurface {.constructor,importcpp: "GC_MakeCylindricalSurface(@)".}
  ## Make a CylindricalSurface from Geom <TheCylinder> parallel to another
  ## CylindricalSurface <Cylinder> at the distance <Dist> which can be
  ## greater or lower than zero. The radius of the result is the absolute
  ## value of the radius of <Cyl> plus <Dist>

proc constructor_GC_MakeCylindricalSurface*(P1: gp_Pnt, P2: gp_Pnt, P3: gp_Pnt): GC_MakeCylindricalSurface {.constructor,importcpp: "GC_MakeCylindricalSurface(@)".}
  ## Make a CylindricalSurface from Geom <TheCylinder> passing through 3
  ## Pnt <P1>,<P2>,<P3>. Its axis is <P1P2> and its radius is the distance
  ## between <P3> and <P1P2>

proc constructor_GC_MakeCylindricalSurface*(Axis: gp_Ax1, Radius: cdouble): GC_MakeCylindricalSurface {.constructor,importcpp: "GC_MakeCylindricalSurface(@)".}
  ## Make a CylindricalSurface by its axis <Axis> and radius <Radius>.

proc constructor_GC_MakeCylindricalSurface*(Circ: gp_Circ): GC_MakeCylindricalSurface {.constructor,importcpp: "GC_MakeCylindricalSurface(@)".}
  ## Make a CylindricalSurface by its circular base.

proc ` new`*(this: var GC_MakeCylindricalSurface, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var GC_MakeCylindricalSurface, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var GC_MakeCylindricalSurface, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var GC_MakeCylindricalSurface, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var GC_MakeCylindricalSurface, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var GC_MakeCylindricalSurface, pointer, pointer)  {.importcpp: "` delete`".}

proc Value*(this: GC_MakeCylindricalSurface): Handle[Geom_CylindricalSurface]  {.importcpp: "Value".}
  ## Returns the constructed cylinder. Exceptions StdFail_NotDone if no
  ## cylinder is constructed.

{.pop.} # header: "GC_MakeCylindricalSurface.hxx
