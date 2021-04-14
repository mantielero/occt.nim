import geom_types


type
  Geom_OffsetCurve* {.header: "Geom_OffsetCurve.hxx", importcpp: "Geom_OffsetCurve", byref.} = object #of class Geom_Curve
    ## This class implements the basis services for an offset curve in 3D
    ## space. The Offset curve in this package can be a self intersecting
    ## curve even if the basis curve does not self-intersect. The self
    ## intersecting portions are not deleted at the construction time. An
    ## offset curve is a curve at constant distance (Offset) from a basis
    ## curve in a reference direction V. The offset curve takes its
    ## parametrization from the basis curve. The Offset curve is in the
    ## direction of the normal N defined with the cross product T^V, where
    ## the vector T is given by the first derivative on the basis curve with
    ## non zero length. The distance offset may be positive or negative to
    ## indicate the preferred side of the curve : . distance offset >0 => the
    ## curve is in the direction of N . distance offset <0 => the curve is in
    ## the direction of - N

  Handle_Geom_OffsetCurve* {.header: "Geom_OffsetCurve.hxx", importcpp: "Handle_Geom_OffsetCurve".} = handle[Geom_OffsetCurve]
  Base_type* {.header: "Geom_OffsetCurve.hxx", importcpp: "Geom_OffsetCurve::base_type".} = Geom_Curve


{.push header: "Geom_OffsetCurve.hxx".}

proc constructGeom_OffsetCurve*(C: handle[Geom_Curve], Offset: cdouble, V: gp_Dir, isNotCheckC0: bool): Geom_OffsetCurve {.constructor,importcpp: "Geom_OffsetCurve::Geom_OffsetCurve(@)".}
    ## C is the basis curve, Offset is the distance between <me> and the
    ## basis curve at any point. V defines the fixed reference direction
    ## (offset direction). If P is a point on the basis curve and T the first
    ## derivative with non zero length at this point, the corresponding point
    ## on the offset curve is in the direction of the vector-product N = V ^
    ## T where N is a unitary vector. If isNotCheckC0 = TRUE checking if
    ## basis curve has C0-continuity is not made. Warnings : In this package
    ## the entities are not shared. The OffsetCurve is built with a copy of
    ## the curve C. So when C is modified the OffsetCurve is not modified

proc reverse*(this: var Geom_OffsetCurve)  {.importcpp: "Reverse".}
    ## Changes the orientation of this offset curve. As a result: - the basis
    ## curve is reversed, - the start point of the initial curve becomes the
    ## end point of the reversed curve, - the end point of the initial curve
    ## becomes the start point of the reversed curve, and - the first and
    ## last parameters are recomputed.

proc reversedParameter*(this: Geom_OffsetCurve, U: cdouble): cdouble  {.importcpp: "ReversedParameter".}
    ## Computes the parameter on the reversed curve for the point of
    ## parameter U on this offset curve.

proc setBasisCurve*(this: var Geom_OffsetCurve, C: handle[Geom_Curve], isNotCheckC0: bool)  {.importcpp: "SetBasisCurve".}
    ## Changes this offset curve by assigning C as the basis curve from which
    ## it is built. If isNotCheckC0 = TRUE checking if basis curve has
    ## C0-continuity is not made. Exceptions Standard_ConstructionError if
    ## the curve C is not at least "C1" continuous.

proc setDirection*(this: var Geom_OffsetCurve, V: gp_Dir)  {.importcpp: "SetDirection".}
    ## Changes this offset curve by assigning V as the reference vector used
    ## to compute the offset direction.

proc setOffsetValue*(this: var Geom_OffsetCurve, D: cdouble)  {.importcpp: "SetOffsetValue".}
    ## Changes this offset curve by assigning D as the offset value.

proc basisCurve*(this: Geom_OffsetCurve): handle[Geom_Curve]  {.importcpp: "BasisCurve".}
    ## Returns the basis curve of this offset curve. Note: The basis curve
    ## can be an offset curve.

proc continuity*(this: Geom_OffsetCurve): GeomAbs_Shape  {.importcpp: "Continuity".}
    ## Returns the global continuity of this offset curve as a value of the
    ## GeomAbs_Shape enumeration. The degree of continuity of this offset
    ## curve is equal to the degree of continuity of the basis curve minus 1.
    ## Continuity of the Offset curve : C0 : only geometric continuity, C1 :
    ## continuity of the first derivative all along the Curve, C2 :
    ## continuity of the second derivative all along the Curve, C3 :
    ## continuity of the third derivative all along the Curve, G1 : tangency
    ## continuity all along the Curve, G2 : curvature continuity all along
    ## the Curve, CN : the order of continuity is infinite. Warnings :
    ## Returns the continuity of the basis curve - 1. The offset curve must
    ## have a unique offset direction defined at any point.

proc direction*(this: Geom_OffsetCurve): gp_Dir  {.importcpp: "Direction".}
    ## Returns the reference vector of this offset curve. Value and
    ## derivatives Warnings : The exception UndefinedValue or
    ## UndefinedDerivative is raised if it is not possible to compute a
    ## unique offset direction. If T is the first derivative with not null
    ## length and V the offset direction the relation ||T(U) ^ V|| != 0 must
    ## be satisfied to evaluate the offset curve. No check is done at the
    ## creation time and we suppose in this package that the offset curve is
    ## well defined.

proc d0*(this: Geom_OffsetCurve, U: cdouble, P: var gp_Pnt)  {.importcpp: "D0".}
    ## Warning! this should not be called if the basis curve is not at least
    ## C1. Nevertheless if used on portion where the curve is C1, it is OK

proc d1*(this: Geom_OffsetCurve, U: cdouble, P: var gp_Pnt, V1: var gp_Vec)  {.importcpp: "D1".}
    ## Warning! this should not be called if the continuity of the basis
    ## curve is not C2. Nevertheless, it's OK to use it on portion where the
    ## curve is C2

proc d2*(this: Geom_OffsetCurve, U: cdouble, P: var gp_Pnt, V1: var gp_Vec, V2: var gp_Vec)  {.importcpp: "D2".}
    ## Warning! this should not be called if the continuity of the basis
    ## curve is not C3. Nevertheless, it's OK to use it on portion where the
    ## curve is C3

proc d3*(this: Geom_OffsetCurve, U: cdouble, P: var gp_Pnt, V1: var gp_Vec, V2: var gp_Vec, V3: var gp_Vec)  {.importcpp: "D3".}

proc dN*(this: Geom_OffsetCurve, U: cdouble, N: cint): gp_Vec  {.importcpp: "DN".}
    ## The returned vector gives the value of the derivative for the order of
    ## derivation N.

proc firstParameter*(this: Geom_OffsetCurve): cdouble  {.importcpp: "FirstParameter".}
    ## Returns the value of the first parameter of this offset curve. The
    ## first parameter corresponds to the start point of the curve. Note: the
    ## first and last parameters of this offset curve are also the ones of
    ## its basis curve.

proc lastParameter*(this: Geom_OffsetCurve): cdouble  {.importcpp: "LastParameter".}
    ## Returns the value of the last parameter of this offset curve. The last
    ## parameter corresponds to the end point. Note: the first and last
    ## parameters of this offset curve are also the ones of its basis curve.

proc offset*(this: Geom_OffsetCurve): cdouble  {.importcpp: "Offset".}
    ## Returns the offset value of this offset curve.

proc isClosed*(this: Geom_OffsetCurve): bool  {.importcpp: "IsClosed".}
    ## Returns True if the distance between the start point and the end point
    ## of the curve is lower or equal to Resolution from package gp.

proc isCN*(this: Geom_OffsetCurve, N: cint): bool  {.importcpp: "IsCN".}
    ## Returns true if the degree of continuity of the basis curve of this
    ## offset curve is at least N + 1. This method answer True if the
    ## continuity of the basis curve is N + 1. We suppose in this class that
    ## a normal direction to the basis curve (used to compute the offset
    ## curve) is defined at any point on the basis curve. Raised if N < 0.

proc isPeriodic*(this: Geom_OffsetCurve): bool  {.importcpp: "IsPeriodic".}
    ## Returns true if this offset curve is periodic, i.e. if the basis curve
    ## of this offset curve is periodic.

proc period*(this: Geom_OffsetCurve): cdouble  {.importcpp: "Period".}
    ## Returns the period of this offset curve, i.e. the period of the basis
    ## curve of this offset curve. Exceptions Standard_NoSuchObject if the
    ## basis curve is not periodic.

proc transform*(this: var Geom_OffsetCurve, T: gp_Trsf)  {.importcpp: "Transform".}
    ## Applies the transformation T to this offset curve. Note: the basis
    ## curve is also modified.

proc transformedParameter*(this: Geom_OffsetCurve, U: cdouble, T: gp_Trsf): cdouble  {.importcpp: "TransformedParameter".}
    ## Returns the parameter on the transformed curve for the transform of
    ## the point of parameter U on <me>.
    ## me->Transformed(T)->Value(me->TransformedParameter(U,T)) is the same
    ## point as me->Value(U).Transformed(T) This methods calls the basis
    ## curve method.

proc parametricTransformation*(this: Geom_OffsetCurve, T: gp_Trsf): cdouble  {.importcpp: "ParametricTransformation".}
    ## Returns a coefficient to compute the parameter on the transformed
    ## curve for the transform of the point on <me>.

proc copy*(this: Geom_OffsetCurve): handle[Geom_Geometry]  {.importcpp: "Copy".}
    ## Creates a new object which is a copy of this offset curve.

proc getBasisCurveContinuity*(this: Geom_OffsetCurve): GeomAbs_Shape  {.importcpp: "GetBasisCurveContinuity".}
    ## Returns continuity of the basis curve.

proc dumpJson*(this: Geom_OffsetCurve, theOStream: var Standard_OStream, theDepth: cint = 1)  {.importcpp: "DumpJson".}
    ## Dumps the content of me into the stream

proc get_type_name*(this: var Geom_OffsetCurve): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Geom_OffsetCurve): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: Geom_OffsetCurve): handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.}  # header: "Geom_OffsetCurve.hxx"
