import geom_types


type
  Handle_Geom_Surface* {.header: "Geom_Surface.hxx", importcpp: "Handle_Geom_Surface".} = handle[Geom_Surface]
  Base_type* {.header: "Geom_Surface.hxx", importcpp: "Geom_Surface::base_type".} = Geom_Geometry


{.push header: "Geom_Surface.hxx".}

proc uReverse*(this: var Geom_Surface)  {.importcpp: "UReverse".}
    ## Reverses the U direction of parametrization of <me>. The bounds of the
    ## surface are not modified.

proc uReversed*(this: Geom_Surface): handle[Geom_Surface]  {.importcpp: "UReversed".}
    ## Reverses the U direction of parametrization of <me>. The bounds of the
    ## surface are not modified. A copy of <me> is returned.

proc uReversedParameter*(this: Geom_Surface, U: cdouble): cdouble  {.importcpp: "UReversedParameter".}
    ## Returns the parameter on the Ureversed surface for the point of
    ## parameter U on <me>.

proc vReverse*(this: var Geom_Surface)  {.importcpp: "VReverse".}
    ## Reverses the V direction of parametrization of <me>. The bounds of the
    ## surface are not modified.

proc vReversed*(this: Geom_Surface): handle[Geom_Surface]  {.importcpp: "VReversed".}
    ## Reverses the V direction of parametrization of <me>. The bounds of the
    ## surface are not modified. A copy of <me> is returned.

proc vReversedParameter*(this: Geom_Surface, V: cdouble): cdouble  {.importcpp: "VReversedParameter".}
    ## Returns the parameter on the Vreversed surface for the point of
    ## parameter V on <me>.

proc transformParameters*(this: Geom_Surface, U: var cdouble, V: var cdouble, T: gp_Trsf)  {.importcpp: "TransformParameters".}
    ## Computes the parameters on the transformed surface for the transform
    ## of the point of parameters U,V on <me>.

proc parametricTransformation*(this: Geom_Surface, T: gp_Trsf): gp_GTrsf2d  {.importcpp: "ParametricTransformation".}
    ## Returns a 2d transformation used to find the new parameters of a point
    ## on the transformed surface.

proc bounds*(this: Geom_Surface, U1: var cdouble, U2: var cdouble, V1: var cdouble, V2: var cdouble)  {.importcpp: "Bounds".}
    ## Returns the parametric bounds U1, U2, V1 and V2 of this surface. If
    ## the surface is infinite, this function can return a value equal to
    ## Precision::Infinite: instead of cdouble::LastReal.

proc isUClosed*(this: Geom_Surface): bool  {.importcpp: "IsUClosed".}
    ## Checks whether this surface is closed in the u parametric direction.
    ## Returns true if, in the u parametric direction: taking uFirst and
    ## uLast as the parametric bounds in the u parametric direction, for each
    ## parameter v, the distance between the points P(uFirst, v) and P(uLast,
    ## v) is less than or equal to gp::Resolution().

proc isVClosed*(this: Geom_Surface): bool  {.importcpp: "IsVClosed".}
    ## Checks whether this surface is closed in the u parametric direction.
    ## Returns true if, in the v parametric direction: taking vFirst and
    ## vLast as the parametric bounds in the v parametric direction, for each
    ## parameter u, the distance between the points P(u, vFirst) and P(u,
    ## vLast) is less than or equal to gp::Resolution().

proc isUPeriodic*(this: Geom_Surface): bool  {.importcpp: "IsUPeriodic".}
    ## Checks if this surface is periodic in the u parametric direction.
    ## Returns true if: - this surface is closed in the u parametric
    ## direction, and - there is a constant T such that the distance between
    ## the points P (u, v) and P (u + T, v) (or the points P (u, v) and P (u,
    ## v + T)) is less than or equal to gp::Resolution(). Note: T is the
    ## parametric period in the u parametric direction.

proc uPeriod*(this: Geom_Surface): cdouble  {.importcpp: "UPeriod".}
    ## Returns the period of this surface in the u parametric direction.
    ## raises if the surface is not uperiodic.

proc isVPeriodic*(this: Geom_Surface): bool  {.importcpp: "IsVPeriodic".}
    ## Checks if this surface is periodic in the v parametric direction.
    ## Returns true if: - this surface is closed in the v parametric
    ## direction, and - there is a constant T such that the distance between
    ## the points P (u, v) and P (u + T, v) (or the points P (u, v) and P (u,
    ## v + T)) is less than or equal to gp::Resolution(). Note: T is the
    ## parametric period in the v parametric direction.

proc vPeriod*(this: Geom_Surface): cdouble  {.importcpp: "VPeriod".}
    ## Returns the period of this surface in the v parametric direction.
    ## raises if the surface is not vperiodic.

proc uIso*(this: Geom_Surface, U: cdouble): handle[Geom_Curve]  {.importcpp: "UIso".}
    ## Computes the U isoparametric curve.

proc vIso*(this: Geom_Surface, V: cdouble): handle[Geom_Curve]  {.importcpp: "VIso".}
    ## Computes the V isoparametric curve.

proc continuity*(this: Geom_Surface): GeomAbs_Shape  {.importcpp: "Continuity".}
    ## Returns the Global Continuity of the surface in direction U and V : C0
    ## : only geometric continuity, C1 : continuity of the first derivative
    ## all along the surface, C2 : continuity of the second derivative all
    ## along the surface, C3 : continuity of the third derivative all along
    ## the surface, G1 : tangency continuity all along the surface, G2 :
    ## curvature continuity all along the surface, CN : the order of
    ## continuity is infinite. Example : If the surface is C1 in the V
    ## parametric direction and C2 in the U parametric direction Shape = C1.

proc isCNu*(this: Geom_Surface, N: cint): bool  {.importcpp: "IsCNu".}
    ## Returns the order of continuity of the surface in the U parametric
    ## direction. Raised if N < 0.

proc isCNv*(this: Geom_Surface, N: cint): bool  {.importcpp: "IsCNv".}
    ## Returns the order of continuity of the surface in the V parametric
    ## direction. Raised if N < 0.

proc d0*(this: Geom_Surface, U: cdouble, V: cdouble, P: var gp_Pnt)  {.importcpp: "D0".}
    ## Computes the point of parameter U,V on the surface.

proc d1*(this: Geom_Surface, U: cdouble, V: cdouble, P: var gp_Pnt, D1U: var gp_Vec, D1V: var gp_Vec)  {.importcpp: "D1".}
    ## Computes the point P and the first derivatives in the directions U and
    ## V at this point. Raised if the continuity of the surface is not C1.

proc d2*(this: Geom_Surface, U: cdouble, V: cdouble, P: var gp_Pnt, D1U: var gp_Vec, D1V: var gp_Vec, D2U: var gp_Vec, D2V: var gp_Vec, D2UV: var gp_Vec)  {.importcpp: "D2".}
    ## Computes the point P, the first and the second derivatives in the
    ## directions U and V at this point. Raised if the continuity of the
    ## surface is not C2.

proc d3*(this: Geom_Surface, U: cdouble, V: cdouble, P: var gp_Pnt, D1U: var gp_Vec, D1V: var gp_Vec, D2U: var gp_Vec, D2V: var gp_Vec, D2UV: var gp_Vec, D3U: var gp_Vec, D3V: var gp_Vec, D3UUV: var gp_Vec, D3UVV: var gp_Vec)  {.importcpp: "D3".}
    ## Computes the point P, the first,the second and the third derivatives
    ## in the directions U and V at this point. Raised if the continuity of
    ## the surface is not C2.

proc dN*(this: Geom_Surface, U: cdouble, V: cdouble, Nu: cint, Nv: cint): gp_Vec  {.importcpp: "DN".}
    ## ---Purpose ; Computes the derivative of order Nu in the direction U
    ## and Nv in the direction V at the point P(U, V).

proc value*(this: Geom_Surface, U: cdouble, V: cdouble): gp_Pnt  {.importcpp: "Value".}
    ## Computes the point of parameter U on the surface.

proc dumpJson*(this: Geom_Surface, theOStream: var Standard_OStream, theDepth: cint = 1)  {.importcpp: "DumpJson".}
    ## Dumps the content of me into the stream

proc get_type_name*(this: var Geom_Surface): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Geom_Surface): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: Geom_Surface): handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.}  # header: "Geom_Surface.hxx"
