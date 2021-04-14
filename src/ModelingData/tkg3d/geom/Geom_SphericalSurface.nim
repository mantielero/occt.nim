import geom_types


type
  Geom_SphericalSurface* {.header: "Geom_SphericalSurface.hxx", importcpp: "Geom_SphericalSurface", byref.} = object #of class Geom_ElementarySurface
    ## Describes a sphere. A sphere is defined by its radius, and is
    ## positioned in space by a coordinate system (a gp_Ax3 object), the
    ## origin of which is the center of the sphere. This coordinate system is
    ## the "local coordinate system" of the sphere. The following apply: -
    ## Rotation around its "main Axis", in the trigonometric sense given by
    ## the "X Direction" and the "Y Direction", defines the u parametric
    ## direction. - Its "X Axis" gives the origin for the u parameter. - The
    ## "reference meridian" of the sphere is a half-circle, of radius equal
    ## to the radius of the sphere. It is located in the plane defined by the
    ## origin, "X Direction" and "main Direction", centered on the origin,
    ## and positioned on the positive side of the "X Axis". - Rotation around
    ## the "Y Axis" gives the v parameter on the reference meridian. - The "X
    ## Axis" gives the origin of the v parameter on the reference meridian. -
    ## The v parametric direction is oriented by the "main Direction", i.e.
    ## when v increases, the Z coordinate increases. (This implies that the
    ## "Y Direction" orients the reference meridian only when the local
    ## coordinate system is indirect.) - The u isoparametric curve is a half-
    ## circle obtained by rotating the reference meridian of the sphere
    ## through an angle u around the "main Axis", in the trigonometric sense
    ## defined by the "X Direction" and the "Y Direction". The parametric
    ## equation of the sphere is: P(u,v) = O + R*cos(v)*(cos(u)*XDir +
    ## sin(u)*YDir)+R*sin(v)*ZDir where: - O, XDir, YDir and ZDir are
    ## respectively the origin, the "X Direction", the "Y Direction" and the
    ## "Z Direction" of its local coordinate system, and - R is the radius of
    ## the sphere. The parametric range of the two parameters is: - [ 0,
    ## 2.*Pi ] for u, and - [ - Pi/2., + Pi/2. ] for v.

  Handle_Geom_SphericalSurface* {.header: "Geom_SphericalSurface.hxx", importcpp: "Handle_Geom_SphericalSurface".} = handle[Geom_SphericalSurface]
  Base_type* {.header: "Geom_SphericalSurface.hxx", importcpp: "Geom_SphericalSurface::base_type".} = Geom_ElementarySurface


{.push header: "Geom_SphericalSurface.hxx".}

proc constructGeom_SphericalSurface*(A3: gp_Ax3, Radius: cdouble): Geom_SphericalSurface {.constructor,importcpp: "Geom_SphericalSurface::Geom_SphericalSurface(@)".}
    ## A3 is the local coordinate system of the surface. At the creation the
    ## parametrization of the surface is defined such as the normal Vector (N
    ## = D1U ^ D1V) is directed away from the center of the sphere. The
    ## direction of increasing parametric value V is defined by the rotation
    ## around the "YDirection" of A2 in the trigonometric sense and the
    ## orientation of increasing parametric value U is defined by the
    ## rotation around the main direction of A2 in the trigonometric sense.
    ## Warnings : It is not forbidden to create a spherical surface with
    ## Radius = 0.0 Raised if Radius < 0.0.

proc constructGeom_SphericalSurface*(S: gp_Sphere): Geom_SphericalSurface {.constructor,importcpp: "Geom_SphericalSurface::Geom_SphericalSurface(@)".}
    ## Creates a SphericalSurface from a non persistent Sphere from package
    ## gp.

proc setRadius*(this: var Geom_SphericalSurface, R: cdouble)  {.importcpp: "SetRadius".}
    ## Assigns the value R to the radius of this sphere. Exceptions
    ## Standard_ConstructionError if R is less than 0.0.

proc setSphere*(this: var Geom_SphericalSurface, S: gp_Sphere)  {.importcpp: "SetSphere".}
    ## Converts the gp_Sphere S into this sphere.

proc sphere*(this: Geom_SphericalSurface): gp_Sphere  {.importcpp: "Sphere".}
    ## Returns a non persistent sphere with the same geometric properties as
    ## <me>.

proc uReversedParameter*(this: Geom_SphericalSurface, U: cdouble): cdouble  {.importcpp: "UReversedParameter".}
    ## Computes the u parameter on the modified surface, when reversing its u
    ## parametric direction, for any point of u parameter U on this sphere.
    ## In the case of a sphere, these functions returns 2.PI - U.

proc vReversedParameter*(this: Geom_SphericalSurface, V: cdouble): cdouble  {.importcpp: "VReversedParameter".}
    ## Computes the v parameter on the modified surface, when reversing its v
    ## parametric direction, for any point of v parameter V on this sphere.
    ## In the case of a sphere, these functions returns -U.

proc area*(this: Geom_SphericalSurface): cdouble  {.importcpp: "Area".}
    ## Computes the aera of the spherical surface.

proc bounds*(this: Geom_SphericalSurface, U1: var cdouble, U2: var cdouble, V1: var cdouble, V2: var cdouble)  {.importcpp: "Bounds".}
    ## Returns the parametric bounds U1, U2, V1 and V2 of this sphere. For a
    ## sphere: U1 = 0, U2 = 2*PI, V1 = -PI/2, V2 = PI/2.

proc coefficients*(this: Geom_SphericalSurface, A1: var cdouble, A2: var cdouble, A3: var cdouble, B1: var cdouble, B2: var cdouble, B3: var cdouble, C1: var cdouble, C2: var cdouble, C3: var cdouble, D: var cdouble)  {.importcpp: "Coefficients".}
    ## Returns the coefficients of the implicit equation of the quadric in
    ## the absolute cartesian coordinates system : These coefficients are
    ## normalized. A1.X**2 + A2.Y**2 + A3.Z**2 + 2.(B1.X.Y + B2.X.Z + B3.Y.Z)
    ## + 2.(C1.X + C2.Y + C3.Z) + D = 0.0

proc radius*(this: Geom_SphericalSurface): cdouble  {.importcpp: "Radius".}
    ## Computes the coefficients of the implicit equation of this quadric in
    ## the absolute Cartesian coordinate system: A1.X**2 + A2.Y**2 + A3.Z**2
    ## + 2.(B1.X.Y + B2.X.Z + B3.Y.Z) + 2.(C1.X + C2.Y + C3.Z) + D = 0.0 An
    ## implicit normalization is applied (i.e. A1 = A2 = 1. in the local
    ## coordinate system of this sphere).

proc volume*(this: Geom_SphericalSurface): cdouble  {.importcpp: "Volume".}
    ## Computes the volume of the spherical surface.

proc isUClosed*(this: Geom_SphericalSurface): bool  {.importcpp: "IsUClosed".}
    ## Returns True.

proc isVClosed*(this: Geom_SphericalSurface): bool  {.importcpp: "IsVClosed".}
    ## Returns False.

proc isUPeriodic*(this: Geom_SphericalSurface): bool  {.importcpp: "IsUPeriodic".}
    ## Returns True.

proc isVPeriodic*(this: Geom_SphericalSurface): bool  {.importcpp: "IsVPeriodic".}
    ## Returns False.

proc uIso*(this: Geom_SphericalSurface, U: cdouble): handle[Geom_Curve]  {.importcpp: "UIso".}
    ## Computes the U isoparametric curve. The U isoparametric curves of the
    ## surface are defined by the section of the spherical surface with plane
    ## obtained by rotation of the plane (Location, XAxis, ZAxis) around
    ## ZAxis. This plane defines the origin of parametrization u. For a
    ## SphericalSurface the UIso curve is a Circle. Warnings : The radius of
    ## this circle can be zero.

proc vIso*(this: Geom_SphericalSurface, V: cdouble): handle[Geom_Curve]  {.importcpp: "VIso".}
    ## Computes the V isoparametric curve. The V isoparametric curves of the
    ## surface are defined by the section of the spherical surface with plane
    ## parallel to the plane (Location, XAxis, YAxis). This plane defines the
    ## origin of parametrization V. Be careful if V is close to PI/2 or
    ## 3*PI/2 the radius of the circle becomes tiny. It is not forbidden in
    ## this toolkit to create circle with radius = 0.0 For a SphericalSurface
    ## the VIso curve is a Circle. Warnings : The radius of this circle can
    ## be zero.

proc d0*(this: Geom_SphericalSurface, U: cdouble, V: cdouble, P: var gp_Pnt)  {.importcpp: "D0".}
    ## Computes the point P (U, V) on the surface. P (U, V) = Loc + Radius *
    ## Sin (V) * Zdir + Radius * Cos (V) * (cos (U) * XDir + sin (U) * YDir)
    ## where Loc is the origin of the placement plane (XAxis, YAxis) XDir is
    ## the direction of the XAxis and YDir the direction of the YAxis and
    ## ZDir the direction of the ZAxis.

proc d1*(this: Geom_SphericalSurface, U: cdouble, V: cdouble, P: var gp_Pnt, D1U: var gp_Vec, D1V: var gp_Vec)  {.importcpp: "D1".}
    ## Computes the current point and the first derivatives in the directions
    ## U and V.

proc d2*(this: Geom_SphericalSurface, U: cdouble, V: cdouble, P: var gp_Pnt, D1U: var gp_Vec, D1V: var gp_Vec, D2U: var gp_Vec, D2V: var gp_Vec, D2UV: var gp_Vec)  {.importcpp: "D2".}
    ## Computes the current point, the first and the second derivatives in
    ## the directions U and V.

proc d3*(this: Geom_SphericalSurface, U: cdouble, V: cdouble, P: var gp_Pnt, D1U: var gp_Vec, D1V: var gp_Vec, D2U: var gp_Vec, D2V: var gp_Vec, D2UV: var gp_Vec, D3U: var gp_Vec, D3V: var gp_Vec, D3UUV: var gp_Vec, D3UVV: var gp_Vec)  {.importcpp: "D3".}
    ## Computes the current point, the first,the second and the third
    ## derivatives in the directions U and V.

proc dN*(this: Geom_SphericalSurface, U: cdouble, V: cdouble, Nu: cint, Nv: cint): gp_Vec  {.importcpp: "DN".}
    ## Computes the derivative of order Nu in the direction u and Nv in the
    ## direction v. Raised if Nu + Nv < 1 or Nu < 0 or Nv < 0.

proc transform*(this: var Geom_SphericalSurface, T: gp_Trsf)  {.importcpp: "Transform".}
    ## Applies the transformation T to this sphere.

proc copy*(this: Geom_SphericalSurface): handle[Geom_Geometry]  {.importcpp: "Copy".}
    ## Creates a new object which is a copy of this sphere.

proc dumpJson*(this: Geom_SphericalSurface, theOStream: var Standard_OStream, theDepth: cint = 1)  {.importcpp: "DumpJson".}
    ## Dumps the content of me into the stream

proc get_type_name*(this: var Geom_SphericalSurface): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Geom_SphericalSurface): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: Geom_SphericalSurface): handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.}  # header: "Geom_SphericalSurface.hxx"
