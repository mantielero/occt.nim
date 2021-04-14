import geom_types


type
  Geom_OffsetSurface* {.header: "Geom_OffsetSurface.hxx", importcpp: "Geom_OffsetSurface", byref.} = object #of class Geom_Surface
    ## Describes an offset surface in 3D space. An offset surface is defined
    ## by: - the basis surface to which it is parallel, and - the distance
    ## between the offset surface and its basis surface. A point on the
    ## offset surface is built by measuring the offset value along the normal
    ## vector at a point on the basis surface. This normal vector is given by
    ## the cross product D1u^D1v, where D1u and D1v are the vectors
    ## tangential to the basis surface in the u and v parametric directions
    ## at this point. The side of the basis surface on which the offset is
    ## measured depends on the sign of the offset value. A Geom_OffsetSurface
    ## surface can be self-intersecting, even if the basis surface does not
    ## self-intersect. The self-intersecting portions are not deleted at the
    ## time of construction. Warning There must be only one normal vector
    ## defined at any point on the basis surface. This must be verified by
    ## the user as no check is made at the time of construction to detect
    ## points with multiple possible normal directions (for example, the top
    ## of a conical surface).

  Handle_Geom_OffsetSurface* {.header: "Geom_OffsetSurface.hxx", importcpp: "Handle_Geom_OffsetSurface".} = handle[Geom_OffsetSurface]
  Base_type* {.header: "Geom_OffsetSurface.hxx", importcpp: "Geom_OffsetSurface::base_type".} = Geom_Surface


{.push header: "Geom_OffsetSurface.hxx".}

proc constructGeom_OffsetSurface*(S: handle[Geom_Surface], Offset: Standard_Real, isNotCheckC0: Standard_Boolean): Geom_OffsetSurface {.constructor,importcpp: "Geom_OffsetSurface::Geom_OffsetSurface(@)".}
    ## Constructs a surface offset from the basis surface S, where Offset is
    ## the distance between the offset surface and the basis surface at any
    ## point. A point on the offset surface is built by measuring the offset
    ## value along a normal vector at a point on S. This normal vector is
    ## given by the cross product D1u^D1v, where D1u and D1v are the vectors
    ## tangential to the basis surface in the u and v parametric directions
    ## at this point. The side of S on which the offset value is measured is
    ## indicated by this normal vector if Offset is positive, or is the
    ## inverse sense if Offset is negative. If isNotCheckC0 = TRUE checking
    ## if basis surface has C0-continuity is not made. Warnings : - The
    ## offset surface is built with a copy of the surface S. Therefore, when
    ## S is modified the offset surface is not modified. - No check is made
    ## at the time of construction to detect points on S with multiple
    ## possible normal directions. Raised if S is not at least C1. Warnings :
    ## No check is done to verify that a unique normal direction is defined
    ## at any point of the basis surface S.

proc setBasisSurface*(this: var Geom_OffsetSurface, S: handle[Geom_Surface], isNotCheckC0: Standard_Boolean)  {.importcpp: "SetBasisSurface".}
    ## Raised if S is not at least C1. Warnings : No check is done to verify
    ## that a unique normal direction is defined at any point of the basis
    ## surface S. If isNotCheckC0 = TRUE checking if basis surface has
    ## C0-continuity is not made. Exceptions Standard_ConstructionError if
    ## the surface S is not at least "C1" continuous.

proc setOffsetValue*(this: var Geom_OffsetSurface, D: Standard_Real)  {.importcpp: "SetOffsetValue".}
    ## Changes this offset surface by assigning D as the offset value.

proc offset*(this: Geom_OffsetSurface): Standard_Real  {.importcpp: "Offset".}
    ## Returns the offset value of this offset surface.

proc basisSurface*(this: Geom_OffsetSurface): handle[Geom_Surface]  {.importcpp: "BasisSurface".}
    ## Returns the basis surface of this offset surface. Note: The basis
    ## surface can be an offset surface.

proc osculatingSurface*(this: Geom_OffsetSurface): handle[Geom_OsculatingSurface]  {.importcpp: "OsculatingSurface".}
    ## Returns osculating surface if base surface is B-spline or Bezier

proc uReverse*(this: var Geom_OffsetSurface)  {.importcpp: "UReverse".}
    ## Changes the orientation of this offset surface in the u parametric
    ## direction. The bounds of the surface are not changed but the given
    ## parametric direction is reversed.

proc uReversedParameter*(this: Geom_OffsetSurface, U: Standard_Real): Standard_Real  {.importcpp: "UReversedParameter".}
    ## Computes the u parameter on the modified surface, produced by
    ## reversing the u parametric direction of this offset surface, for any
    ## point of u parameter U on this offset surface.

proc vReverse*(this: var Geom_OffsetSurface)  {.importcpp: "VReverse".}
    ## Changes the orientation of this offset surface in the v parametric
    ## direction. The bounds of the surface are not changed but the given
    ## parametric direction is reversed.

proc vReversedParameter*(this: Geom_OffsetSurface, V: Standard_Real): Standard_Real  {.importcpp: "VReversedParameter".}
    ## Computes the v parameter on the modified surface, produced by
    ## reversing the or v parametric direction of this offset surface, for
    ## any point of v parameter V on this offset surface.

proc bounds*(this: Geom_OffsetSurface, U1: var Standard_Real, U2: var Standard_Real, V1: var Standard_Real, V2: var Standard_Real)  {.importcpp: "Bounds".}
    ## Returns the parametric bounds U1, U2, V1 and V2 of this offset
    ## surface. If the surface is infinite, this function can return: -
    ## Standard_Real::RealFirst(), or - Standard_Real::RealLast().

proc continuity*(this: Geom_OffsetSurface): GeomAbs_Shape  {.importcpp: "Continuity".}
    ## This method returns the continuity of the basis surface - 1.
    ## Continuity of the Offset surface : C0 : only geometric continuity, C1
    ## : continuity of the first derivative all along the Surface, C2 :
    ## continuity of the second derivative all along the Surface, C3 :
    ## continuity of the third derivative all along the Surface, CN : the
    ## order of continuity is infinite. Example : If the basis surface is C2
    ## in the V direction and C3 in the U direction Shape = C1. Warnings : If
    ## the basis surface has a unique normal direction defined at any point
    ## this method gives the continuity of the offset surface otherwise the
    ## effective continuity can be lower than the continuity of the basis
    ## surface - 1.

proc isCNu*(this: Geom_OffsetSurface, N: Standard_Integer): Standard_Boolean  {.importcpp: "IsCNu".}
    ## This method answer True if the continuity of the basis surface is N +
    ## 1 in the U parametric direction. We suppose in this class that a
    ## unique normal is defined at any point on the basis surface. Raised if
    ## N <0.

proc isCNv*(this: Geom_OffsetSurface, N: Standard_Integer): Standard_Boolean  {.importcpp: "IsCNv".}
    ## This method answer True if the continuity of the basis surface is N +
    ## 1 in the V parametric direction. We suppose in this class that a
    ## unique normal is defined at any point on the basis surface. Raised if
    ## N <0.

proc isUClosed*(this: Geom_OffsetSurface): Standard_Boolean  {.importcpp: "IsUClosed".}
    ## Checks whether this offset surface is closed in the u parametric
    ## direction. Returns true if, taking uFirst and uLast as the parametric
    ## bounds in the u parametric direction, the distance between the points
    ## P(uFirst,v) and P(uLast,v) is less than or equal to gp::Resolution()
    ## for each value of the parameter v.

proc isVClosed*(this: Geom_OffsetSurface): Standard_Boolean  {.importcpp: "IsVClosed".}
    ## Checks whether this offset surface is closed in the u or v parametric
    ## direction. Returns true if taking vFirst and vLast as the parametric
    ## bounds in the v parametric direction, the distance between the points
    ## P(u,vFirst) and P(u,vLast) is less than or equal to gp::Resolution()
    ## for each value of the parameter u.

proc isUPeriodic*(this: Geom_OffsetSurface): Standard_Boolean  {.importcpp: "IsUPeriodic".}
    ## Returns true if this offset surface is periodic in the u parametric
    ## direction, i.e. if the basis surface of this offset surface is
    ## periodic in this direction.

proc uPeriod*(this: Geom_OffsetSurface): Standard_Real  {.importcpp: "UPeriod".}
    ## Returns the period of this offset surface in the u parametric
    ## direction respectively, i.e. the period of the basis surface of this
    ## offset surface in this parametric direction. raises if the surface is
    ## not uperiodic.

proc isVPeriodic*(this: Geom_OffsetSurface): Standard_Boolean  {.importcpp: "IsVPeriodic".}
    ## Returns true if this offset surface is periodic in the v parametric
    ## direction, i.e. if the basis surface of this offset surface is
    ## periodic in this direction.

proc vPeriod*(this: Geom_OffsetSurface): Standard_Real  {.importcpp: "VPeriod".}
    ## Returns the period of this offset surface in the v parametric
    ## direction respectively, i.e. the period of the basis surface of this
    ## offset surface in this parametric direction. raises if the surface is
    ## not vperiodic.

proc uIso*(this: Geom_OffsetSurface, U: Standard_Real): handle[Geom_Curve]  {.importcpp: "UIso".}
    ## Computes the U isoparametric curve.

proc vIso*(this: Geom_OffsetSurface, V: Standard_Real): handle[Geom_Curve]  {.importcpp: "VIso".}
    ## Computes the V isoparametric curve.

proc d0*(this: Geom_OffsetSurface, U: Standard_Real, V: Standard_Real, P: var gp_Pnt)  {.importcpp: "D0".}
    ## P (U, V) = Pbasis + Offset * Ndir where Ndir = D1Ubasis ^ D1Vbasis /
    ## ||D1Ubasis ^ D1Vbasis|| is the normal direction of the basis surface.
    ## Pbasis, D1Ubasis, D1Vbasis are the point and the first derivatives on
    ## the basis surface. If Ndir is undefined this method computes an
    ## approched normal direction using the following limited development :
    ## Ndir = N0 + DNdir/DU + DNdir/DV + Eps with Eps->0 which requires to
    ## compute the second derivatives on the basis surface. If the normal
    ## direction cannot be approximate for this order of derivation the
    ## exception UndefinedValue is raised.

proc d1*(this: Geom_OffsetSurface, U: Standard_Real, V: Standard_Real, P: var gp_Pnt, D1U: var gp_Vec, D1V: var gp_Vec)  {.importcpp: "D1".}
    ## Raised if the continuity of the basis surface is not C2.

proc d2*(this: Geom_OffsetSurface, U: Standard_Real, V: Standard_Real, P: var gp_Pnt, D1U: var gp_Vec, D1V: var gp_Vec, D2U: var gp_Vec, D2V: var gp_Vec, D2UV: var gp_Vec)  {.importcpp: "D2".}
    ## ---Purpose ; Raised if the continuity of the basis surface is not C3.

proc d3*(this: Geom_OffsetSurface, U: Standard_Real, V: Standard_Real, P: var gp_Pnt, D1U: var gp_Vec, D1V: var gp_Vec, D2U: var gp_Vec, D2V: var gp_Vec, D2UV: var gp_Vec, D3U: var gp_Vec, D3V: var gp_Vec, D3UUV: var gp_Vec, D3UVV: var gp_Vec)  {.importcpp: "D3".}
    ## Raised if the continuity of the basis surface is not C4.

proc dN*(this: Geom_OffsetSurface, U: Standard_Real, V: Standard_Real, Nu: Standard_Integer, Nv: Standard_Integer): gp_Vec  {.importcpp: "DN".}
    ## Computes the derivative of order Nu in the direction u and Nv in the
    ## direction v. ---Purpose ; Raised if the continuity of the basis
    ## surface is not CNu + 1 in the U direction and CNv + 1 in the V
    ## direction. Raised if Nu + Nv < 1 or Nu < 0 or Nv < 0.

proc transform*(this: var Geom_OffsetSurface, T: gp_Trsf)  {.importcpp: "Transform".}
    ## Applies the transformation T to this offset surface. Note: the basis
    ## surface is also modified.

proc transformParameters*(this: Geom_OffsetSurface, U: var Standard_Real, V: var Standard_Real, T: gp_Trsf)  {.importcpp: "TransformParameters".}
    ## Computes the parameters on the transformed surface for the transform
    ## of the point of parameters U,V on <me>.

proc parametricTransformation*(this: Geom_OffsetSurface, T: gp_Trsf): gp_GTrsf2d  {.importcpp: "ParametricTransformation".}
    ## Returns a 2d transformation used to find the new parameters of a point
    ## on the transformed surface.

proc copy*(this: Geom_OffsetSurface): handle[Geom_Geometry]  {.importcpp: "Copy".}
    ## Creates a new object which is a copy of this offset surface.

proc surface*(this: Geom_OffsetSurface): handle[Geom_Surface]  {.importcpp: "Surface".}
    ## returns an equivalent surface of the offset surface when the basis
    ## surface is a canonic surface or a rectangular limited surface on
    ## canonic surface or if the offset is null.

proc uOsculatingSurface*(this: Geom_OffsetSurface, U: Standard_Real, V: Standard_Real, IsOpposite: var Standard_Boolean, UOsculSurf: handle[Geom_BSplineSurface]): Standard_Boolean  {.importcpp: "UOsculatingSurface".}
    ## if Standard_True, L is the local osculating surface along U at the
    ## point U,V. It means that DL/DU is collinear to DS/DU . If IsOpposite
    ## == Standard_True these vectors have opposite direction.

proc vOsculatingSurface*(this: Geom_OffsetSurface, U: Standard_Real, V: Standard_Real, IsOpposite: var Standard_Boolean, VOsculSurf: handle[Geom_BSplineSurface]): Standard_Boolean  {.importcpp: "VOsculatingSurface".}
    ## if Standard_True, L is the local osculating surface along V at the
    ## point U,V. It means that DL/DV is collinear to DS/DV . If IsOpposite
    ## == Standard_True these vectors have opposite direction.

proc getBasisSurfContinuity*(this: Geom_OffsetSurface): GeomAbs_Shape  {.importcpp: "GetBasisSurfContinuity".}
    ## Returns continuity of the basis surface.

proc dumpJson*(this: Geom_OffsetSurface, theOStream: var Standard_OStream, theDepth: Standard_Integer = 1)  {.importcpp: "DumpJson".}
    ## Dumps the content of me into the stream

proc get_type_name*(this: var Geom_OffsetSurface): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Geom_OffsetSurface): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: Geom_OffsetSurface): handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.}  # header: "Geom_OffsetSurface.hxx"
