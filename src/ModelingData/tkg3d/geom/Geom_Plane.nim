import geom_types


type
  Geom_Plane* {.header: "Geom_Plane.hxx", importcpp: "Geom_Plane", byref.} = object #of class Geom_ElementarySurface
    ## Describes a plane in 3D space. A plane is positioned in space by a
    ## coordinate system (a gp_Ax3 object) such that the plane is defined by
    ## the origin, "X Direction" and "Y Direction" of this coordinate system.
    ## This coordinate system is the "local coordinate system" of the plane.
    ## The following apply: - Its "X Direction" and "Y Direction" are
    ## respectively the u and v parametric directions of the plane. - Its
    ## origin is the origin of the u and v parameters (also called the
    ## "origin" of the plane). - Its "main Direction" is a vector normal to
    ## the plane. This normal vector gives the orientation of the plane only
    ## if the local coordinate system is "direct". (The orientation of the
    ## plane is always defined by the "X Direction" and the "Y Direction" of
    ## its local coordinate system.) The parametric equation of the plane is:
    ## P(u, v) = O + u*XDir + v*YDir where O, XDir and YDir are respectively
    ## the origin, the "X Direction" and the "Y Direction" of the local
    ## coordinate system of the plane. The parametric range of the two
    ## parameters u and v is ] -infinity, +infinity [.

  Handle_Geom_Plane* {.header: "Geom_Plane.hxx", importcpp: "Handle_Geom_Plane".} = handle[Geom_Plane]
  Base_type* {.header: "Geom_Plane.hxx", importcpp: "Geom_Plane::base_type".} = Geom_ElementarySurface


{.push header: "Geom_Plane.hxx".}

proc constructGeom_Plane*(A3: gp_Ax3): Geom_Plane {.constructor,importcpp: "Geom_Plane::Geom_Plane(@)".}
    ## Creates a plane located in 3D space with an axis placement three axis.
    ## The "ZDirection" of "A3" is the direction normal to the plane. The
    ## "Location" point of "A3" is the origin of the plane. The "XDirection"
    ## and "YDirection" of "A3" define the directions of the U isoparametric
    ## and V isoparametric curves.

proc constructGeom_Plane*(Pl: gp_Pln): Geom_Plane {.constructor,importcpp: "Geom_Plane::Geom_Plane(@)".}
    ## Creates a plane from a non transient plane from package gp.

proc constructGeom_Plane*(P: gp_Pnt, V: gp_Dir): Geom_Plane {.constructor,importcpp: "Geom_Plane::Geom_Plane(@)".}
    ## P is the "Location" point or origin of the plane. V is the direction
    ## normal to the plane.

proc constructGeom_Plane*(A: cdouble, B: cdouble, C: cdouble, D: cdouble): Geom_Plane {.constructor,importcpp: "Geom_Plane::Geom_Plane(@)".}
    ## Creates a plane from its cartesian equation : Ax + By + Cz + D = 0.0

proc setPln*(this: var Geom_Plane, Pl: gp_Pln)  {.importcpp: "SetPln".}
    ## Set <me> so that <me> has the same geometric properties as Pl.

proc pln*(this: Geom_Plane): gp_Pln  {.importcpp: "Pln".}
    ## Converts this plane into a gp_Pln plane.

proc uReverse*(this: var Geom_Plane)  {.importcpp: "UReverse".}
    ## Changes the orientation of this plane in the u (or v) parametric
    ## direction. The bounds of the plane are not changed but the given
    ## parametric direction is reversed. Hence the orientation of the surface
    ## is reversed.

proc uReversedParameter*(this: Geom_Plane, U: cdouble): cdouble  {.importcpp: "UReversedParameter".}
    ## Computes the u parameter on the modified plane, produced when
    ## reversing the u parametric of this plane, for any point of u parameter
    ## U on this plane. In the case of a plane, these methods return - -U.

proc vReverse*(this: var Geom_Plane)  {.importcpp: "VReverse".}
    ## Changes the orientation of this plane in the u (or v) parametric
    ## direction. The bounds of the plane are not changed but the given
    ## parametric direction is reversed. Hence the orientation of the surface
    ## is reversed.

proc vReversedParameter*(this: Geom_Plane, V: cdouble): cdouble  {.importcpp: "VReversedParameter".}
    ## Computes the v parameter on the modified plane, produced when
    ## reversing the v parametric of this plane, for any point of v parameter
    ## V on this plane. In the case of a plane, these methods return -V.

proc transformParameters*(this: Geom_Plane, U: var cdouble, V: var cdouble, T: gp_Trsf)  {.importcpp: "TransformParameters".}
    ## Computes the parameters on the transformed surface for the transform
    ## of the point of parameters U,V on <me>.
    ## me->Transformed(T)->Value(U',V') is the same point as
    ## me->Value(U,V).Transformed(T) Where U',V' are the new values of U,V
    ## after calling me->TranformParameters(U,V,T) This methods multiplies U
    ## and V by T.ScaleFactor()

proc parametricTransformation*(this: Geom_Plane, T: gp_Trsf): gp_GTrsf2d  {.importcpp: "ParametricTransformation".}
    ## Returns a 2d transformation used to find the new parameters of a point
    ## on the transformed surface. me->Transformed(T)->Value(U',V') is the
    ## same point as me->Value(U,V).Transformed(T) Where U',V' are obtained
    ## by transforming U,V with th 2d transformation returned by
    ## me->ParametricTransformation(T) This methods returns a scale centered
    ## on the origin with T.ScaleFactor

proc bounds*(this: Geom_Plane, U1: var cdouble, U2: var cdouble, V1: var cdouble, V2: var cdouble)  {.importcpp: "Bounds".}
    ## Returns the parametric bounds U1, U2, V1 and V2 of this plane. Because
    ## a plane is an infinite surface, the following is always true: - U1 =
    ## V1 = cdouble::RealFirst() - U2 = V2 = cdouble::RealLast().

proc coefficients*(this: Geom_Plane, A: var cdouble, B: var cdouble, C: var cdouble, D: var cdouble)  {.importcpp: "Coefficients".}
    ## Computes the normalized coefficients of the plane's cartesian equation
    ## : Ax + By + Cz + D = 0.0

proc isUClosed*(this: Geom_Plane): bool  {.importcpp: "IsUClosed".}
    ## return False

proc isVClosed*(this: Geom_Plane): bool  {.importcpp: "IsVClosed".}
    ## return False

proc isUPeriodic*(this: Geom_Plane): bool  {.importcpp: "IsUPeriodic".}
    ## return False.

proc isVPeriodic*(this: Geom_Plane): bool  {.importcpp: "IsVPeriodic".}
    ## return False.

proc uIso*(this: Geom_Plane, U: cdouble): handle[Geom_Curve]  {.importcpp: "UIso".}
    ## Computes the U isoparametric curve. This is a Line parallel to the
    ## YAxis of the plane.

proc vIso*(this: Geom_Plane, V: cdouble): handle[Geom_Curve]  {.importcpp: "VIso".}
    ## Computes the V isoparametric curve. This is a Line parallel to the
    ## XAxis of the plane.

proc d0*(this: Geom_Plane, U: cdouble, V: cdouble, P: var gp_Pnt)  {.importcpp: "D0".}
    ## Computes the point P (U, V) on <me>. P = O + U * XDir + V * YDir.
    ## where O is the "Location" point of the plane, XDir the "XDirection"
    ## and YDir the "YDirection" of the plane's local coordinate system.

proc d1*(this: Geom_Plane, U: cdouble, V: cdouble, P: var gp_Pnt, D1U: var gp_Vec, D1V: var gp_Vec)  {.importcpp: "D1".}
    ## Computes the current point and the first derivatives in the directions
    ## U and V.

proc d2*(this: Geom_Plane, U: cdouble, V: cdouble, P: var gp_Pnt, D1U: var gp_Vec, D1V: var gp_Vec, D2U: var gp_Vec, D2V: var gp_Vec, D2UV: var gp_Vec)  {.importcpp: "D2".}
    ## Computes the current point, the first and the second derivatives in
    ## the directions U and V.

proc d3*(this: Geom_Plane, U: cdouble, V: cdouble, P: var gp_Pnt, D1U: var gp_Vec, D1V: var gp_Vec, D2U: var gp_Vec, D2V: var gp_Vec, D2UV: var gp_Vec, D3U: var gp_Vec, D3V: var gp_Vec, D3UUV: var gp_Vec, D3UVV: var gp_Vec)  {.importcpp: "D3".}
    ## Computes the current point, the first,the second and the third
    ## derivatives in the directions U and V.

proc dN*(this: Geom_Plane, U: cdouble, V: cdouble, Nu: cint, Nv: cint): gp_Vec  {.importcpp: "DN".}
    ## Computes the derivative of order Nu in the direction u and Nv in the
    ## direction v. Raised if Nu + Nv < 1 or Nu < 0 or Nv < 0.

proc transform*(this: var Geom_Plane, T: gp_Trsf)  {.importcpp: "Transform".}
    ## Applies the transformation T to this plane.

proc copy*(this: Geom_Plane): handle[Geom_Geometry]  {.importcpp: "Copy".}
    ## Creates a new object which is a copy of this plane.

proc dumpJson*(this: Geom_Plane, theOStream: var Standard_OStream, theDepth: cint = 1)  {.importcpp: "DumpJson".}
    ## Dumps the content of me into the stream

proc get_type_name*(this: var Geom_Plane): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Geom_Plane): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: Geom_Plane): handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.}  # header: "Geom_Plane.hxx"
