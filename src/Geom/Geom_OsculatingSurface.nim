import geom_types


type
  Handle_Geom_OsculatingSurface* {.header: "Geom_OsculatingSurface.hxx", importcpp: "Handle_Geom_OsculatingSurface".} = handle[Geom_OsculatingSurface]
  Base_type* {.header: "Geom_OsculatingSurface.hxx", importcpp: "Geom_OsculatingSurface::base_type".} = Standard_Transient


{.push header: "Geom_OsculatingSurface.hxx".}

proc constructGeom_OsculatingSurface*(): Geom_OsculatingSurface {.constructor,importcpp: "Geom_OsculatingSurface::Geom_OsculatingSurface".}

proc constructGeom_OsculatingSurface*(BS: handle[Geom_Surface], Tol: cdouble): Geom_OsculatingSurface {.constructor,importcpp: "Geom_OsculatingSurface::Geom_OsculatingSurface(@)".}
    ## detects if the surface has punctual U or V isoparametric curve along
    ## on the bounds of the surface relativly to the tolerance Tol and Builds
    ## the corresponding osculating surfaces.

proc ` new`*(this: var Geom_OsculatingSurface, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var Geom_OsculatingSurface, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var Geom_OsculatingSurface, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var Geom_OsculatingSurface, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var Geom_OsculatingSurface, a00: cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var Geom_OsculatingSurface, a00: pointer, a01: pointer)  {.importcpp: "#  delete #".}

proc init*(this: var Geom_OsculatingSurface, BS: handle[Geom_Surface], Tol: cdouble)  {.importcpp: "Init".}

proc basisSurface*(this: Geom_OsculatingSurface): handle[Geom_Surface]  {.importcpp: "BasisSurface".}

proc tolerance*(this: Geom_OsculatingSurface): cdouble  {.importcpp: "Tolerance".}

proc uOscSurf*(this: Geom_OsculatingSurface, U: cdouble, V: cdouble, t: var bool, L: handle[Geom_BSplineSurface]): bool  {.importcpp: "UOscSurf".}
    ## if Standard_True, L is the local osculating surface along U at the
    ## point U,V.

proc vOscSurf*(this: Geom_OsculatingSurface, U: cdouble, V: cdouble, t: var bool, L: handle[Geom_BSplineSurface]): bool  {.importcpp: "VOscSurf".}
    ## if Standard_True, L is the local osculating surface along V at the
    ## point U,V.

proc dumpJson*(this: Geom_OsculatingSurface, theOStream: var Standard_OStream, theDepth: cint = 1)  {.importcpp: "DumpJson".}
    ## Dumps the content of me into the stream

proc get_type_name*(this: var Geom_OsculatingSurface): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Geom_OsculatingSurface): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: Geom_OsculatingSurface): handle[Standard_Type]  {.importcpp: "DynamicType".}

proc buildOsculatingSurface*(this: Geom_OsculatingSurface, Param: cdouble, UKnot: cint, VKnot: cint, BS: handle[Geom_BSplineSurface], L: handle[Geom_BSplineSurface]): bool  {.importcpp: "BuildOsculatingSurface".}
    ## returns False if the osculating surface can't be built

proc isQPunctual*(this: Geom_OsculatingSurface, S: handle[Geom_Surface], Param: cdouble, IT: GeomAbs_IsoType, TolMin: cdouble, TolMax: cdouble): bool  {.importcpp: "IsQPunctual".}
    ## returns True if the isoparametric is quasi-punctual

proc hasOscSurf*(this: Geom_OsculatingSurface): bool  {.importcpp: "HasOscSurf".}

proc isAlongU*(this: Geom_OsculatingSurface): bool  {.importcpp: "IsAlongU".}

proc isAlongV*(this: Geom_OsculatingSurface): bool  {.importcpp: "IsAlongV".}

proc clearOsculFlags*(this: var Geom_OsculatingSurface)  {.importcpp: "ClearOsculFlags".}

proc getSeqOfL1*(this: Geom_OsculatingSurface): Geom_SequenceOfBSplineSurface  {.importcpp: "GetSeqOfL1".}

proc getSeqOfL2*(this: Geom_OsculatingSurface): Geom_SequenceOfBSplineSurface  {.importcpp: "GetSeqOfL2".}

{.pop.}  # header: "Geom_OsculatingSurface.hxx"
