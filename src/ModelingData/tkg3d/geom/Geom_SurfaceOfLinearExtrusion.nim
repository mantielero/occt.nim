import geom_types


type
  Geom_SurfaceOfLinearExtrusion* {.header: "Geom_SurfaceOfLinearExtrusion.hxx", importcpp: "Geom_SurfaceOfLinearExtrusion", byref.} = object #of class Geom_SweptSurface
    ## Describes a surface of linear extrusion ("extruded surface"), e.g. a
    ## generalized cylinder. Such a surface is obtained by sweeping a curve
    ## (called the "extruded curve" or "basis") in a given direction
    ## (referred to as the "direction of extrusion" and defined by a unit
    ## vector). The u parameter is along the extruded curve. The v parameter
    ## is along the direction of extrusion. The parameter range for the u
    ## parameter is defined by the reference curve. The parameter range for
    ## the v parameter is ] - infinity, + infinity [. The position of the
    ## curve gives the origin of the v parameter. The surface is "CN" in the
    ## v parametric direction. The form of a surface of linear extrusion is
    ## generally a ruled surface (GeomAbs_RuledForm). It can be: - a
    ## cylindrical surface, if the extruded curve is a circle, or a trimmed
    ## circle, with an axis parallel to the direction of extrusion
    ## (GeomAbs_CylindricalForm), or - a planar surface, if the extruded
    ## curve is a line (GeomAbs_PlanarForm). Note: The surface of extrusion
    ## is built from a copy of the original basis curve, so the original
    ## curve is not modified when the surface is modified. Warning Degenerate
    ## surfaces are not detected. A degenerate surface is obtained, for
    ## example, when the extruded curve is a line and the direction of
    ## extrusion is parallel to that line.

  Handle_Geom_SurfaceOfLinearExtrusion* {.header: "Geom_SurfaceOfLinearExtrusion.hxx", importcpp: "Handle_Geom_SurfaceOfLinearExtrusion".} = handle[Geom_SurfaceOfLinearExtrusion]
  Base_type* {.header: "Geom_SurfaceOfLinearExtrusion.hxx", importcpp: "Geom_SurfaceOfLinearExtrusion::base_type".} = Geom_SweptSurface


{.push header: "Geom_SurfaceOfLinearExtrusion.hxx".}

proc constructGeom_SurfaceOfLinearExtrusion*(C: handle[Geom_Curve], V: gp_Dir): Geom_SurfaceOfLinearExtrusion {.constructor,importcpp: "Geom_SurfaceOfLinearExtrusion::Geom_SurfaceOfLinearExtrusion(@)".}
    ## V is the direction of extrusion. C is the extruded curve. The form of
    ## a SurfaceOfLinearExtrusion can be : . ruled surface (RuledForm), . a
    ## cylindrical surface if the extruded curve is a circle or a trimmed
    ## circle (CylindricalForm), . a plane surface if the extruded curve is a
    ## Line (PlanarForm). Warnings : Degenerated surface cases are not
    ## detected. For example if the curve C is a line and V is parallel to
    ## the direction of this line.

proc setDirection*(this: var Geom_SurfaceOfLinearExtrusion, V: gp_Dir)  {.importcpp: "SetDirection".}
    ## Assigns V as the "direction of extrusion" for this surface of linear
    ## extrusion.

proc setBasisCurve*(this: var Geom_SurfaceOfLinearExtrusion, C: handle[Geom_Curve])  {.importcpp: "SetBasisCurve".}
    ## Modifies this surface of linear extrusion by redefining its "basis
    ## curve" (the "extruded curve").

proc uReverse*(this: var Geom_SurfaceOfLinearExtrusion)  {.importcpp: "UReverse".}
    ## Changes the orientation of this surface of linear extrusion in the u
    ## parametric direction. The bounds of the surface are not changed, but
    ## the given parametric direction is reversed. Hence the orientation of
    ## the surface is reversed. In the case of a surface of linear extrusion:
    ## - UReverse reverses the basis curve, and - VReverse reverses the
    ## direction of linear extrusion.

proc uReversedParameter*(this: Geom_SurfaceOfLinearExtrusion, U: Standard_Real): Standard_Real  {.importcpp: "UReversedParameter".}
    ## Computes the u parameter on the modified surface, produced by
    ## reversing its u parametric direction, for any point of u parameter U
    ## on this surface of linear extrusion. In the case of an extruded
    ## surface: - UReverseParameter returns the reversed parameter given by
    ## the function ReversedParameter called with U on the basis curve,

proc vReverse*(this: var Geom_SurfaceOfLinearExtrusion)  {.importcpp: "VReverse".}
    ## Changes the orientation of this surface of linear extrusion in the v
    ## parametric direction. The bounds of the surface are not changed, but
    ## the given parametric direction is reversed. Hence the orientation of
    ## the surface is reversed. In the case of a surface of linear extrusion:
    ## - UReverse reverses the basis curve, and - VReverse reverses the
    ## direction of linear extrusion.

proc vReversedParameter*(this: Geom_SurfaceOfLinearExtrusion, V: Standard_Real): Standard_Real  {.importcpp: "VReversedParameter".}
    ## Computes the v parameter on the modified surface, produced by
    ## reversing its u v parametric direction, for any point of v parameter V
    ## on this surface of linear extrusion. In the case of an extruded
    ## surface VReverse returns -V.

proc bounds*(this: Geom_SurfaceOfLinearExtrusion, U1: var Standard_Real, U2: var Standard_Real, V1: var Standard_Real, V2: var Standard_Real)  {.importcpp: "Bounds".}
    ## Returns the parametric bounds U1, U2, V1 and V2 of this surface of
    ## linear extrusion. A surface of linear extrusion is infinite in the v
    ## parametric direction, so: - V1 = Standard_Real::RealFirst() - V2 =
    ## Standard_Real::RealLast().

proc isUClosed*(this: Geom_SurfaceOfLinearExtrusion): Standard_Boolean  {.importcpp: "IsUClosed".}
    ## IsUClosed returns true if the "basis curve" of this surface of linear
    ## extrusion is closed.

proc isVClosed*(this: Geom_SurfaceOfLinearExtrusion): Standard_Boolean  {.importcpp: "IsVClosed".}
    ## IsVClosed always returns false.

proc isCNu*(this: Geom_SurfaceOfLinearExtrusion, N: Standard_Integer): Standard_Boolean  {.importcpp: "IsCNu".}
    ## IsCNu returns true if the degree of continuity for the "basis curve"
    ## of this surface of linear extrusion is at least N. Raises RangeError
    ## if N < 0.

proc isCNv*(this: Geom_SurfaceOfLinearExtrusion, N: Standard_Integer): Standard_Boolean  {.importcpp: "IsCNv".}
    ## IsCNv always returns true.

proc isUPeriodic*(this: Geom_SurfaceOfLinearExtrusion): Standard_Boolean  {.importcpp: "IsUPeriodic".}
    ## IsUPeriodic returns true if the "basis curve" of this surface of
    ## linear extrusion is periodic.

proc isVPeriodic*(this: Geom_SurfaceOfLinearExtrusion): Standard_Boolean  {.importcpp: "IsVPeriodic".}
    ## IsVPeriodic always returns false.

proc uIso*(this: Geom_SurfaceOfLinearExtrusion, U: Standard_Real): handle[Geom_Curve]  {.importcpp: "UIso".}
    ## Computes the U isoparametric curve of this surface of linear
    ## extrusion. This is the line parallel to the direction of extrusion,
    ## passing through the point of parameter U of the basis curve.

proc vIso*(this: Geom_SurfaceOfLinearExtrusion, V: Standard_Real): handle[Geom_Curve]  {.importcpp: "VIso".}
    ## Computes the V isoparametric curve of this surface of linear
    ## extrusion. This curve is obtained by translating the extruded curve in
    ## the direction of extrusion, with the magnitude V.

proc d0*(this: Geom_SurfaceOfLinearExtrusion, U: Standard_Real, V: Standard_Real, P: var gp_Pnt)  {.importcpp: "D0".}
    ## Computes the point P (U, V) on the surface. The parameter U is the
    ## parameter on the extruded curve. The parametrization V is a linear
    ## parametrization, and the direction of parametrization is the direction
    ## of extrusion. If the point is on the extruded curve, V = 0.0

proc d1*(this: Geom_SurfaceOfLinearExtrusion, U: Standard_Real, V: Standard_Real, P: var gp_Pnt, D1U: var gp_Vec, D1V: var gp_Vec)  {.importcpp: "D1".}
    ## Computes the current point and the first derivatives in the directions
    ## U and V. Raises UndefinedDerivative if the continuity of the surface
    ## is not C1.

proc d2*(this: Geom_SurfaceOfLinearExtrusion, U: Standard_Real, V: Standard_Real, P: var gp_Pnt, D1U: var gp_Vec, D1V: var gp_Vec, D2U: var gp_Vec, D2V: var gp_Vec, D2UV: var gp_Vec)  {.importcpp: "D2".}
    ## --- Purpose ; Computes the current point, the first and the second
    ## derivatives in the directions U and V. Raises UndefinedDerivative if
    ## the continuity of the surface is not C2.

proc d3*(this: Geom_SurfaceOfLinearExtrusion, U: Standard_Real, V: Standard_Real, P: var gp_Pnt, D1U: var gp_Vec, D1V: var gp_Vec, D2U: var gp_Vec, D2V: var gp_Vec, D2UV: var gp_Vec, D3U: var gp_Vec, D3V: var gp_Vec, D3UUV: var gp_Vec, D3UVV: var gp_Vec)  {.importcpp: "D3".}
    ## Computes the current point, the first,the second and the third
    ## derivatives in the directions U and V. Raises UndefinedDerivative if
    ## the continuity of the surface is not C3.

proc dN*(this: Geom_SurfaceOfLinearExtrusion, U: Standard_Real, V: Standard_Real, Nu: Standard_Integer, Nv: Standard_Integer): gp_Vec  {.importcpp: "DN".}
    ## Computes the derivative of order Nu in the direction u and Nv in the
    ## direction v. Raises UndefinedDerivative if the continuity of the
    ## surface is not CNu in the u direction and CNv in the v direction.
    ## Raises RangeError if Nu + Nv < 1 or Nu < 0 or Nv < 0.

proc transform*(this: var Geom_SurfaceOfLinearExtrusion, T: gp_Trsf)  {.importcpp: "Transform".}
    ## Applies the transformation T to this surface of linear extrusion.

proc transformParameters*(this: Geom_SurfaceOfLinearExtrusion, U: var Standard_Real, V: var Standard_Real, T: gp_Trsf)  {.importcpp: "TransformParameters".}
    ## Computes the parameters on the transformed surface for the transform
    ## of the point of parameters U,V on <me>.

proc parametricTransformation*(this: Geom_SurfaceOfLinearExtrusion, T: gp_Trsf): gp_GTrsf2d  {.importcpp: "ParametricTransformation".}
    ## Returns a 2d transformation used to find the new parameters of a point
    ## on the transformed surface.

proc copy*(this: Geom_SurfaceOfLinearExtrusion): handle[Geom_Geometry]  {.importcpp: "Copy".}
    ## Creates a new object which is a copy of this surface of linear
    ## extrusion.

proc dumpJson*(this: Geom_SurfaceOfLinearExtrusion, theOStream: var Standard_OStream, theDepth: Standard_Integer = 1)  {.importcpp: "DumpJson".}
    ## Dumps the content of me into the stream

proc get_type_name*(this: var Geom_SurfaceOfLinearExtrusion): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Geom_SurfaceOfLinearExtrusion): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: Geom_SurfaceOfLinearExtrusion): handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.}  # header: "Geom_SurfaceOfLinearExtrusion.hxx"
