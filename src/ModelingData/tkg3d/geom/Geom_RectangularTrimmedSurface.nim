import geom_types


type
  Geom_RectangularTrimmedSurface* {.header: "Geom_RectangularTrimmedSurface.hxx", importcpp: "Geom_RectangularTrimmedSurface", byref.} = object #of class Geom_BoundedSurface
    ## Describes a portion of a surface (a patch) limited by two values of
    ## the u parameter in the u parametric direction, and two values of the v
    ## parameter in the v parametric direction. The domain of the trimmed
    ## surface must be within the domain of the surface being trimmed. The
    ## trimmed surface is defined by: - the basis surface, and - the values
    ## (umin, umax) and (vmin, vmax) which limit it in the u and v parametric
    ## directions. The trimmed surface is built from a copy of the basis
    ## surface. Therefore, when the basis surface is modified the trimmed
    ## surface is not changed. Consequently, the trimmed surface does not
    ## necessarily have the same orientation as the basis surface. Warning:
    ## The case of surface being trimmed is periodic and parametrics values
    ## are outside the domain is possible. But, domain of the trimmed surface
    ## can be translated by (n X) the period.

  Handle_Geom_RectangularTrimmedSurface* {.header: "Geom_RectangularTrimmedSurface.hxx", importcpp: "Handle_Geom_RectangularTrimmedSurface".} = handle[Geom_RectangularTrimmedSurface]
  Base_type* {.header: "Geom_RectangularTrimmedSurface.hxx", importcpp: "Geom_RectangularTrimmedSurface::base_type".} = Geom_BoundedSurface


{.push header: "Geom_RectangularTrimmedSurface.hxx".}

proc constructGeom_RectangularTrimmedSurface*(S: handle[Geom_Surface], U1: Standard_Real, U2: Standard_Real, V1: Standard_Real, V2: Standard_Real, USense: Standard_Boolean, VSense: Standard_Boolean): Geom_RectangularTrimmedSurface {.constructor,importcpp: "Geom_RectangularTrimmedSurface::Geom_RectangularTrimmedSurface(@)".}
    ## The U parametric direction of the surface is oriented from U1 to U2.
    ## The V parametric direction of the surface is oriented from V1 to V2.
    ## These two directions define the orientation of the surface (normal).
    ## If the surface is not periodic USense and VSense are not used for the
    ## construction. If the surface S is periodic in one direction USense and
    ## VSense give the available part of the surface. By default in this case
    ## the surface has the same orientation as the basis surface S. The
    ## returned surface is not closed and not periodic. ConstructionError
    ## Raised if S is not periodic in the UDirection and U1 or U2 are out of
    ## the bounds of S. S is not periodic in the VDirection and V1 or V2 are
    ## out of the bounds of S. U1 = U2 or V1 = V2

proc constructGeom_RectangularTrimmedSurface*(S: handle[Geom_Surface], Param1: Standard_Real, Param2: Standard_Real, UTrim: Standard_Boolean, Sense: Standard_Boolean): Geom_RectangularTrimmedSurface {.constructor,importcpp: "Geom_RectangularTrimmedSurface::Geom_RectangularTrimmedSurface(@)".}
    ## The basis surface S is only trim in one parametric direction. If UTrim
    ## = True the surface is trimmed in the U parametric direction else the
    ## surface is trimmed in the V parametric direction. In the considered
    ## parametric direction the resulting surface is oriented from Param1 to
    ## Param2. If S is periodic Sense gives the available part of the
    ## surface. By default the trimmed surface has the same orientation as
    ## the basis surface S in the considered parametric direction (Sense =
    ## True). If the basis surface S is closed or periodic in the parametric
    ## direction opposite to the trimming direction the trimmed surface has
    ## the same characteristics as the surface S in this direction. Warnings
    ## : In this package the entities are not shared. The
    ## RectangularTrimmedSurface is built with a copy of the surface S. So
    ## when S is modified the RectangularTrimmedSurface is not modified
    ## Raised if S is not periodic in the considered parametric direction and
    ## Param1 or Param2 are out of the bounds of S. Param1 = Param2

proc setTrim*(this: var Geom_RectangularTrimmedSurface, U1: Standard_Real, U2: Standard_Real, V1: Standard_Real, V2: Standard_Real, USense: Standard_Boolean, VSense: Standard_Boolean)  {.importcpp: "SetTrim".}
    ## Modifies this patch by changing the trim values applied to the
    ## original surface The u parametric direction of this patch is oriented
    ## from U1 to U2. The v parametric direction of this patch is oriented
    ## from V1 to V2. USense and VSense are used for the construction only if
    ## the surface is periodic in the corresponding parametric direction, and
    ## define the available part of the surface; by default in this case,
    ## this patch has the same orientation as the basis surface. Raised if
    ## The BasisSurface is not periodic in the UDirection and U1 or U2 are
    ## out of the bounds of the BasisSurface. The BasisSurface is not
    ## periodic in the VDirection and V1 or V2 are out of the bounds of the
    ## BasisSurface. U1 = U2 or V1 = V2

proc setTrim*(this: var Geom_RectangularTrimmedSurface, Param1: Standard_Real, Param2: Standard_Real, UTrim: Standard_Boolean, Sense: Standard_Boolean)  {.importcpp: "SetTrim".}
    ## Modifies this patch by changing the trim values applied to the
    ## original surface The basis surface is trimmed only in one parametric
    ## direction: if UTrim is true, the surface is trimmed in the u
    ## parametric direction; if it is false, it is trimmed in the v
    ## parametric direction. In the "trimmed" direction, this patch is
    ## oriented from Param1 to Param2. If the basis surface is periodic in
    ## the "trimmed" direction, Sense defines its available part. By default
    ## in this case, this patch has the same orientation as the basis surface
    ## in this parametric direction. If the basis surface is closed or
    ## periodic in the other parametric direction (i.e. not the "trimmed"
    ## direction), this patch has the same characteristics as the basis
    ## surface in that parametric direction. Raised if The BasisSurface is
    ## not periodic in the considered direction and Param1 or Param2 are out
    ## of the bounds of the BasisSurface. Param1 = Param2

proc basisSurface*(this: Geom_RectangularTrimmedSurface): handle[Geom_Surface]  {.importcpp: "BasisSurface".}
    ## Returns the Basis surface of <me>.

proc uReverse*(this: var Geom_RectangularTrimmedSurface)  {.importcpp: "UReverse".}
    ## Changes the orientation of this patch in the u parametric direction.
    ## The bounds of the surface are not changed, but the given parametric
    ## direction is reversed. Hence the orientation of the surface is
    ## reversed.

proc uReversedParameter*(this: Geom_RectangularTrimmedSurface, U: Standard_Real): Standard_Real  {.importcpp: "UReversedParameter".}
    ## Computes the u parameter on the modified surface, produced by when
    ## reversing its u parametric direction, for any point of u parameter U
    ## on this patch.

proc vReverse*(this: var Geom_RectangularTrimmedSurface)  {.importcpp: "VReverse".}
    ## Changes the orientation of this patch in the v parametric direction.
    ## The bounds of the surface are not changed, but the given parametric
    ## direction is reversed. Hence the orientation of the surface is
    ## reversed.

proc vReversedParameter*(this: Geom_RectangularTrimmedSurface, V: Standard_Real): Standard_Real  {.importcpp: "VReversedParameter".}
    ## Computes the v parameter on the modified surface, produced by when
    ## reversing its v parametric direction, for any point of v parameter V
    ## on this patch.

proc bounds*(this: Geom_RectangularTrimmedSurface, U1: var Standard_Real, U2: var Standard_Real, V1: var Standard_Real, V2: var Standard_Real)  {.importcpp: "Bounds".}
    ## Returns the parametric bounds U1, U2, V1 and V2 of this patch.

proc continuity*(this: Geom_RectangularTrimmedSurface): GeomAbs_Shape  {.importcpp: "Continuity".}
    ## Returns the continuity of the surface : C0 : only geometric
    ## continuity, C1 : continuity of the first derivative all along the
    ## Surface, C2 : continuity of the second derivative all along the
    ## Surface, C3 : continuity of the third derivative all along the
    ## Surface, CN : the order of continuity is infinite.

proc isUClosed*(this: Geom_RectangularTrimmedSurface): Standard_Boolean  {.importcpp: "IsUClosed".}
    ## Returns true if this patch is closed in the given parametric
    ## direction.

proc isVClosed*(this: Geom_RectangularTrimmedSurface): Standard_Boolean  {.importcpp: "IsVClosed".}
    ## Returns true if this patch is closed in the given parametric
    ## direction.

proc isCNu*(this: Geom_RectangularTrimmedSurface, N: Standard_Integer): Standard_Boolean  {.importcpp: "IsCNu".}
    ## Returns true if the order of derivation in the U parametric direction
    ## is N. Raised if N < 0.

proc isCNv*(this: Geom_RectangularTrimmedSurface, N: Standard_Integer): Standard_Boolean  {.importcpp: "IsCNv".}
    ## Returns true if the order of derivation in the V parametric direction
    ## is N. Raised if N < 0.

proc isUPeriodic*(this: Geom_RectangularTrimmedSurface): Standard_Boolean  {.importcpp: "IsUPeriodic".}
    ## Returns true if this patch is periodic and not trimmed in the given
    ## parametric direction.

proc uPeriod*(this: Geom_RectangularTrimmedSurface): Standard_Real  {.importcpp: "UPeriod".}
    ## Returns the period of this patch in the u parametric direction. raises
    ## if the surface is not uperiodic.

proc isVPeriodic*(this: Geom_RectangularTrimmedSurface): Standard_Boolean  {.importcpp: "IsVPeriodic".}
    ## Returns true if this patch is periodic and not trimmed in the given
    ## parametric direction.

proc vPeriod*(this: Geom_RectangularTrimmedSurface): Standard_Real  {.importcpp: "VPeriod".}
    ## Returns the period of this patch in the v parametric direction. raises
    ## if the surface is not vperiodic. value and derivatives

proc uIso*(this: Geom_RectangularTrimmedSurface, U: Standard_Real): handle[Geom_Curve]  {.importcpp: "UIso".}
    ## computes the U isoparametric curve.

proc vIso*(this: Geom_RectangularTrimmedSurface, V: Standard_Real): handle[Geom_Curve]  {.importcpp: "VIso".}
    ## Computes the V isoparametric curve.

proc d0*(this: Geom_RectangularTrimmedSurface, U: Standard_Real, V: Standard_Real, P: var gp_Pnt)  {.importcpp: "D0".}
    ## Can be raised if the basis surface is an OffsetSurface.

proc d1*(this: Geom_RectangularTrimmedSurface, U: Standard_Real, V: Standard_Real, P: var gp_Pnt, D1U: var gp_Vec, D1V: var gp_Vec)  {.importcpp: "D1".}
    ## The returned derivatives have the same orientation as the derivatives
    ## of the basis surface even if the trimmed surface has not the same
    ## parametric orientation. Warning! UndefinedDerivative raised if the
    ## continuity of the surface is not C1.

proc d2*(this: Geom_RectangularTrimmedSurface, U: Standard_Real, V: Standard_Real, P: var gp_Pnt, D1U: var gp_Vec, D1V: var gp_Vec, D2U: var gp_Vec, D2V: var gp_Vec, D2UV: var gp_Vec)  {.importcpp: "D2".}
    ## The returned derivatives have the same orientation as the derivatives
    ## of the basis surface even if the trimmed surface has not the same
    ## parametric orientation. Warning! UndefinedDerivative raised if the
    ## continuity of the surface is not C2.

proc d3*(this: Geom_RectangularTrimmedSurface, U: Standard_Real, V: Standard_Real, P: var gp_Pnt, D1U: var gp_Vec, D1V: var gp_Vec, D2U: var gp_Vec, D2V: var gp_Vec, D2UV: var gp_Vec, D3U: var gp_Vec, D3V: var gp_Vec, D3UUV: var gp_Vec, D3UVV: var gp_Vec)  {.importcpp: "D3".}
    ## The returned derivatives have the same orientation as the derivatives
    ## of the basis surface even if the trimmed surface has not the same
    ## parametric orientation. Warning UndefinedDerivative raised if the
    ## continuity of the surface is not C3.

proc dN*(this: Geom_RectangularTrimmedSurface, U: Standard_Real, V: Standard_Real, Nu: Standard_Integer, Nv: Standard_Integer): gp_Vec  {.importcpp: "DN".}
    ## The returned derivative has the same orientation as the derivative of
    ## the basis surface even if the trimmed surface has not the same
    ## parametric orientation. Warning! UndefinedDerivative raised if the
    ## continuity of the surface is not CNu in the U parametric direction and
    ## CNv in the V parametric direction. RangeError Raised if Nu + Nv < 1 or
    ## Nu < 0 or Nv < 0.

proc transform*(this: var Geom_RectangularTrimmedSurface, T: gp_Trsf)  {.importcpp: "Transform".}
    ## Applies the transformation T to this patch. Warning As a consequence,
    ## the basis surface included in the data structure of this patch is also
    ## modified.

proc transformParameters*(this: Geom_RectangularTrimmedSurface, U: var Standard_Real, V: var Standard_Real, T: gp_Trsf)  {.importcpp: "TransformParameters".}
    ## Computes the parameters on the transformed surface for the transform
    ## of the point of parameters U,V on <me>.

proc parametricTransformation*(this: Geom_RectangularTrimmedSurface, T: gp_Trsf): gp_GTrsf2d  {.importcpp: "ParametricTransformation".}
    ## Returns a 2d transformation used to find the new parameters of a point
    ## on the transformed surface.

proc copy*(this: Geom_RectangularTrimmedSurface): handle[Geom_Geometry]  {.importcpp: "Copy".}
    ## Creates a new object which is a copy of this patch.

proc dumpJson*(this: Geom_RectangularTrimmedSurface, theOStream: var Standard_OStream, theDepth: Standard_Integer = 1)  {.importcpp: "DumpJson".}
    ## Dumps the content of me into the stream

proc get_type_name*(this: var Geom_RectangularTrimmedSurface): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Geom_RectangularTrimmedSurface): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: Geom_RectangularTrimmedSurface): handle[Standard_Type]  {.importcpp: "DynamicType".}

proc setTrim*(this: var Geom_RectangularTrimmedSurface, U1: Standard_Real, U2: Standard_Real, V1: Standard_Real, V2: Standard_Real, UTrim: Standard_Boolean, VTrim: Standard_Boolean, USense: Standard_Boolean, VSense: Standard_Boolean)  {.importcpp: "SetTrim".}
    ## General set trim, to implement constructors and others set trim.

{.pop.}  # header: "Geom_RectangularTrimmedSurface.hxx"
