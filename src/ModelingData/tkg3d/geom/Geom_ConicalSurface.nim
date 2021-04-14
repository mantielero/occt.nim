import geom_types


type
  Geom_ConicalSurface* {.header: "Geom_ConicalSurface.hxx", importcpp: "Geom_ConicalSurface", byref.} = object #of class Geom_ElementarySurface
    ## Describes a cone. A cone is defined by the half-angle (can be
    ## negative) at its apex, and is positioned in space by a coordinate
    ## system (a gp_Ax3 object) and a reference radius as follows: - The
    ## "main Axis" of the coordinate system is the axis of revolution of the
    ## cone. - The plane defined by the origin, the "X Direction" and the "Y
    ## Direction" of the coordinate system is the reference plane of the
    ## cone. The intersection of the cone with this reference plane is a
    ## circle of radius equal to the reference radius. - The apex of the cone
    ## is on the negative side of the "main Axis" of the coordinate system if
    ## the half-angle is positive, and on the positive side if the half-angle
    ## is negative. This coordinate system is the "local coordinate system"
    ## of the cone. The following apply: - Rotation around its "main Axis",
    ## in the trigonometric sense given by the "X Direction" and the "Y
    ## Direction", defines the u parametric direction. - Its "X Axis" gives
    ## the origin for the u parameter. - Its "main Direction" is the v
    ## parametric direction of the cone. - Its origin is the origin of the v
    ## parameter. The parametric range of the two parameters is: - [ 0, 2.*Pi
    ## ] for u, and - ] -infinity, +infinity [ for v The parametric equation
    ## of the cone is: P(u, v) = O + (R + v*sin(Ang)) * (cos(u)*XDir +
    ## sin(u)*YDir) + v*cos(Ang)*ZDir where: - O, XDir, YDir and ZDir are
    ## respectively the origin, the "X Direction", the "Y Direction" and the
    ## "Z Direction" of the cone's local coordinate system, - Ang is the
    ## half-angle at the apex of the cone, and - R is the reference radius.

  Handle_Geom_ConicalSurface* {.header: "Geom_ConicalSurface.hxx", importcpp: "Handle_Geom_ConicalSurface".} = handle[Geom_ConicalSurface]
  Base_type* {.header: "Geom_ConicalSurface.hxx", importcpp: "Geom_ConicalSurface::base_type".} = Geom_ElementarySurface


{.push header: "Geom_ConicalSurface.hxx".}

proc constructGeom_ConicalSurface*(A3: gp_Ax3, Ang: Standard_Real, Radius: Standard_Real): Geom_ConicalSurface {.constructor,importcpp: "Geom_ConicalSurface::Geom_ConicalSurface(@)".}
    ## A3 defines the local coordinate system of the conical surface. Ang is
    ## the conical surface semi-angle. Its absolute value is in range ]0,
    ## PI/2[. Radius is the radius of the circle Viso in the placement plane
    ## of the conical surface defined with "XAxis" and "YAxis". The
    ## "ZDirection" of A3 defines the direction of the surface's axis of
    ## symmetry. If the location point of A3 is the apex of the surface
    ## Radius = 0 . At the creation the parametrization of the surface is
    ## defined such that the normal Vector (N = D1U ^ D1V) is oriented
    ## towards the "outside region" of the surface.

proc constructGeom_ConicalSurface*(C: gp_Cone): Geom_ConicalSurface {.constructor,importcpp: "Geom_ConicalSurface::Geom_ConicalSurface(@)".}
    ## Creates a ConicalSurface from a non transient Cone from package gp.

proc setCone*(this: var Geom_ConicalSurface, C: gp_Cone)  {.importcpp: "SetCone".}
    ## Set <me> so that <me> has the same geometric properties as C.

proc setRadius*(this: var Geom_ConicalSurface, R: Standard_Real)  {.importcpp: "SetRadius".}
    ## Changes the radius of the conical surface in the placement plane (Z =
    ## 0, V = 0). The local coordinate system is not modified. Raised if R <
    ## 0.0

proc setSemiAngle*(this: var Geom_ConicalSurface, Ang: Standard_Real)  {.importcpp: "SetSemiAngle".}
    ## Changes the semi angle of the conical surface. Semi-angle can be
    ## negative. Its absolute value Abs(Ang) is in range ]0,PI/2[. Raises
    ## ConstructionError if Abs(Ang) < Resolution from gp or Abs(Ang) >= PI/2
    ## - Resolution

proc cone*(this: Geom_ConicalSurface): gp_Cone  {.importcpp: "Cone".}
    ## returns a non transient cone with the same geometric properties as
    ## <me>.

proc uReversedParameter*(this: Geom_ConicalSurface, U: Standard_Real): Standard_Real  {.importcpp: "UReversedParameter".}
    ## return 2.PI - U.

proc vReversedParameter*(this: Geom_ConicalSurface, V: Standard_Real): Standard_Real  {.importcpp: "VReversedParameter".}
    ## Computes the u (or v) parameter on the modified surface, when
    ## reversing its u (or v) parametric direction, for any point of u
    ## parameter U (or of v parameter V) on this cone. In the case of a cone,
    ## these functions return respectively: - 2.*Pi - U, -V.

proc vReverse*(this: var Geom_ConicalSurface)  {.importcpp: "VReverse".}
    ## Changes the orientation of this cone in the v parametric direction.
    ## The bounds of the surface are not changed but the v parametric
    ## direction is reversed. As a consequence, for a cone: - the "main
    ## Direction" of the local coordinate system is reversed, and - the half-
    ## angle at the apex is inverted.

proc transformParameters*(this: Geom_ConicalSurface, U: var Standard_Real, V: var Standard_Real, T: gp_Trsf)  {.importcpp: "TransformParameters".}
    ## Computes the parameters on the transformed surface for the transform
    ## of the point of parameters U,V on <me>.

proc parametricTransformation*(this: Geom_ConicalSurface, T: gp_Trsf): gp_GTrsf2d  {.importcpp: "ParametricTransformation".}
    ## Returns a 2d transformation used to find the new parameters of a point
    ## on the transformed surface.

proc apex*(this: Geom_ConicalSurface): gp_Pnt  {.importcpp: "Apex".}
    ## Computes the apex of this cone. It is on the negative side of the axis
    ## of revolution of this cone if the half-angle at the apex is positive,
    ## and on the positive side of the "main Axis" if the half-angle is
    ## negative.

proc bounds*(this: Geom_ConicalSurface, U1: var Standard_Real, U2: var Standard_Real, V1: var Standard_Real, V2: var Standard_Real)  {.importcpp: "Bounds".}
    ## The conical surface is infinite in the V direction so V1 = Realfirst
    ## from Standard and V2 = RealLast. U1 = 0 and U2 = 2*PI.

proc coefficients*(this: Geom_ConicalSurface, A1: var Standard_Real, A2: var Standard_Real, A3: var Standard_Real, B1: var Standard_Real, B2: var Standard_Real, B3: var Standard_Real, C1: var Standard_Real, C2: var Standard_Real, C3: var Standard_Real, D: var Standard_Real)  {.importcpp: "Coefficients".}
    ## Returns the coefficients of the implicit equation of the quadric in
    ## the absolute cartesian coordinate system : These coefficients are
    ## normalized. A1.X**2 + A2.Y**2 + A3.Z**2 + 2.(B1.X.Y + B2.X.Z + B3.Y.Z)
    ## + 2.(C1.X + C2.Y + C3.Z) + D = 0.0

proc refRadius*(this: Geom_ConicalSurface): Standard_Real  {.importcpp: "RefRadius".}
    ## Returns the reference radius of this cone. The reference radius is the
    ## radius of the circle formed by the intersection of this cone and its
    ## reference plane (i.e. the plane defined by the origin, "X Direction"
    ## and "Y Direction" of the local coordinate system of this cone). If the
    ## apex of this cone is on the origin of the local coordinate system of
    ## this cone, the returned value is 0.

proc semiAngle*(this: Geom_ConicalSurface): Standard_Real  {.importcpp: "SemiAngle".}
    ## Returns the semi-angle at the apex of this cone. Attention! Semi-angle
    ## can be negative.

proc isUClosed*(this: Geom_ConicalSurface): Standard_Boolean  {.importcpp: "IsUClosed".}
    ## returns True.

proc isVClosed*(this: Geom_ConicalSurface): Standard_Boolean  {.importcpp: "IsVClosed".}
    ## returns False.

proc isUPeriodic*(this: Geom_ConicalSurface): Standard_Boolean  {.importcpp: "IsUPeriodic".}
    ## Returns True.

proc isVPeriodic*(this: Geom_ConicalSurface): Standard_Boolean  {.importcpp: "IsVPeriodic".}
    ## Returns False.

proc uIso*(this: Geom_ConicalSurface, U: Standard_Real): handle[Geom_Curve]  {.importcpp: "UIso".}
    ## Builds the U isoparametric line of this cone. The origin of this line
    ## is on the reference plane of this cone (i.e. the plane defined by the
    ## origin, "X Direction" and "Y Direction" of the local coordinate system
    ## of this cone).

proc vIso*(this: Geom_ConicalSurface, V: Standard_Real): handle[Geom_Curve]  {.importcpp: "VIso".}
    ## Builds the V isoparametric circle of this cone. It is the circle on
    ## this cone, located in the plane of Z coordinate V*cos(Semi-Angle) in
    ## the local coordinate system of this cone. The "Axis" of this circle is
    ## the axis of revolution of this cone. Its starting point is defined by
    ## the "X Direction" of this cone. Warning If the V isoparametric circle
    ## is close to the apex of this cone, the radius of the circle becomes
    ## very small. It is possible to have a circle with radius equal to 0.0.

proc d0*(this: Geom_ConicalSurface, U: Standard_Real, V: Standard_Real, P: var gp_Pnt)  {.importcpp: "D0".}
    ## Computes the point P (U, V) on the surface. P (U, V) = Loc +
    ## (RefRadius + V * sin (Semi-Angle)) * (cos (U) * XDir + sin (U) * YDir)
    ## + V * cos (Semi-Angle) * ZDir where Loc is the origin of the placement
    ## plane (XAxis, YAxis) XDir is the direction of the XAxis and YDir the
    ## direction of the YAxis.

proc d1*(this: Geom_ConicalSurface, U: Standard_Real, V: Standard_Real, P: var gp_Pnt, D1U: var gp_Vec, D1V: var gp_Vec)  {.importcpp: "D1".}
    ## Computes the current point and the first derivatives in the directions
    ## U and V.

proc d2*(this: Geom_ConicalSurface, U: Standard_Real, V: Standard_Real, P: var gp_Pnt, D1U: var gp_Vec, D1V: var gp_Vec, D2U: var gp_Vec, D2V: var gp_Vec, D2UV: var gp_Vec)  {.importcpp: "D2".}
    ## Computes the current point, the first and the second derivatives in
    ## the directions U and V.

proc d3*(this: Geom_ConicalSurface, U: Standard_Real, V: Standard_Real, P: var gp_Pnt, D1U: var gp_Vec, D1V: var gp_Vec, D2U: var gp_Vec, D2V: var gp_Vec, D2UV: var gp_Vec, D3U: var gp_Vec, D3V: var gp_Vec, D3UUV: var gp_Vec, D3UVV: var gp_Vec)  {.importcpp: "D3".}
    ## Computes the current point, the first,the second and the third
    ## derivatives in the directions U and V.

proc dN*(this: Geom_ConicalSurface, U: Standard_Real, V: Standard_Real, Nu: Standard_Integer, Nv: Standard_Integer): gp_Vec  {.importcpp: "DN".}
    ## Computes the derivative of order Nu in the u parametric direction, and
    ## Nv in the v parametric direction at the point of parameters (U, V) of
    ## this cone. Exceptions Standard_RangeError if: - Nu + Nv is less than
    ## 1, - Nu or Nv is negative.

proc transform*(this: var Geom_ConicalSurface, T: gp_Trsf)  {.importcpp: "Transform".}
    ## Applies the transformation T to this cone.

proc copy*(this: Geom_ConicalSurface): handle[Geom_Geometry]  {.importcpp: "Copy".}
    ## Creates a new object which is a copy of this cone.

proc dumpJson*(this: Geom_ConicalSurface, theOStream: var Standard_OStream, theDepth: Standard_Integer = 1)  {.importcpp: "DumpJson".}
    ## Dumps the content of me into the stream

proc get_type_name*(this: var Geom_ConicalSurface): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Geom_ConicalSurface): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: Geom_ConicalSurface): handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.}  # header: "Geom_ConicalSurface.hxx"
