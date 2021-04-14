import geom_types


type
  Geom_CylindricalSurface* {.header: "Geom_CylindricalSurface.hxx", importcpp: "Geom_CylindricalSurface", byref.} = object #of class Geom_ElementarySurface
    ## This class defines the infinite cylindrical surface.

  Handle_Geom_CylindricalSurface* {.header: "Geom_CylindricalSurface.hxx", importcpp: "Handle_Geom_CylindricalSurface".} = handle[Geom_CylindricalSurface]
  Base_type* {.header: "Geom_CylindricalSurface.hxx", importcpp: "Geom_CylindricalSurface::base_type".} = Geom_ElementarySurface


{.push header: "Geom_CylindricalSurface.hxx".}

proc constructGeom_CylindricalSurface*(A3: gp_Ax3, Radius: cdouble): Geom_CylindricalSurface {.constructor,importcpp: "Geom_CylindricalSurface::Geom_CylindricalSurface(@)".}
    ## A3 defines the local coordinate system of the cylindrical surface. The
    ## "ZDirection" of A3 defines the direction of the surface's axis of
    ## symmetry. At the creation the parametrization of the surface is
    ## defined such that the normal Vector (N = D1U ^ D1V) is oriented
    ## towards the "outside region" of the surface. Warnings : It is not
    ## forbidden to create a cylindrical surface with Radius = 0.0 Raised if
    ## Radius < 0.0

proc constructGeom_CylindricalSurface*(C: gp_Cylinder): Geom_CylindricalSurface {.constructor,importcpp: "Geom_CylindricalSurface::Geom_CylindricalSurface(@)".}
    ## Creates a CylindricalSurface from a non transient Cylinder from
    ## package gp.

proc setCylinder*(this: var Geom_CylindricalSurface, C: gp_Cylinder)  {.importcpp: "SetCylinder".}
    ## Set <me> so that <me> has the same geometric properties as C.

proc setRadius*(this: var Geom_CylindricalSurface, R: cdouble)  {.importcpp: "SetRadius".}
    ## Changes the radius of the cylinder. Raised if R < 0.0

proc cylinder*(this: Geom_CylindricalSurface): gp_Cylinder  {.importcpp: "Cylinder".}
    ## returns a non transient cylinder with the same geometric properties as
    ## <me>.

proc uReversedParameter*(this: Geom_CylindricalSurface, U: cdouble): cdouble  {.importcpp: "UReversedParameter".}
    ## Return the parameter on the Ureversed surface for the point of
    ## parameter U on <me>. Return 2.PI - U.

proc vReversedParameter*(this: Geom_CylindricalSurface, V: cdouble): cdouble  {.importcpp: "VReversedParameter".}
    ## Return the parameter on the Vreversed surface for the point of
    ## parameter V on <me>. Return -V

proc transformParameters*(this: Geom_CylindricalSurface, U: var cdouble, V: var cdouble, T: gp_Trsf)  {.importcpp: "TransformParameters".}
    ## Computes the parameters on the transformed surface for the transform
    ## of the point of parameters U,V on <me>.
    ## me->Transformed(T)->Value(U',V') is the same point as
    ## me->Value(U,V).Transformed(T) Where U',V' are the new values of U,V
    ## after calling me->TranformParameters(U,V,T) This methods multiplies V
    ## by T.ScaleFactor()

proc parametricTransformation*(this: Geom_CylindricalSurface, T: gp_Trsf): gp_GTrsf2d  {.importcpp: "ParametricTransformation".}
    ## Returns a 2d transformation used to find the new parameters of a point
    ## on the transformed surface. me->Transformed(T)->Value(U',V') is the
    ## same point as me->Value(U,V).Transformed(T) Where U',V' are obtained
    ## by transforming U,V with th 2d transformation returned by
    ## me->ParametricTransformation(T) This methods returns a scale centered
    ## on the U axis with T.ScaleFactor

proc bounds*(this: Geom_CylindricalSurface, U1: var cdouble, U2: var cdouble, V1: var cdouble, V2: var cdouble)  {.importcpp: "Bounds".}
    ## The CylindricalSurface is infinite in the V direction so V1 =
    ## Realfirst, V2 = RealLast from package Standard. U1 = 0 and U2 = 2*PI.

proc coefficients*(this: Geom_CylindricalSurface, A1: var cdouble, A2: var cdouble, A3: var cdouble, B1: var cdouble, B2: var cdouble, B3: var cdouble, C1: var cdouble, C2: var cdouble, C3: var cdouble, D: var cdouble)  {.importcpp: "Coefficients".}
    ## Returns the coefficients of the implicit equation of the quadric in
    ## the absolute cartesian coordinate system : These coefficients are
    ## normalized. A1.X**2 + A2.Y**2 + A3.Z**2 + 2.(B1.X.Y + B2.X.Z + B3.Y.Z)
    ## + 2.(C1.X + C2.Y + C3.Z) + D = 0.0

proc radius*(this: Geom_CylindricalSurface): cdouble  {.importcpp: "Radius".}
    ## Returns the radius of this cylinder.

proc isUClosed*(this: Geom_CylindricalSurface): bool  {.importcpp: "IsUClosed".}
    ## Returns True.

proc isVClosed*(this: Geom_CylindricalSurface): bool  {.importcpp: "IsVClosed".}
    ## Returns False.

proc isUPeriodic*(this: Geom_CylindricalSurface): bool  {.importcpp: "IsUPeriodic".}
    ## Returns True.

proc isVPeriodic*(this: Geom_CylindricalSurface): bool  {.importcpp: "IsVPeriodic".}
    ## Returns False.

proc uIso*(this: Geom_CylindricalSurface, U: cdouble): handle[Geom_Curve]  {.importcpp: "UIso".}
    ## The UIso curve is a Line. The location point of this line is on the
    ## placement plane (XAxis, YAxis) of the surface. This line is parallel
    ## to the axis of symmetry of the surface.

proc vIso*(this: Geom_CylindricalSurface, V: cdouble): handle[Geom_Curve]  {.importcpp: "VIso".}
    ## The VIso curve is a circle. The start point of this circle (U = 0) is
    ## defined with the "XAxis" of the surface. The center of the circle is
    ## on the symmetry axis.

proc d0*(this: Geom_CylindricalSurface, U: cdouble, V: cdouble, P: var gp_Pnt)  {.importcpp: "D0".}
    ## Computes the point P (U, V) on the surface. P (U, V) = Loc + Radius *
    ## (cos (U) * XDir + sin (U) * YDir) + V * ZDir where Loc is the origin
    ## of the placement plane (XAxis, YAxis) XDir is the direction of the
    ## XAxis and YDir the direction of the YAxis.

proc d1*(this: Geom_CylindricalSurface, U: cdouble, V: cdouble, P: var gp_Pnt, D1U: var gp_Vec, D1V: var gp_Vec)  {.importcpp: "D1".}
    ## Computes the current point and the first derivatives in the directions
    ## U and V.

proc d2*(this: Geom_CylindricalSurface, U: cdouble, V: cdouble, P: var gp_Pnt, D1U: var gp_Vec, D1V: var gp_Vec, D2U: var gp_Vec, D2V: var gp_Vec, D2UV: var gp_Vec)  {.importcpp: "D2".}
    ## Computes the current point, the first and the second derivatives in
    ## the directions U and V.

proc d3*(this: Geom_CylindricalSurface, U: cdouble, V: cdouble, P: var gp_Pnt, D1U: var gp_Vec, D1V: var gp_Vec, D2U: var gp_Vec, D2V: var gp_Vec, D2UV: var gp_Vec, D3U: var gp_Vec, D3V: var gp_Vec, D3UUV: var gp_Vec, D3UVV: var gp_Vec)  {.importcpp: "D3".}
    ## Computes the current point, the first, the second and the third
    ## derivatives in the directions U and V.

proc dN*(this: Geom_CylindricalSurface, U: cdouble, V: cdouble, Nu: cint, Nv: cint): gp_Vec  {.importcpp: "DN".}
    ## Computes the derivative of order Nu in the direction u and Nv in the
    ## direction v. Raised if Nu + Nv < 1 or Nu < 0 or Nv < 0.

proc transform*(this: var Geom_CylindricalSurface, T: gp_Trsf)  {.importcpp: "Transform".}
    ## Applies the transformation T to this cylinder.

proc copy*(this: Geom_CylindricalSurface): handle[Geom_Geometry]  {.importcpp: "Copy".}
    ## Creates a new object which is a copy of this cylinder.

proc dumpJson*(this: Geom_CylindricalSurface, theOStream: var Standard_OStream, theDepth: cint = 1)  {.importcpp: "DumpJson".}
    ## Dumps the content of me into the stream

proc get_type_name*(this: var Geom_CylindricalSurface): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Geom_CylindricalSurface): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: Geom_CylindricalSurface): handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.}  # header: "Geom_CylindricalSurface.hxx"
