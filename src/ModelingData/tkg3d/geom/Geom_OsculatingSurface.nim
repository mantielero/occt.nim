import geom_types


type
  Handle_Geom_OsculatingSurface* {.header: "Geom_OsculatingSurface.hxx", importcpp: "Handle_Geom_OsculatingSurface".} = handle[Geom_OsculatingSurface]
  Base_type* {.header: "Geom_OsculatingSurface.hxx", importcpp: "Geom_OsculatingSurface::base_type".} = Standard_Transient


{.push header: "Geom_OsculatingSurface.hxx".}

proc constructGeom_OsculatingSurface*(): Geom_OsculatingSurface {.constructor,importcpp: "Geom_OsculatingSurface::Geom_OsculatingSurface".}

proc constructGeom_OsculatingSurface*(BS: handle[Geom_Surface], Tol: Standard_Real): Geom_OsculatingSurface {.constructor,importcpp: "Geom_OsculatingSurface::Geom_OsculatingSurface(@)".}
    ## detects if the surface has punctual U or V isoparametric curve along
    ## on the bounds of the surface relativly to the tolerance Tol and Builds
    ## the corresponding osculating surfaces.

proc ` new`*(this: var Geom_OsculatingSurface, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var Geom_OsculatingSurface, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var Geom_OsculatingSurface, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var Geom_OsculatingSurface, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var Geom_OsculatingSurface, a00: cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var Geom_OsculatingSurface, a00: pointer, a01: pointer)  {.importcpp: "#  delete #".}

proc init*(this: var Geom_OsculatingSurface, BS: handle[Geom_Surface], Tol: Standard_Real)  {.importcpp: "Init".}

proc basisSurface*(this: Geom_OsculatingSurface): handle[Geom_Surface]  {.importcpp: "BasisSurface".}

proc tolerance*(this: Geom_OsculatingSurface): Standard_Real  {.importcpp: "Tolerance".}

proc uOscSurf*(this: Geom_OsculatingSurface, U: Standard_Real, V: Standard_Real, t: var Standard_Boolean, L: handle[Geom_BSplineSurface]): Standard_Boolean  {.importcpp: "UOscSurf".}
    ## if Standard_True, L is the local osculating surface along U at the
    ## point U,V.

proc vOscSurf*(this: Geom_OsculatingSurface, U: Standard_Real, V: Standard_Real, t: var Standard_Boolean, L: handle[Geom_BSplineSurface]): Standard_Boolean  {.importcpp: "VOscSurf".}
    ## if Standard_True, L is the local osculating surface along V at the
    ## point U,V.

proc dumpJson*(this: Geom_OsculatingSurface, theOStream: var Standard_OStream, theDepth: Standard_Integer = 1)  {.importcpp: "DumpJson".}
    ## Dumps the content of me into the stream

proc get_type_name*(this: var Geom_OsculatingSurface): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Geom_OsculatingSurface): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: Geom_OsculatingSurface): handle[Standard_Type]  {.importcpp: "DynamicType".}

proc buildOsculatingSurface*(this: Geom_OsculatingSurface, Param: Standard_Real, UKnot: Standard_Integer, VKnot: Standard_Integer, BS: handle[Geom_BSplineSurface], L: handle[Geom_BSplineSurface]): Standard_Boolean  {.importcpp: "BuildOsculatingSurface".}
    ## returns False if the osculating surface can't be built

proc isQPunctual*(this: Geom_OsculatingSurface, S: handle[Geom_Surface], Param: Standard_Real, IT: GeomAbs_IsoType, TolMin: Standard_Real, TolMax: Standard_Real): Standard_Boolean  {.importcpp: "IsQPunctual".}
    ## returns True if the isoparametric is quasi-punctual

proc hasOscSurf*(this: Geom_OsculatingSurface): Standard_Boolean  {.importcpp: "HasOscSurf".}

proc isAlongU*(this: Geom_OsculatingSurface): Standard_Boolean  {.importcpp: "IsAlongU".}

proc isAlongV*(this: Geom_OsculatingSurface): Standard_Boolean  {.importcpp: "IsAlongV".}

proc clearOsculFlags*(this: var Geom_OsculatingSurface)  {.importcpp: "ClearOsculFlags".}

proc getSeqOfL1*(this: Geom_OsculatingSurface): Geom_SequenceOfBSplineSurface  {.importcpp: "GetSeqOfL1".}

proc getSeqOfL2*(this: Geom_OsculatingSurface): Geom_SequenceOfBSplineSurface  {.importcpp: "GetSeqOfL2".}

{.pop.}  # header: "Geom_OsculatingSurface.hxx"
