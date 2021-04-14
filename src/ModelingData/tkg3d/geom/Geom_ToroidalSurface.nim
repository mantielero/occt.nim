import geom_types


type
  Geom_ToroidalSurface* {.header: "Geom_ToroidalSurface.hxx", importcpp: "Geom_ToroidalSurface", byref.} = object #of class Geom_ElementarySurface
    ## Describes a torus. A torus is defined by its major and minor radii,
    ## and positioned in space with a coordinate system (a gp_Ax3 object) as
    ## follows: - The origin is the center of the torus. - The surface is
    ## obtained by rotating a circle around the "main Direction". This circle
    ## has a radius equal to the minor radius, and is located in the plane
    ## defined by the origin, "X Direction" and "main Direction". It is
    ## centered on the "X Axis", on its positive side, and positioned at a
    ## distance from the origin equal to the major radius. This circle is the
    ## "reference circle" of the torus. - The plane defined by the origin,
    ## the "X Direction" and the "Y Direction" is called the "reference
    ## plane" of the torus. This coordinate system is the "local coordinate
    ## system" of the torus. The following apply: - Rotation around its "main
    ## Axis", in the trigonometric sense given by "X Direction" and "Y
    ## Direction", defines the u parametric direction. - The "X Axis" gives
    ## the origin for the u parameter. - Rotation around an axis parallel to
    ## the "Y Axis" and passing through the center of the "reference circle"
    ## gives the v parameter on the "reference circle". - The "X Axis" gives
    ## the origin of the v parameter on the "reference circle". - The v
    ## parametric direction is oriented by the inverse of the "main
    ## Direction", i.e. near 0, as v increases, the Z coordinate decreases.
    ## (This implies that the "Y Direction" orients the reference circle only
    ## when the local coordinate system is direct.) - The u isoparametric
    ## curve is a circle obtained by rotating the "reference circle" of the
    ## torus through an angle u about the "main Axis". The parametric
    ## equation of the torus is : P(u, v) = O + (R + r*cos(v)) * (cos(u)*XDir
    ## + sin(u)*YDir ) + r*sin(v)*ZDir, where: - O, XDir, YDir and ZDir are
    ## respectively the origin, the "X Direction", the "Y Direction" and the
    ## "Z Direction" of the local coordinate system, - r and R are,
    ## respectively, the minor and major radius. The parametric range of the
    ## two parameters is: - [ 0, 2.*Pi ] for u - [ 0, 2.*Pi ] for v

  Handle_Geom_ToroidalSurface* {.header: "Geom_ToroidalSurface.hxx", importcpp: "Handle_Geom_ToroidalSurface".} = handle[Geom_ToroidalSurface]
  Base_type* {.header: "Geom_ToroidalSurface.hxx", importcpp: "Geom_ToroidalSurface::base_type".} = Geom_ElementarySurface


{.push header: "Geom_ToroidalSurface.hxx".}

proc constructGeom_ToroidalSurface*(A3: gp_Ax3, MajorRadius: Standard_Real, MinorRadius: Standard_Real): Geom_ToroidalSurface {.constructor,importcpp: "Geom_ToroidalSurface::Geom_ToroidalSurface(@)".}
    ## A3 is the local coordinate system of the surface. The orientation of
    ## increasing V parametric value is defined by the rotation around the
    ## main axis (ZAxis) in the trigonometric sense. The parametrization of
    ## the surface in the U direction is defined such as the normal Vector (N
    ## = D1U ^ D1V) is oriented towards the "outside region" of the surface.
    ## Warnings : It is not forbidden to create a toroidal surface with
    ## MajorRadius = MinorRadius = 0.0

proc constructGeom_ToroidalSurface*(T: gp_Torus): Geom_ToroidalSurface {.constructor,importcpp: "Geom_ToroidalSurface::Geom_ToroidalSurface(@)".}
    ## Creates a ToroidalSurface from a non transient Torus from package gp.

proc setMajorRadius*(this: var Geom_ToroidalSurface, MajorRadius: Standard_Real)  {.importcpp: "SetMajorRadius".}
    ## Modifies this torus by changing its major radius. Exceptions
    ## Standard_ConstructionError if: - MajorRadius is negative, or -
    ## MajorRadius - r is less than or equal to gp::Resolution(), where r is
    ## the minor radius of this torus.

proc setMinorRadius*(this: var Geom_ToroidalSurface, MinorRadius: Standard_Real)  {.importcpp: "SetMinorRadius".}
    ## Modifies this torus by changing its minor radius. Exceptions
    ## Standard_ConstructionError if: - MinorRadius is negative, or - R -
    ## MinorRadius is less than or equal to gp::Resolution(), where R is the
    ## major radius of this torus.

proc setTorus*(this: var Geom_ToroidalSurface, T: gp_Torus)  {.importcpp: "SetTorus".}
    ## Converts the gp_Torus torus T into this torus.

proc torus*(this: Geom_ToroidalSurface): gp_Torus  {.importcpp: "Torus".}
    ## Returns the non transient torus with the same geometric properties as
    ## <me>.

proc uReversedParameter*(this: Geom_ToroidalSurface, U: Standard_Real): Standard_Real  {.importcpp: "UReversedParameter".}
    ## Return the parameter on the Ureversed surface for the point of
    ## parameter U on <me>. Return 2.PI - U.

proc vReversedParameter*(this: Geom_ToroidalSurface, U: Standard_Real): Standard_Real  {.importcpp: "VReversedParameter".}
    ## Return the parameter on the Ureversed surface for the point of
    ## parameter U on <me>. Return 2.PI - U.

proc area*(this: Geom_ToroidalSurface): Standard_Real  {.importcpp: "Area".}
    ## Computes the aera of the surface.

proc bounds*(this: Geom_ToroidalSurface, U1: var Standard_Real, U2: var Standard_Real, V1: var Standard_Real, V2: var Standard_Real)  {.importcpp: "Bounds".}
    ## Returns the parametric bounds U1, U2, V1 and V2 of this torus. For a
    ## torus: U1 = V1 = 0 and U2 = V2 = 2*PI .

proc coefficients*(this: Geom_ToroidalSurface, Coef: var TColStd_Array1OfReal)  {.importcpp: "Coefficients".}
    ## Returns the coefficients of the implicit equation of the surface in
    ## the absolute cartesian coordinate system : Coef(1) * X**4 + Coef(2) *
    ## Y**4 + Coef(3) * Z**4 + Coef(4) * X**3 * Y + Coef(5) * X**3 * Z +
    ## Coef(6) * Y**3 * X + Coef(7) * Y**3 * Z + Coef(8) * Z**3 * X + Coef(9)
    ## * Z**3 * Y + Coef(10) * X**2 * Y**2 + Coef(11) * X**2 * Z**2 +
    ## Coef(12) * Y**2 * Z**2 + Coef(13) * X**3 + Coef(14) * Y**3 + Coef(15)
    ## * Z**3 + Coef(16) * X**2 * Y + Coef(17) * X**2 * Z + Coef(18) * Y**2 *
    ## X + Coef(19) * Y**2 * Z + Coef(20) * Z**2 * X + Coef(21) * Z**2 * Y +
    ## Coef(22) * X**2 + Coef(23) * Y**2 + Coef(24) * Z**2 + Coef(25) * X * Y
    ## + Coef(26) * X * Z + Coef(27) * Y * Z + Coef(28) * X + Coef(29) * Y +
    ## Coef(30) * Z + Coef(31) = 0.0 Raised if the length of Coef is lower
    ## than 31.

proc majorRadius*(this: Geom_ToroidalSurface): Standard_Real  {.importcpp: "MajorRadius".}
    ## Returns the major radius, or the minor radius, of this torus.

proc minorRadius*(this: Geom_ToroidalSurface): Standard_Real  {.importcpp: "MinorRadius".}
    ## Returns the major radius, or the minor radius, of this torus.

proc volume*(this: Geom_ToroidalSurface): Standard_Real  {.importcpp: "Volume".}
    ## Computes the volume.

proc isUClosed*(this: Geom_ToroidalSurface): Standard_Boolean  {.importcpp: "IsUClosed".}
    ## Returns True.

proc isVClosed*(this: Geom_ToroidalSurface): Standard_Boolean  {.importcpp: "IsVClosed".}
    ## Returns True.

proc isUPeriodic*(this: Geom_ToroidalSurface): Standard_Boolean  {.importcpp: "IsUPeriodic".}
    ## Returns True.

proc isVPeriodic*(this: Geom_ToroidalSurface): Standard_Boolean  {.importcpp: "IsVPeriodic".}
    ## Returns True.

proc uIso*(this: Geom_ToroidalSurface, U: Standard_Real): handle[Geom_Curve]  {.importcpp: "UIso".}
    ## Computes the U isoparametric curve.

proc vIso*(this: Geom_ToroidalSurface, V: Standard_Real): handle[Geom_Curve]  {.importcpp: "VIso".}
    ## Computes the V isoparametric curve.

proc d0*(this: Geom_ToroidalSurface, U: Standard_Real, V: Standard_Real, P: var gp_Pnt)  {.importcpp: "D0".}
    ## Computes the point P (U, V) on the surface. P (U, V) = Loc +
    ## MinorRadius * Sin (V) * Zdir + (MajorRadius + MinorRadius * Cos(V)) *
    ## (cos (U) * XDir + sin (U) * YDir) where Loc is the origin of the
    ## placement plane (XAxis, YAxis) XDir is the direction of the XAxis and
    ## YDir the direction of the YAxis and ZDir the direction of the ZAxis.

proc d1*(this: Geom_ToroidalSurface, U: Standard_Real, V: Standard_Real, P: var gp_Pnt, D1U: var gp_Vec, D1V: var gp_Vec)  {.importcpp: "D1".}
    ## Computes the current point and the first derivatives in the directions
    ## U and V.

proc d2*(this: Geom_ToroidalSurface, U: Standard_Real, V: Standard_Real, P: var gp_Pnt, D1U: var gp_Vec, D1V: var gp_Vec, D2U: var gp_Vec, D2V: var gp_Vec, D2UV: var gp_Vec)  {.importcpp: "D2".}
    ## Computes the current point, the first and the second derivatives in
    ## the directions U and V.

proc d3*(this: Geom_ToroidalSurface, U: Standard_Real, V: Standard_Real, P: var gp_Pnt, D1U: var gp_Vec, D1V: var gp_Vec, D2U: var gp_Vec, D2V: var gp_Vec, D2UV: var gp_Vec, D3U: var gp_Vec, D3V: var gp_Vec, D3UUV: var gp_Vec, D3UVV: var gp_Vec)  {.importcpp: "D3".}
    ## Computes the current point, the first,the second and the third
    ## derivatives in the directions U and V.

proc dN*(this: Geom_ToroidalSurface, U: Standard_Real, V: Standard_Real, Nu: Standard_Integer, Nv: Standard_Integer): gp_Vec  {.importcpp: "DN".}
    ## Computes the derivative of order Nu in the direction u and Nv in the
    ## direction v. Raised if Nu + Nv < 1 or Nu < 0 or Nv < 0.

proc transform*(this: var Geom_ToroidalSurface, T: gp_Trsf)  {.importcpp: "Transform".}
    ## Applies the transformation T to this torus.

proc copy*(this: Geom_ToroidalSurface): handle[Geom_Geometry]  {.importcpp: "Copy".}
    ## Creates a new object which is a copy of this torus.

proc dumpJson*(this: Geom_ToroidalSurface, theOStream: var Standard_OStream, theDepth: Standard_Integer = 1)  {.importcpp: "DumpJson".}
    ## Dumps the content of me into the stream

proc get_type_name*(this: var Geom_ToroidalSurface): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Geom_ToroidalSurface): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: Geom_ToroidalSurface): handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.}  # header: "Geom_ToroidalSurface.hxx"
