import geom_types


type
  Geom_SurfaceOfRevolution* {.header: "Geom_SurfaceOfRevolution.hxx", importcpp: "Geom_SurfaceOfRevolution", byref.} = object #of class Geom_SweptSurface
    ## Describes a surface of revolution (revolved surface). Such a surface
    ## is obtained by rotating a curve (called the "meridian") through a
    ## complete revolution about an axis (referred to as the "axis of
    ## revolution"). The curve and the axis must be in the same plane (the
    ## "reference plane" of the surface). Rotation around the axis of
    ## revolution in the trigonometric sense defines the u parametric
    ## direction. So the u parameter is an angle, and its origin is given by
    ## the position of the meridian on the surface. The parametric range for
    ## the u parameter is: [ 0, 2.*Pi ] The v parameter is that of the
    ## meridian. Note: A surface of revolution is built from a copy of the
    ## original meridian. As a result the original meridian is not modified
    ## when the surface is modified. The form of a surface of revolution is
    ## typically a general revolution surface (GeomAbs_RevolutionForm). It
    ## can be: - a conical surface, if the meridian is a line or a trimmed
    ## line (GeomAbs_ConicalForm), - a cylindrical surface, if the meridian
    ## is a line or a trimmed line parallel to the axis of revolution
    ## (GeomAbs_CylindricalForm), - a planar surface if the meridian is a
    ## line or a trimmed line perpendicular to the axis of revolution of the
    ## surface (GeomAbs_PlanarForm), - a toroidal surface, if the meridian is
    ## a circle or a trimmed circle (GeomAbs_ToroidalForm), or - a spherical
    ## surface, if the meridian is a circle, the center of which is located
    ## on the axis of the revolved surface (GeomAbs_SphericalForm). Warning
    ## Be careful not to construct a surface of revolution where the curve
    ## and the axis or revolution are not defined in the same plane. If you
    ## do not have a correct configuration, you can correct your initial
    ## curve, using a cylindrical projection in the reference plane.

  Handle_Geom_SurfaceOfRevolution* {.header: "Geom_SurfaceOfRevolution.hxx", importcpp: "Handle_Geom_SurfaceOfRevolution".} = handle[Geom_SurfaceOfRevolution]
  Base_type* {.header: "Geom_SurfaceOfRevolution.hxx", importcpp: "Geom_SurfaceOfRevolution::base_type".} = Geom_SweptSurface


{.push header: "Geom_SurfaceOfRevolution.hxx".}

proc constructGeom_SurfaceOfRevolution*(C: handle[Geom_Curve], A1: gp_Ax1): Geom_SurfaceOfRevolution {.constructor,importcpp: "Geom_SurfaceOfRevolution::Geom_SurfaceOfRevolution(@)".}
    ## C : is the meridian or the referenced curve. A1 is the axis of
    ## revolution. The form of a SurfaceOfRevolution can be : . a general
    ## revolution surface (RevolutionForm), . a conical surface if the
    ## meridian is a line or a trimmed line (ConicalForm), . a cylindrical
    ## surface if the meridian is a line or a trimmed line parallel to the
    ## revolution axis (CylindricalForm), . a planar surface if the meridian
    ## is a line perpendicular to the revolution axis of the surface
    ## (PlanarForm). . a spherical surface, . a toroidal surface, . a quadric
    ## surface. Warnings : It is not checked that the curve C is planar and
    ## that the surface axis is in the plane of the curve. It is not checked
    ## that the revolved curve C doesn't self-intersects.

proc setAxis*(this: var Geom_SurfaceOfRevolution, A1: gp_Ax1)  {.importcpp: "SetAxis".}
    ## Changes the axis of revolution. Warnings : It is not checked that the
    ## axis is in the plane of the revolved curve.

proc setDirection*(this: var Geom_SurfaceOfRevolution, V: gp_Dir)  {.importcpp: "SetDirection".}
    ## Changes the direction of the revolution axis. Warnings : It is not
    ## checked that the axis is in the plane of the revolved curve.

proc setBasisCurve*(this: var Geom_SurfaceOfRevolution, C: handle[Geom_Curve])  {.importcpp: "SetBasisCurve".}
    ## Changes the revolved curve of the surface. Warnings : It is not
    ## checked that the curve C is planar and that the surface axis is in the
    ## plane of the curve. It is not checked that the revolved curve C
    ## doesn't self-intersects.

proc setLocation*(this: var Geom_SurfaceOfRevolution, P: gp_Pnt)  {.importcpp: "SetLocation".}
    ## Changes the location point of the revolution axis. Warnings : It is
    ## not checked that the axis is in the plane of the revolved curve.

proc axis*(this: Geom_SurfaceOfRevolution): gp_Ax1  {.importcpp: "Axis".}
    ## Returns the revolution axis of the surface.

proc location*(this: Geom_SurfaceOfRevolution): gp_Pnt  {.importcpp: "Location".}
    ## Returns the location point of the axis of revolution.

proc referencePlane*(this: Geom_SurfaceOfRevolution): gp_Ax2  {.importcpp: "ReferencePlane".}
    ## Computes the position of the reference plane of the surface defined by
    ## the basis curve and the symmetry axis. The location point is the
    ## location point of the revolution's axis, the XDirection of the plane
    ## is given by the revolution's axis and the orientation of the normal to
    ## the plane is given by the sense of revolution.

proc uReverse*(this: var Geom_SurfaceOfRevolution)  {.importcpp: "UReverse".}
    ## Changes the orientation of this surface of revolution in the u
    ## parametric direction. The bounds of the surface are not changed but
    ## the given parametric direction is reversed. Hence the orientation of
    ## the surface is reversed. As a consequence: - UReverse reverses the
    ## direction of the axis of revolution of this surface,

proc uReversedParameter*(this: Geom_SurfaceOfRevolution, U: cdouble): cdouble  {.importcpp: "UReversedParameter".}
    ## Computes the u parameter on the modified surface, when reversing its u
    ## parametric direction, for any point of u parameter U on this surface
    ## of revolution. In the case of a revolved surface: - UReversedParameter
    ## returns 2.*Pi - U

proc vReverse*(this: var Geom_SurfaceOfRevolution)  {.importcpp: "VReverse".}
    ## Changes the orientation of this surface of revolution in the v
    ## parametric direction. The bounds of the surface are not changed but
    ## the given parametric direction is reversed. Hence the orientation of
    ## the surface is reversed. As a consequence: - VReverse reverses the
    ## meridian of this surface of revolution.

proc vReversedParameter*(this: Geom_SurfaceOfRevolution, V: cdouble): cdouble  {.importcpp: "VReversedParameter".}
    ## Computes the v parameter on the modified surface, when reversing its v
    ## parametric direction, for any point of v parameter V on this surface
    ## of revolution. In the case of a revolved surface: - VReversedParameter
    ## returns the reversed parameter given by the function ReversedParameter
    ## called with V on the meridian.

proc transformParameters*(this: Geom_SurfaceOfRevolution, U: var cdouble, V: var cdouble, T: gp_Trsf)  {.importcpp: "TransformParameters".}
    ## Computes the parameters on the transformed surface for the transform
    ## of the point of parameters U,V on <me>.

proc parametricTransformation*(this: Geom_SurfaceOfRevolution, T: gp_Trsf): gp_GTrsf2d  {.importcpp: "ParametricTransformation".}
    ## Returns a 2d transformation used to find the new parameters of a point
    ## on the transformed surface.

proc bounds*(this: Geom_SurfaceOfRevolution, U1: var cdouble, U2: var cdouble, V1: var cdouble, V2: var cdouble)  {.importcpp: "Bounds".}
    ## Returns the parametric bounds U1, U2 , V1 and V2 of this surface. A
    ## surface of revolution is always complete, so U1 = 0, U2 = 2*PI.

proc isUClosed*(this: Geom_SurfaceOfRevolution): bool  {.importcpp: "IsUClosed".}
    ## IsUClosed always returns true.

proc isVClosed*(this: Geom_SurfaceOfRevolution): bool  {.importcpp: "IsVClosed".}
    ## IsVClosed returns true if the meridian of this surface of revolution
    ## is closed.

proc isCNu*(this: Geom_SurfaceOfRevolution, N: cint): bool  {.importcpp: "IsCNu".}
    ## IsCNu always returns true.

proc isCNv*(this: Geom_SurfaceOfRevolution, N: cint): bool  {.importcpp: "IsCNv".}
    ## IsCNv returns true if the degree of continuity of the meridian of this
    ## surface of revolution is at least N. Raised if N < 0.

proc isUPeriodic*(this: Geom_SurfaceOfRevolution): bool  {.importcpp: "IsUPeriodic".}
    ## Returns True.

proc isVPeriodic*(this: Geom_SurfaceOfRevolution): bool  {.importcpp: "IsVPeriodic".}
    ## IsVPeriodic returns true if the meridian of this surface of revolution
    ## is periodic.

proc uIso*(this: Geom_SurfaceOfRevolution, U: cdouble): handle[Geom_Curve]  {.importcpp: "UIso".}
    ## Computes the U isoparametric curve of this surface of revolution. It
    ## is the curve obtained by rotating the meridian through an angle U
    ## about the axis of revolution.

proc vIso*(this: Geom_SurfaceOfRevolution, V: cdouble): handle[Geom_Curve]  {.importcpp: "VIso".}
    ## Computes the U isoparametric curve of this surface of revolution. It
    ## is the curve obtained by rotating the meridian through an angle U
    ## about the axis of revolution.

proc d0*(this: Geom_SurfaceOfRevolution, U: cdouble, V: cdouble, P: var gp_Pnt)  {.importcpp: "D0".}
    ## Computes the point P (U, V) on the surface. U is the angle of the
    ## rotation around the revolution axis. The direction of this axis gives
    ## the sense of rotation. V is the parameter of the revolved curve.

proc d1*(this: Geom_SurfaceOfRevolution, U: cdouble, V: cdouble, P: var gp_Pnt, D1U: var gp_Vec, D1V: var gp_Vec)  {.importcpp: "D1".}
    ## Computes the current point and the first derivatives in the directions
    ## U and V. Raised if the continuity of the surface is not C1.

proc d2*(this: Geom_SurfaceOfRevolution, U: cdouble, V: cdouble, P: var gp_Pnt, D1U: var gp_Vec, D1V: var gp_Vec, D2U: var gp_Vec, D2V: var gp_Vec, D2UV: var gp_Vec)  {.importcpp: "D2".}
    ## Computes the current point, the first and the second derivatives in
    ## the directions U and V. Raised if the continuity of the surface is not
    ## C2.

proc d3*(this: Geom_SurfaceOfRevolution, U: cdouble, V: cdouble, P: var gp_Pnt, D1U: var gp_Vec, D1V: var gp_Vec, D2U: var gp_Vec, D2V: var gp_Vec, D2UV: var gp_Vec, D3U: var gp_Vec, D3V: var gp_Vec, D3UUV: var gp_Vec, D3UVV: var gp_Vec)  {.importcpp: "D3".}
    ## Computes the current point, the first,the second and the third
    ## derivatives in the directions U and V. Raised if the continuity of the
    ## surface is not C3.

proc dN*(this: Geom_SurfaceOfRevolution, U: cdouble, V: cdouble, Nu: cint, Nv: cint): gp_Vec  {.importcpp: "DN".}
    ## Computes the derivative of order Nu in the direction u and Nv in the
    ## direction v.

proc transform*(this: var Geom_SurfaceOfRevolution, T: gp_Trsf)  {.importcpp: "Transform".}
    ## Applies the transformation T to this surface of revolution.

proc copy*(this: Geom_SurfaceOfRevolution): handle[Geom_Geometry]  {.importcpp: "Copy".}
    ## Creates a new object which is a copy of this surface of revolution.

proc dumpJson*(this: Geom_SurfaceOfRevolution, theOStream: var Standard_OStream, theDepth: cint = 1)  {.importcpp: "DumpJson".}
    ## Dumps the content of me into the stream

proc get_type_name*(this: var Geom_SurfaceOfRevolution): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Geom_SurfaceOfRevolution): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: Geom_SurfaceOfRevolution): handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.}  # header: "Geom_SurfaceOfRevolution.hxx"
