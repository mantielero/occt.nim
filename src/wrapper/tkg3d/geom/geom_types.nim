type
  HandleGeomAxis1Placement* = Handle[GeomAxis1Placement]
## ! Describes an axis in 3D space.
## ! An axis is defined by:
## ! - its origin, also termed the "Location point" of the axis,
## ! - its unit vector, termed the "Direction" of the axis.
## ! Note: Geom_Axis1Placement axes provide the
## ! same kind of "geometric" services as gp_Ax1 axes
## ! but have more complex data structures. The
## ! geometric objects provided by the Geom package
## ! use gp_Ax1 objects to include axes in their data
## ! structures, or to define an axis of symmetry or axis of rotation.
## ! Geom_Axis1Placement axes are used in a context
## ! where they can be shared by several objects
## ! contained inside a common data structure.
type
  GeomAxis1Placement* {.importcpp: "Geom_Axis1Placement",
                       header: "Geom_Axis1Placement.hxx", bycopy.} = object of GeomAxisPlacement ##
                                                                                          ## !
                                                                                          ## Returns
                                                                                          ## a
                                                                                          ## transient
                                                                                          ## copy
                                                                                          ## of
                                                                                          ## A1.
type
  HandleGeomAxis2Placement* = Handle[GeomAxis2Placement]
## ! Describes a right-handed coordinate system in 3D space.
## ! A coordinate system is defined by:
## ! - its origin, also termed the "Location point" of the coordinate system,
## ! - three orthogonal unit vectors, termed respectively
## ! the "X Direction", "Y Direction" and "Direction" (or
## ! "main Direction") of the coordinate system.
## ! As a Geom_Axis2Placement coordinate system is
## ! right-handed, its "Direction" is always equal to the
## ! cross product of its "X Direction" and "Y Direction".
## ! The "Direction" of a coordinate system is called the
## ! "main Direction" because when this unit vector is
## ! modified, the "X Direction" and "Y Direction" are
## ! recomputed, whereas when the "X Direction" or "Y
## ! Direction" is changed, the "main Direction" is
## ! retained. The "main Direction" is also the "Z Direction".
## ! Note: Geom_Axis2Placement coordinate systems
## ! provide the same kind of "geometric" services as
## ! gp_Ax2 coordinate systems but have more complex
## ! data structures. The geometric objects provided by
## ! the Geom package use gp_Ax2 objects to include
## ! coordinate systems in their data structures, or to
## ! define the geometric transformations, which are applied to them.
## ! Geom_Axis2Placement coordinate systems are
## ! used in a context where they can be shared by
## ! several objects contained inside a common data structure.
type
  GeomAxis2Placement* {.importcpp: "Geom_Axis2Placement",
                       header: "Geom_Axis2Placement.hxx", bycopy.} = object of GeomAxisPlacement ##
                                                                                          ## !
                                                                                          ## Returns
                                                                                          ## a
                                                                                          ## transient
                                                                                          ## copy
                                                                                          ## of
                                                                                          ## A2.
type
  HandleGeomAxisPlacement* = Handle[GeomAxisPlacement]
## ! The abstract class AxisPlacement describes the
## ! common behavior of positioning systems in 3D space,
## ! such as axis or coordinate systems.
## ! The Geom package provides two implementations of
## ! 3D positioning systems:
## ! - the axis (Geom_Axis1Placement class), which is defined by:
## ! - its origin, also termed the "Location point" of the  axis,
## ! - its unit vector, termed the "Direction" or "main
## ! Direction" of the axis;
## ! - the right-handed coordinate system
## ! (Geom_Axis2Placement class), which is defined by:
## ! - its origin, also termed the "Location point" of the coordinate system,
## ! - three orthogonal unit vectors, termed
## ! respectively the "X Direction", the "Y Direction"
## ! and the "Direction" of the coordinate system. As
## ! the coordinate system is right-handed, these
## ! unit vectors have the following relation:
## ! "Direction" = "X Direction" ^
## ! "Y Direction". The "Direction" is also
## ! called the "main Direction" because, when the
## ! unit vector is modified, the "X Direction" and "Y
## ! Direction" are recomputed, whereas when the "X
## ! Direction" or "Y Direction" is modified, the "main Direction" does not change.
## ! The axis whose origin is the origin of the positioning
## ! system and whose unit vector is its "main Direction" is
## ! also called the "Axis" or "main Axis" of the positioning system.
type
  GeomAxisPlacement* {.importcpp: "Geom_AxisPlacement",
                      header: "Geom_AxisPlacement.hxx", bycopy.} = object of GeomGeometry ##
                                                                                   ## !
                                                                                   ## Assigns
                                                                                   ## A1
                                                                                   ## as
                                                                                   ## the
                                                                                   ## "main
                                                                                   ## Axis"
                                                                                   ## of
                                                                                   ## this
                                                                                   ## positioning
                                                                                   ## system.
                                                                                   ## This
                                                                                   ## modifies
                                                                                   ##
                                                                                   ## !
                                                                                   ## -
                                                                                   ## its
                                                                                   ## origin,
                                                                                   ## and
                                                                                   ##
                                                                                   ## !
                                                                                   ## -
                                                                                   ## its
                                                                                   ## "main
                                                                                   ## Direction".
                                                                                   ##
                                                                                   ## !
                                                                                   ## If
                                                                                   ## this
                                                                                   ## positioning
                                                                                   ## system
                                                                                   ## is
                                                                                   ## a
                                                                                   ##
                                                                                   ## !
                                                                                   ## Geom_Axis2Placement,
                                                                                   ## then
                                                                                   ## its
                                                                                   ## "X
                                                                                   ## Direction"
                                                                                   ## and
                                                                                   ##
                                                                                   ## !
                                                                                   ## "Y
                                                                                   ## Direction"
                                                                                   ## are
                                                                                   ## recomputed.
                                                                                   ##
                                                                                   ## !
                                                                                   ## Exceptions
                                                                                   ##
                                                                                   ## !
                                                                                   ## For
                                                                                   ## a
                                                                                   ## Geom_Axis2Placement:
                                                                                   ##
                                                                                   ## !
                                                                                   ## Standard_ConstructionError
                                                                                   ## if
                                                                                   ## A1
                                                                                   ## and
                                                                                   ## the
                                                                                   ##
                                                                                   ## !
                                                                                   ## previous
                                                                                   ## "X
                                                                                   ## Direction"
                                                                                   ## of
                                                                                   ## the
                                                                                   ## coordinate
                                                                                   ## system
                                                                                   ## are
                                                                                   ## parallel.
type
  HandleGeomBezierCurve* = Handle[GeomBezierCurve]
## ! Describes a rational or non-rational Bezier curve
## ! - a non-rational Bezier curve is defined by a table of
## ! poles (also called control points),
## ! - a rational Bezier curve is defined by a table of
## ! poles with varying weights.
## ! These data are manipulated by two parallel arrays:
## ! - the poles table, which is an array of gp_Pnt points, and
## ! - the weights table, which is an array of reals.
## ! The bounds of these arrays are 1 and "the number of "poles" of the curve.
## ! The poles of the curve are "control points" used to deform the curve.
## ! The first pole is the start point of the curve, and the
## ! last pole is the end point of the curve. The segment
## ! that joins the first pole to the second pole is the
## ! tangent to the curve at its start point, and the
## ! segment that joins the last pole to the
## ! second-from-last pole is the tangent to the curve at its end point.
## ! It is more difficult to give a geometric signification to
## ! the weights but they are useful for providing the exact
## ! representations of arcs of a circle or ellipse.
## ! Moreover, if the weights of all poles are equal, the
## ! curve is polynomial; it is therefore a non-rational
## ! curve. The non-rational curve is a special and
## ! frequently used case. The weights are defined and
## ! used only in the case of a rational curve.
## ! The degree of a Bezier curve is equal to the number
## ! of poles, minus 1. It must be greater than or equal to
## ! 1. However, the degree of a Geom_BezierCurve
## ! curve is limited to a value (25) which is defined and
## ! controlled by the system. This value is returned by the function MaxDegree.
## ! The parameter range for a Bezier curve is [ 0, 1 ].
## ! If the first and last control points of the Bezier curve
## ! are the same point then the curve is closed. For
## ! example, to create a closed Bezier curve with four
## ! control points, you have to give the set of control
## ! points P1, P2, P3 and P1.
## ! The continuity of a Bezier curve is infinite.
## ! It is not possible to build a Bezier curve with negative
## ! weights. We consider that a weight value is zero if it
## ! is less than or equal to gp::Resolution(). We
## ! also consider that two weight values W1 and W2 are equal if:
## ! |W2 - W1| <= gp::Resolution().
## ! Warning
## ! - When considering the continuity of a closed Bezier
## ! curve at the junction point, remember that a curve
## ! of this type is never periodic. This means that the
## ! derivatives for the parameter u = 0 have no
## ! reason to be the same as the derivatives for the
## ! parameter u = 1 even if the curve is closed.
## ! - The length of a Bezier curve can be null.
type
  GeomBezierCurve* {.importcpp: "Geom_BezierCurve", header: "Geom_BezierCurve.hxx",
                    bycopy.} = object of GeomBoundedCurve ## ! Creates a non rational Bezier curve with a set of poles
                                                     ## ! CurvePoles.  The weights are defaulted to all being 1.
                                                     ## ! Raises ConstructionError if the number of poles is greater than MaxDegree + 1
                                                     ## ! or lower than 2.
                                                     ## ! Set  poles  to  Poles,  weights to  Weights  (not
                                                     ## ! copied). If Weights is   null  the  curve is    non
                                                     ## ! rational. Create the arrays of coefficients.  Poles
                                                     ## ! and    Weights  are   assumed   to  have the  first
                                                     ## ! coefficient 1.
                                                     ## ! Update rational and closed.
                                                     ## !
                                                     ## ! if nbpoles < 2 or nbboles > MaDegree + 1
type
  HandleGeomBezierSurface* = Handle[GeomBezierSurface]
## ! Describes a rational or non-rational Bezier surface.
## ! - A non-rational Bezier surface is defined by a table
## ! of poles (also known as control points).
## ! - A rational Bezier surface is defined by a table of
## ! poles with varying associated weights.
## ! This data is manipulated using two associative 2D arrays:
## ! - the poles table, which is a 2D array of gp_Pnt, and
## ! - the weights table, which is a 2D array of reals.
## ! The bounds of these arrays are:
## ! - 1 and NbUPoles for the row bounds, where
## ! NbUPoles is the number of poles of the surface
## ! in the u parametric direction, and
## ! - 1 and NbVPoles for the column bounds, where
## ! NbVPoles is the number of poles of the surface
## ! in the v parametric direction.
## ! The poles of the surface, the "control points", are the
## ! points used to shape and reshape the surface. They
## ! comprise a rectangular network of points:
## ! - The points (1, 1), (NbUPoles, 1), (1,
## ! NbVPoles) and (NbUPoles, NbVPoles)
## ! are the four parametric "corners" of the surface.
## ! - The first column of poles and the last column of
## ! poles define two Bezier curves which delimit the
## ! surface in the v parametric direction. These are
## ! the v isoparametric curves corresponding to
## ! values 0 and 1 of the v parameter.
## ! - The first row of poles and the last row of poles
## ! define two Bezier curves which delimit the surface
## ! in the u parametric direction. These are the u
## ! isoparametric curves corresponding to values 0
## ! and 1 of the u parameter.
## ! It is more difficult to define a geometrical significance
## ! for the weights. However they are useful for
## ! representing a quadric surface precisely. Moreover, if
## ! the weights of all the poles are equal, the surface has
## ! a polynomial equation, and hence is a "non-rational surface".
## ! The non-rational surface is a special, but frequently
## ! used, case, where all poles have identical weights.
## ! The weights are defined and used only in the case of
## ! a rational surface. This rational characteristic is
## ! defined in each parametric direction. Hence, a
## ! surface can be rational in the u parametric direction,
## ! and non-rational in the v parametric direction.
## ! Likewise, the degree of a surface is defined in each
## ! parametric direction. The degree of a Bezier surface
## ! in a given parametric direction is equal to the number
## ! of poles of the surface in that parametric direction,
## ! minus 1. This must be greater than or equal to 1.
## ! However, the degree for a Geom_BezierSurface is
## ! limited to a value of (25) which is defined and
## ! controlled by the system. This value is returned by the
## ! function MaxDegree.
## ! The parameter range for a Bezier surface is [ 0, 1 ]
## ! in the two parametric directions.
## ! A Bezier surface can also be closed, or open, in each
## ! parametric direction. If the first row of poles is
## ! identical to the last row of poles, the surface is closed
## ! in the u parametric direction. If the first column of
## ! poles is identical to the last column of poles, the
## ! surface is closed in the v parametric direction.
## ! The continuity of a Bezier surface is infinite in the u
## ! parametric direction and the in v parametric direction.
## ! Note: It is not possible to build a Bezier surface with
## ! negative weights. Any weight value that is less than,
## ! or equal to, gp::Resolution() is considered
## ! to be zero. Two weight values, W1 and W2, are
## ! considered equal if: |W2-W1| <= gp::Resolution()
type
  GeomBezierSurface* {.importcpp: "Geom_BezierSurface",
                      header: "Geom_BezierSurface.hxx", bycopy.} = object of GeomBoundedSurface ##
                                                                                         ## !
                                                                                         ## Creates
                                                                                         ## a
                                                                                         ## non-rational
                                                                                         ## Bezier
                                                                                         ## surface
                                                                                         ## with
                                                                                         ## a
                                                                                         ## set
                                                                                         ## of
                                                                                         ## poles.
                                                                                         ##
                                                                                         ## !
                                                                                         ## Control
                                                                                         ## points
                                                                                         ## representation
                                                                                         ## :
                                                                                         ##
                                                                                         ## !
                                                                                         ## SPoles(Uorigin,Vorigin)
                                                                                         ## ...................SPoles(Uorigin,Vend)
                                                                                         ##
                                                                                         ## !
                                                                                         ## .
                                                                                         ## .
                                                                                         ##
                                                                                         ## !
                                                                                         ## .
                                                                                         ## .
                                                                                         ##
                                                                                         ## !
                                                                                         ## SPoles(Uend,
                                                                                         ## Vorigin)
                                                                                         ## .....................SPoles(Uend,
                                                                                         ## Vend)
                                                                                         ##
                                                                                         ## !
                                                                                         ## For
                                                                                         ## the
                                                                                         ## double
                                                                                         ## array
                                                                                         ## the
                                                                                         ## row
                                                                                         ## indice
                                                                                         ## corresponds
                                                                                         ## to
                                                                                         ## the
                                                                                         ## parametric
                                                                                         ##
                                                                                         ## !
                                                                                         ## U
                                                                                         ## direction
                                                                                         ## and
                                                                                         ## the
                                                                                         ## columns
                                                                                         ## indice
                                                                                         ## corresponds
                                                                                         ## to
                                                                                         ## the
                                                                                         ## parametric
                                                                                         ##
                                                                                         ## !
                                                                                         ## V
                                                                                         ## direction.
                                                                                         ##
                                                                                         ## !
                                                                                         ## The
                                                                                         ## weights
                                                                                         ## are
                                                                                         ## defaulted
                                                                                         ## to
                                                                                         ## all
                                                                                         ## being
                                                                                         ## 1.
                                                                                         ##
                                                                                         ## !
                                                                                         ##
                                                                                         ## !
                                                                                         ## Raised
                                                                                         ## if
                                                                                         ## the
                                                                                         ## number
                                                                                         ## of
                                                                                         ## poles
                                                                                         ## of
                                                                                         ## the
                                                                                         ## surface
                                                                                         ## is
                                                                                         ## lower
                                                                                         ## than
                                                                                         ## 2
                                                                                         ##
                                                                                         ## !
                                                                                         ## or
                                                                                         ## greater
                                                                                         ## than
                                                                                         ## MaxDegree
                                                                                         ## +
                                                                                         ## 1
                                                                                         ## in
                                                                                         ## one
                                                                                         ## of
                                                                                         ## the
                                                                                         ## two
                                                                                         ## directions
                                                                                         ##
                                                                                         ## !
                                                                                         ## U
                                                                                         ## or
                                                                                         ## V.
type
  HandleGeomBoundedCurve* = Handle[GeomBoundedCurve]
## ! The abstract class BoundedCurve describes the
## ! common behavior of bounded curves in 3D space. A
## ! bounded curve is limited by two finite values of the
## ! parameter, termed respectively "first parameter" and
## ! "last parameter". The "first parameter" gives the "start
## ! point" of the bounded curve, and the "last parameter"
## ! gives the "end point" of the bounded curve.
## ! The length of a bounded curve is finite.
## ! The Geom package provides three concrete classes of bounded curves:
## ! - two frequently used mathematical formulations of complex curves:
## ! - Geom_BezierCurve,
## ! - Geom_BSplineCurve, and
## ! - Geom_TrimmedCurve to trim a curve, i.e. to only
## ! take part of the curve limited by two values of the
## ! parameter of the basis curve.
type
  GeomBoundedCurve* {.importcpp: "Geom_BoundedCurve",
                     header: "Geom_BoundedCurve.hxx", bycopy.} = object of GeomCurve ## !
                                                                              ## Returns
                                                                              ## the
                                                                              ## end
                                                                              ## point of
                                                                              ## the
                                                                              ## curve.
type
  HandleGeomBoundedSurface* = Handle[GeomBoundedSurface]
## ! The root class for bounded surfaces in 3D space. A
## ! bounded surface is defined by a rectangle in its 2D parametric space, i.e.
## ! - its u parameter, which ranges between two finite
## ! values u0 and u1, referred to as "First u
## ! parameter" and "Last u parameter" respectively, and
## ! - its v parameter, which ranges between two finite
## ! values v0 and v1, referred to as "First v
## ! parameter" and the "Last v parameter" respectively.
## ! The surface is limited by four curves which are the
## ! boundaries of the surface:
## ! - its u0 and u1 isoparametric curves in the u parametric direction, and
## ! - its v0 and v1 isoparametric curves in the v parametric direction.
## ! A bounded surface is finite.
## ! The common behavior of all bounded surfaces is
## ! described by the Geom_Surface class.
## ! The Geom package provides three concrete
## ! implementations of bounded surfaces:
## ! - Geom_BezierSurface,
## ! - Geom_BSplineSurface, and
## ! - Geom_RectangularTrimmedSurface.
## ! The first two of these implement well known
## ! mathematical definitions of complex surfaces, the third
## ! trims a surface using four isoparametric curves, i.e. it
## ! limits the variation of its parameters to a rectangle in
## ! 2D parametric space.
type
  GeomBoundedSurface* {.importcpp: "Geom_BoundedSurface",
                       header: "Geom_BoundedSurface.hxx", bycopy.} = object of GeomSurface
type
  HandleGeomBSplineCurve* = Handle[GeomBSplineCurve]
## ! Definition of the B_spline curve.
## ! A B-spline curve can be
## ! Uniform  or non-uniform
## ! Rational or non-rational
## ! Periodic or non-periodic
## !
## ! a b-spline curve is defined by :
## ! its degree; the degree for a
## ! Geom_BSplineCurve is limited to a value (25)
## ! which is defined and controlled by the system.
## ! This value is returned by the function MaxDegree;
## ! - its periodic or non-periodic nature;
## ! - a table of poles (also called control points), with
## ! their associated weights if the BSpline curve is
## ! rational. The poles of the curve are "control
## ! points" used to deform the curve. If the curve is
## ! non-periodic, the first pole is the start point of
## ! the curve, and the last pole is the end point of
## ! the curve. The segment which joins the first pole
## ! to the second pole is the tangent to the curve at
## ! its start point, and the segment which joins the
## ! last pole to the second-from-last pole is the
## ! tangent to the curve at its end point. If the curve
## ! is periodic, these geometric properties are not
## ! verified. It is more difficult to give a geometric
## ! signification to the weights but are useful for
## ! providing exact representations of the arcs of a
## ! circle or ellipse. Moreover, if the weights of all the
## ! poles are equal, the curve has a polynomial
## ! equation; it is therefore a non-rational curve.
## ! - a table of knots with their multiplicities. For a
## ! Geom_BSplineCurve, the table of knots is an
## ! increasing sequence of reals without repetition;
## ! the multiplicities define the repetition of the knots.
## ! A BSpline curve is a piecewise polynomial or
## ! rational curve. The knots are the parameters of
## ! junction points between two pieces. The
## ! multiplicity Mult(i) of the knot Knot(i) of
## ! the BSpline curve is related to the degree of
## ! continuity of the curve at the knot Knot(i),
## ! which is equal to Degree - Mult(i)
## ! where Degree is the degree of the BSpline curve.
## ! If the knots are regularly spaced (i.e. the difference
## ! between two consecutive knots is a constant), three
## ! specific and frequently used cases of knot
## ! distribution can be identified:
## ! - "uniform" if all multiplicities are equal to 1,
## ! - "quasi-uniform" if all multiplicities are equal to 1,
## ! except the first and the last knot which have a
## ! multiplicity of Degree + 1, where Degree is
## ! the degree of the BSpline curve,
## ! - "Piecewise Bezier" if all multiplicities are equal to
## ! Degree except the first and last knot which
## ! have a multiplicity of Degree + 1, where
## ! Degree is the degree of the BSpline curve. A
## ! curve of this type is a concatenation of arcs of Bezier curves.
## ! If the BSpline curve is not periodic:
## ! - the bounds of the Poles and Weights tables are 1
## ! and NbPoles, where NbPoles is the number
## ! of poles of the BSpline curve,
## ! - the bounds of the Knots and Multiplicities tables
## ! are 1 and NbKnots, where NbKnots is the
## ! number of knots of the BSpline curve.
## ! If the BSpline curve is periodic, and if there are k
## ! periodic knots and p periodic poles, the period is:
## ! period = Knot(k + 1) - Knot(1)
## ! and the poles and knots tables can be considered
## ! as infinite tables, verifying:
## ! - Knot(i+k) = Knot(i) + period
## ! - Pole(i+p) = Pole(i)
## ! Note: data structures of a periodic BSpline curve
## ! are more complex than those of a non-periodic one.
## ! Warning
## ! In this class, weight value is considered to be zero if
## ! the weight is less than or equal to gp::Resolution().
## !
## ! References :
## ! . A survey of curve and surface methods in CADG Wolfgang BOHM
## ! CAGD 1 (1984)
## ! . On de Boor-like algorithms and blossoming Wolfgang BOEHM
## ! cagd 5 (1988)
## ! . Blossoming and knot insertion algorithms for B-spline curves
## ! Ronald N. GOLDMAN
## ! . Modelisation des surfaces en CAO, Henri GIAUME Peugeot SA
## ! . Curves and Surfaces for Computer Aided Geometric Design,
## ! a practical guide Gerald Farin
type
  GeomBSplineCurve* {.importcpp: "Geom_BSplineCurve",
                     header: "Geom_BSplineCurve.hxx", bycopy.} = object of GeomBoundedCurve ##
                                                                                     ## !
                                                                                     ## Creates
                                                                                     ## a
                                                                                     ## non-rational
                                                                                     ## B_spline
                                                                                     ## curve
                                                                                     ## on
                                                                                     ## the
                                                                                     ##
                                                                                     ## !
                                                                                     ## basis
                                                                                     ## <Knots,
                                                                                     ## Multiplicities>
                                                                                     ## of
                                                                                     ## degree
                                                                                     ## <Degree>.
                                                                                     ##
                                                                                     ## !
                                                                                     ## Recompute
                                                                                     ## the
                                                                                     ## flatknots,
                                                                                     ## the
                                                                                     ## knotsdistribution,
                                                                                     ## the
                                                                                     ## continuity.
type
  HandleGeomBSplineSurface* = Handle[GeomBSplineSurface]
## ! Describes a BSpline surface.
## ! In each parametric direction, a BSpline surface can be:
## ! - uniform or non-uniform,
## ! - rational or non-rational,
## ! - periodic or non-periodic.
## ! A BSpline surface is defined by:
## ! - its degrees, in the u and v parametric directions,
## ! - its periodic characteristic, in the u and v parametric directions,
## ! - a table of poles, also called control points (together
## ! with the associated weights if the surface is rational), and
## ! - a table of knots, together with the associated multiplicities.
## ! The degree of a Geom_BSplineSurface is limited to
## ! a value (25) which is defined and controlled by the
## ! system. This value is returned by the function MaxDegree.
## ! Poles and Weights
## ! Poles and Weights are manipulated using two associative double arrays:
## ! - the poles table, which is a double array of gp_Pnt points, and
## ! - the weights table, which is a double array of reals.
## ! The bounds of the poles and weights arrays are:
## ! - 1 and NbUPoles for the row bounds (provided
## ! that the BSpline surface is not periodic in the u
## ! parametric direction), where NbUPoles is the
## ! number of poles of the surface in the u parametric direction, and
## ! - 1 and NbVPoles for the column bounds (provided
## ! that the BSpline surface is not periodic in the v
## ! parametric direction), where NbVPoles is the
## ! number of poles of the surface in the v parametric direction.
## ! The poles of the surface are the points used to shape
## ! and reshape the surface. They comprise a rectangular network.
## ! If the surface is not periodic:
## ! - The points (1, 1), (NbUPoles, 1), (1,
## ! NbVPoles), and (NbUPoles, NbVPoles)
## ! are the four parametric "corners" of the surface.
## ! - The first column of poles and the last column of
## ! poles define two BSpline curves which delimit the
## ! surface in the v parametric direction. These are the
## ! v isoparametric curves corresponding to the two
## ! bounds of the v parameter.
## ! - The first row of poles and the last row of poles
## ! define two BSpline curves which delimit the surface
## ! in the u parametric direction. These are the u
## ! isoparametric curves corresponding to the two bounds of the u parameter.
## ! If the surface is periodic, these geometric properties are not verified.
## ! It is more difficult to define a geometrical significance
## ! for the weights. However they are useful for
## ! representing a quadric surface precisely. Moreover, if
## ! the weights of all the poles are equal, the surface has
## ! a polynomial equation, and hence is a "non-rational surface".
## ! The non-rational surface is a special, but frequently
## ! used, case, where all poles have identical weights.
## ! The weights are defined and used only in the case of
## ! a rational surface. The rational characteristic is
## ! defined in each parametric direction. A surface can be
## ! rational in the u parametric direction, and
## ! non-rational in the v parametric direction.
## ! Knots and Multiplicities
## ! For a Geom_BSplineSurface the table of knots is
## ! made up of two increasing sequences of reals, without
## ! repetition, one for each parametric direction. The
## ! multiplicities define the repetition of the knots.
## ! A BSpline surface comprises multiple contiguous
## ! patches, which are themselves polynomial or rational
## ! surfaces. The knots are the parameters of the
## ! isoparametric curves which limit these contiguous
## ! patches. The multiplicity of a knot on a BSpline
## ! surface (in a given parametric direction) is related to
## ! the degree of continuity of the surface at that knot in
## ! that parametric direction:
## ! Degree of continuity at knot(i) = Degree - Multi(i) where:
## ! - Degree is the degree of the BSpline surface in
## ! the given parametric direction, and
## ! - Multi(i) is the multiplicity of knot number i in
## ! the given parametric direction.
## ! There are some special cases, where the knots are
## ! regularly spaced in one parametric direction (i.e. the
## ! difference between two consecutive knots is a constant).
## ! - "Uniform": all the multiplicities are equal to 1.
## ! - "Quasi-uniform": all the multiplicities are equal to 1,
## ! except for the first and last knots in this parametric
## ! direction, and these are equal to Degree + 1.
## ! - "Piecewise Bezier": all the multiplicities are equal to
## ! Degree except for the first and last knots, which
## ! are equal to Degree + 1. This surface is a
## ! concatenation of Bezier patches in the given
## ! parametric direction.
## ! If the BSpline surface is not periodic in a given
## ! parametric direction, the bounds of the knots and
## ! multiplicities tables are 1 and NbKnots, where
## ! NbKnots is the number of knots of the BSpline
## ! surface in that parametric direction.
## ! If the BSpline surface is periodic in a given parametric
## ! direction, and there are k periodic knots and p
## ! periodic poles in that parametric direction:
## ! - the period is such that:
## ! period = Knot(k+1) - Knot(1), and
## ! - the poles and knots tables in that parametric
## ! direction can be considered as infinite tables, such that:
## ! Knot(i+k) = Knot(i) + period, and
## ! Pole(i+p) = Pole(i)
## ! Note: The data structure tables for a periodic BSpline
## ! surface are more complex than those of a non-periodic one.
## ! References :
## ! . A survey of curve and surface methods in CADG Wolfgang BOHM
## ! CAGD 1 (1984)
## ! . On de Boor-like algorithms and blossoming Wolfgang BOEHM
## ! cagd 5 (1988)
## ! . Blossoming and knot insertion algorithms for B-spline curves
## ! Ronald N. GOLDMAN
## ! . Modelisation des surfaces en CAO, Henri GIAUME Peugeot SA
## ! . Curves and Surfaces for Computer Aided Geometric Design,
## ! a practical guide Gerald Farin
type
  GeomBSplineSurface* {.importcpp: "Geom_BSplineSurface",
                       header: "Geom_BSplineSurface.hxx", bycopy.} = object of GeomBoundedSurface ##
                                                                                           ## !
                                                                                           ## Creates
                                                                                           ## a
                                                                                           ## non-rational
                                                                                           ## b-spline
                                                                                           ## surface
                                                                                           ## (weights
                                                                                           ##
                                                                                           ## !
                                                                                           ## default
                                                                                           ## value
                                                                                           ## is
                                                                                           ## 1.).
                                                                                           ##
                                                                                           ## !
                                                                                           ## The
                                                                                           ## following
                                                                                           ## conditions
                                                                                           ## must
                                                                                           ## be
                                                                                           ## verified.
                                                                                           ##
                                                                                           ## !
                                                                                           ## 0
                                                                                           ## <
                                                                                           ## UDegree
                                                                                           ## <=
                                                                                           ## MaxDegree.
                                                                                           ##
                                                                                           ## !
                                                                                           ## UKnots.Length()
                                                                                           ## ==
                                                                                           ## UMults.Length()
                                                                                           ## >=
                                                                                           ## 2
                                                                                           ##
                                                                                           ## !
                                                                                           ## UKnots(i)
                                                                                           ## <
                                                                                           ## UKnots(i+1)
                                                                                           ## (Knots
                                                                                           ## are
                                                                                           ## increasing)
                                                                                           ##
                                                                                           ## !
                                                                                           ## 1
                                                                                           ## <=
                                                                                           ## UMults(i)
                                                                                           ## <=
                                                                                           ## UDegree
                                                                                           ##
                                                                                           ## !
                                                                                           ## On
                                                                                           ## a
                                                                                           ## non
                                                                                           ## uperiodic
                                                                                           ## surface
                                                                                           ## the
                                                                                           ## first
                                                                                           ## and
                                                                                           ## last
                                                                                           ##
                                                                                           ## !
                                                                                           ## umultiplicities
                                                                                           ## may
                                                                                           ## be
                                                                                           ## UDegree+1
                                                                                           ## (this
                                                                                           ## is
                                                                                           ## even
                                                                                           ##
                                                                                           ## !
                                                                                           ## recommanded
                                                                                           ## if
                                                                                           ## you
                                                                                           ## want
                                                                                           ## the
                                                                                           ## curve
                                                                                           ## to
                                                                                           ## start
                                                                                           ## and
                                                                                           ## finish
                                                                                           ## on
                                                                                           ##
                                                                                           ## !
                                                                                           ## the
                                                                                           ## first
                                                                                           ## and
                                                                                           ## last
                                                                                           ## pole).
                                                                                           ##
                                                                                           ## !
                                                                                           ## On
                                                                                           ## a
                                                                                           ## uperiodic
                                                                                           ## surface
                                                                                           ## the
                                                                                           ## first
                                                                                           ## and
                                                                                           ## the
                                                                                           ## last
                                                                                           ##
                                                                                           ## !
                                                                                           ## umultiplicities
                                                                                           ## must
                                                                                           ## be
                                                                                           ## the
                                                                                           ## same.
                                                                                           ##
                                                                                           ## !
                                                                                           ## on
                                                                                           ## non-uperiodic
                                                                                           ## surfaces
                                                                                           ##
                                                                                           ## !
                                                                                           ## Poles.ColLength()
                                                                                           ## ==
                                                                                           ## Sum(UMults(i))
                                                                                           ## -
                                                                                           ## UDegree
                                                                                           ## -
                                                                                           ## 1
                                                                                           ## >=
                                                                                           ## 2
                                                                                           ##
                                                                                           ## !
                                                                                           ## on
                                                                                           ## uperiodic
                                                                                           ## surfaces
                                                                                           ##
                                                                                           ## !
                                                                                           ## Poles.ColLength()
                                                                                           ## ==
                                                                                           ## Sum(UMults(i))
                                                                                           ## except
                                                                                           ## the
                                                                                           ## first
                                                                                           ## or
                                                                                           ## last
                                                                                           ##
                                                                                           ## !
                                                                                           ## The
                                                                                           ## previous
                                                                                           ## conditions
                                                                                           ## for
                                                                                           ## U
                                                                                           ## holds
                                                                                           ## also
                                                                                           ## for
                                                                                           ## V,
                                                                                           ## with
                                                                                           ## the
                                                                                           ##
                                                                                           ## !
                                                                                           ## RowLength
                                                                                           ## of
                                                                                           ## the
                                                                                           ## poles.
                                                                                           ##
                                                                                           ## !
                                                                                           ## Segments
                                                                                           ## the
                                                                                           ## surface
                                                                                           ## between
                                                                                           ## U1
                                                                                           ## and
                                                                                           ## U2
                                                                                           ## in
                                                                                           ## the
                                                                                           ## U-Direction.
                                                                                           ##
                                                                                           ## !
                                                                                           ## between
                                                                                           ## V1
                                                                                           ## and
                                                                                           ## V2
                                                                                           ## in
                                                                                           ## the
                                                                                           ## V-Direction.
                                                                                           ##
                                                                                           ## !
                                                                                           ## The
                                                                                           ## control
                                                                                           ## points
                                                                                           ## are
                                                                                           ## modified,
                                                                                           ## the
                                                                                           ## first
                                                                                           ## and
                                                                                           ## the
                                                                                           ## last
                                                                                           ## point
                                                                                           ##
                                                                                           ## !
                                                                                           ## are
                                                                                           ## not
                                                                                           ## the
                                                                                           ## same.
                                                                                           ##
                                                                                           ## !
                                                                                           ##
                                                                                           ## !
                                                                                           ## Parameters
                                                                                           ## EpsU,
                                                                                           ## EpsV
                                                                                           ## define
                                                                                           ## the
                                                                                           ## proximity
                                                                                           ## along
                                                                                           ## U-Direction
                                                                                           ## and
                                                                                           ## V-Direction
                                                                                           ## respectively.
                                                                                           ##
                                                                                           ## !
                                                                                           ## Recompute
                                                                                           ## the
                                                                                           ## flatknots,
                                                                                           ## the
                                                                                           ## knotsdistribution,
                                                                                           ## the
                                                                                           ##
                                                                                           ## !
                                                                                           ## continuity
                                                                                           ## for
                                                                                           ## U.
type
  HandleGeomCartesianPoint* = Handle[GeomCartesianPoint]
## ! Describes a point in 3D space. A
## ! Geom_CartesianPoint is defined by a gp_Pnt point,
## ! with its three Cartesian coordinates X, Y and Z.
type
  GeomCartesianPoint* {.importcpp: "Geom_CartesianPoint",
                       header: "Geom_CartesianPoint.hxx", bycopy.} = object of GeomPoint ##
                                                                                  ## !
                                                                                  ## Returns
                                                                                  ## a
                                                                                  ## transient
                                                                                  ## copy
                                                                                  ## of
                                                                                  ## P.
type
  HandleGeomCircle* = Handle[GeomCircle]
## ! Describes a circle in 3D space.
## ! A circle is defined by its radius and, as with any conic
## ! curve, is positioned in space with a right-handed
## ! coordinate system (gp_Ax2 object) where:
## ! - the origin is the center of the circle, and
## ! - the origin, "X Direction" and "Y Direction" define the
## ! plane of the circle.
## ! This coordinate system is the local coordinate
## ! system of the circle.
## ! The "main Direction" of this coordinate system is the
## ! vector normal to the plane of the circle. The axis, of
## ! which the origin and unit vector are respectively the
## ! origin and "main Direction" of the local coordinate
## ! system, is termed the "Axis" or "main Axis" of the circle.
## ! The "main Direction" of the local coordinate system
## ! gives an explicit orientation to the circle (definition of
## ! the trigonometric sense), determining the direction in
## ! which the parameter increases along the circle.
## ! The Geom_Circle circle is parameterized by an angle:
## ! P(U) = O + R*Cos(U)*XDir + R*Sin(U)*YDir, where:
## ! - P is the point of parameter U,
## ! - O, XDir and YDir are respectively the origin, "X
## ! Direction" and "Y Direction" of its local coordinate system,
## ! - R is the radius of the circle.
## ! The "X Axis" of the local coordinate system therefore
## ! defines the origin of the parameter of the circle. The
## ! parameter is the angle with this "X Direction".
## ! A circle is a closed and periodic curve. The period is
## ! 2.*Pi and the parameter range is [ 0, 2.*Pi [.
type
  GeomCircle* {.importcpp: "Geom_Circle", header: "Geom_Circle.hxx", bycopy.} = object of GeomConic ##
                                                                                          ## !
                                                                                          ## Constructs
                                                                                          ## a
                                                                                          ## circle
                                                                                          ## by
                                                                                          ## conversion
                                                                                          ## of
                                                                                          ## the
                                                                                          ## gp_Circ
                                                                                          ## circle
                                                                                          ## C.
type
  HandleGeomConic* = Handle[GeomConic]
## ! The abstract class Conic describes the common
## ! behavior of conic curves in 3D space and, in
## ! particular, their general characteristics. The Geom
## ! package provides four concrete classes of conics:
## ! Geom_Circle, Geom_Ellipse, Geom_Hyperbola and Geom_Parabola.
## ! A conic is positioned in space with a right-handed
## ! coordinate system (gp_Ax2 object), where:
## ! - the origin is the center of the conic (or the apex in
## ! the case of a parabola),
## ! - the origin, "X Direction" and "Y Direction" define the
## ! plane of the conic.
## ! This coordinate system is the local coordinate
## ! system of the conic.
## ! The "main Direction" of this coordinate system is the
## ! vector normal to the plane of the conic. The axis, of
## ! which the origin and unit vector are respectively the
## ! origin and "main Direction" of the local coordinate
## ! system, is termed the "Axis" or "main Axis" of the conic.
## ! The "main Direction" of the local coordinate system
## ! gives an explicit orientation to the conic, determining
## ! the direction in which the parameter increases along
## ! the conic. The "X Axis" of the local coordinate system
## ! also defines the origin of the parameter of the conic.
type
  GeomConic* {.importcpp: "Geom_Conic", header: "Geom_Conic.hxx", bycopy.} = object of GeomCurve ##
                                                                                       ## !
                                                                                       ## Changes
                                                                                       ## the
                                                                                       ## orientation
                                                                                       ## of
                                                                                       ## the
                                                                                       ## conic's
                                                                                       ## plane.
                                                                                       ## The
                                                                                       ## normal
                                                                                       ##
                                                                                       ## !
                                                                                       ## axis
                                                                                       ## to
                                                                                       ## the
                                                                                       ## plane
                                                                                       ## is
                                                                                       ## A1.
                                                                                       ## The
                                                                                       ## XAxis
                                                                                       ## and
                                                                                       ## the
                                                                                       ## YAxis
                                                                                       ## are
                                                                                       ## recomputed.
                                                                                       ##
                                                                                       ## !
                                                                                       ##
                                                                                       ## !
                                                                                       ## raised
                                                                                       ## if
                                                                                       ## the
                                                                                       ## A1
                                                                                       ## is
                                                                                       ## parallel
                                                                                       ## to
                                                                                       ## the
                                                                                       ## XAxis
                                                                                       ## of
                                                                                       ## the
                                                                                       ## conic.
type
  HandleGeomConicalSurface* = Handle[GeomConicalSurface]
## ! Describes a cone.
## ! A cone is defined by the half-angle (can be negative) at its apex, and
## ! is positioned in space by a coordinate system (a
## ! gp_Ax3 object) and a reference radius as follows:
## ! - The "main Axis" of the coordinate system is the
## ! axis of revolution of the cone.
## ! - The plane defined by the origin, the "X Direction"
## ! and the "Y Direction" of the coordinate system is
## ! the reference plane of the cone. The intersection
## ! of the cone with this reference plane is a circle of
## ! radius equal to the reference radius.
## ! - The apex of the cone is on the negative side of
## ! the "main Axis" of the coordinate system if the
## ! half-angle is positive, and on the positive side if
## ! the half-angle is negative.
## ! This coordinate system is the "local coordinate
## ! system" of the cone. The following apply:
## ! - Rotation around its "main Axis", in the
## ! trigonometric sense given by the "X Direction"
## ! and the "Y Direction", defines the u parametric direction.
## ! - Its "X Axis" gives the origin for the u parameter.
## ! - Its "main Direction" is the v parametric direction of the cone.
## ! - Its origin is the origin of the v parameter.
## ! The parametric range of the two parameters is:
## ! - [ 0, 2.*Pi ] for u, and - ] -infinity, +infinity [ for v
## ! The parametric equation of the cone is:  P(u, v) =
## ! O + (R + v*sin(Ang)) * (cos(u)*XDir + sin(u)*YDir) + v*cos(Ang)*ZDir where:
## ! - O, XDir, YDir and ZDir are respectively
## ! the origin, the "X Direction", the "Y Direction" and
## ! the "Z Direction" of the cone's local coordinate system,
## ! - Ang is the half-angle at the apex of the cone,   and
## ! - R is the reference radius.
type
  GeomConicalSurface* {.importcpp: "Geom_ConicalSurface",
                       header: "Geom_ConicalSurface.hxx", bycopy.} = object of GeomElementarySurface ##
                                                                                              ## !
                                                                                              ## A3
                                                                                              ## defines
                                                                                              ## the
                                                                                              ## local
                                                                                              ## coordinate
                                                                                              ## system
                                                                                              ## of
                                                                                              ## the
                                                                                              ## conical
                                                                                              ## surface.
                                                                                              ##
                                                                                              ## !
                                                                                              ## Ang
                                                                                              ## is
                                                                                              ## the
                                                                                              ## conical
                                                                                              ## surface
                                                                                              ## semi-angle.
                                                                                              ## Its
                                                                                              ## absolute
                                                                                              ## value
                                                                                              ## is
                                                                                              ## in
                                                                                              ## range
                                                                                              ##
                                                                                              ## !
                                                                                              ## ]0,
                                                                                              ## PI/2[.
                                                                                              ##
                                                                                              ## !
                                                                                              ## Radius
                                                                                              ## is
                                                                                              ## the
                                                                                              ## radius
                                                                                              ## of
                                                                                              ## the
                                                                                              ## circle
                                                                                              ## Viso
                                                                                              ## in
                                                                                              ## the
                                                                                              ## placement
                                                                                              ## plane
                                                                                              ##
                                                                                              ## !
                                                                                              ## of
                                                                                              ## the
                                                                                              ## conical
                                                                                              ## surface
                                                                                              ## defined
                                                                                              ## with
                                                                                              ## "XAxis"
                                                                                              ## and
                                                                                              ## "YAxis".
                                                                                              ##
                                                                                              ## !
                                                                                              ## The
                                                                                              ## "ZDirection"
                                                                                              ## of
                                                                                              ## A3
                                                                                              ## defines
                                                                                              ## the
                                                                                              ## direction
                                                                                              ## of
                                                                                              ## the
                                                                                              ## surface's
                                                                                              ##
                                                                                              ## !
                                                                                              ## axis
                                                                                              ## of
                                                                                              ## symmetry.
                                                                                              ##
                                                                                              ## !
                                                                                              ## If
                                                                                              ## the
                                                                                              ## location
                                                                                              ## point
                                                                                              ## of
                                                                                              ## A3
                                                                                              ## is
                                                                                              ## the
                                                                                              ## apex
                                                                                              ## of
                                                                                              ## the
                                                                                              ## surface
                                                                                              ##
                                                                                              ## !
                                                                                              ## Radius
                                                                                              ## =
                                                                                              ## 0
                                                                                              ## .
                                                                                              ##
                                                                                              ## !
                                                                                              ## At
                                                                                              ## the
                                                                                              ## creation
                                                                                              ## the
                                                                                              ## parametrization
                                                                                              ## of
                                                                                              ## the
                                                                                              ## surface
                                                                                              ## is
                                                                                              ## defined
                                                                                              ##
                                                                                              ## !
                                                                                              ## such
                                                                                              ## that
                                                                                              ## the
                                                                                              ## normal
                                                                                              ## Vector
                                                                                              ## (N
                                                                                              ## =
                                                                                              ## D1U
                                                                                              ## ^
                                                                                              ## D1V)
                                                                                              ## is
                                                                                              ## oriented
                                                                                              ## towards
                                                                                              ##
                                                                                              ## !
                                                                                              ## the
                                                                                              ## "outside
                                                                                              ## region"
                                                                                              ## of
                                                                                              ## the
                                                                                              ## surface.
                                                                                              ##
                                                                                              ## !
                                                                                              ##
                                                                                              ## !
                                                                                              ## Raised
                                                                                              ## if
                                                                                              ## Radius
                                                                                              ## <
                                                                                              ## 0.0
                                                                                              ## or
                                                                                              ## Abs(Ang)
                                                                                              ## <
                                                                                              ## Resolution
                                                                                              ## from
                                                                                              ## gp
                                                                                              ## or
                                                                                              ##
                                                                                              ## !
                                                                                              ## Abs(Ang)
                                                                                              ## >=
                                                                                              ## PI/2
                                                                                              ## -
                                                                                              ## Resolution
type
  HandleGeomCurve* {.importcpp:"opencascade::handle<Geom_Curve>", header: "Standard_Handle.hxx", bycopy, pure, inheritable.} = object
## ! The abstract class Curve describes the common
## ! behavior of curves in 3D space. The Geom package
## ! provides numerous concrete classes of derived
## ! curves, including lines, circles, conics, Bezier or
## ! BSpline curves, etc.
## ! The main characteristic of these curves is that they
## ! are parameterized. The Geom_Curve class shows:
## ! - how to work with the parametric equation of a curve
## ! in order to calculate the point of parameter u,
## ! together with the vector tangent and the derivative
## ! vectors of order 2, 3,..., N at this point;
## ! - how to obtain general information about the curve
## ! (for example, level of continuity, closed
## ! characteristics, periodicity, bounds of the parameter field);
## ! - how the parameter changes when a geometric
## ! transformation is applied to the curve or when the
## ! orientation of the curve is inverted.
## ! All curves must have a geometric continuity: a curve is
## ! at least "C0". Generally, this property is checked at
## ! the time of construction or when the curve is edited.
## ! Where this is not the case, the documentation states so explicitly.
## ! Warning
## ! The Geom package does not prevent the
## ! construction of curves with null length or curves which
## ! self-intersect.
type
  GeomCurve* {.importcpp: "Geom_Curve", header: "Geom_Curve.hxx", bycopy.} = object of GeomGeometry ##
                                                                                          ## !
                                                                                          ## Changes
                                                                                          ## the
                                                                                          ## direction
                                                                                          ## of
                                                                                          ## parametrization
                                                                                          ## of
                                                                                          ## <me>.
                                                                                          ##
                                                                                          ## !
                                                                                          ## The
                                                                                          ## "FirstParameter"
                                                                                          ## and
                                                                                          ## the
                                                                                          ## "LastParameter"
                                                                                          ## are
                                                                                          ## not
                                                                                          ## changed
                                                                                          ##
                                                                                          ## !
                                                                                          ## but
                                                                                          ## the
                                                                                          ## orientation
                                                                                          ## of
                                                                                          ## the
                                                                                          ## curve
                                                                                          ## is
                                                                                          ## modified.
                                                                                          ## If
                                                                                          ## the
                                                                                          ## curve
                                                                                          ##
                                                                                          ## !
                                                                                          ## is
                                                                                          ## bounded
                                                                                          ## the
                                                                                          ## StartPoint
                                                                                          ## of
                                                                                          ## the
                                                                                          ## initial
                                                                                          ## curve
                                                                                          ## becomes
                                                                                          ## the
                                                                                          ##
                                                                                          ## !
                                                                                          ## EndPoint
                                                                                          ## of
                                                                                          ## the
                                                                                          ## reversed
                                                                                          ## curve
                                                                                          ## and
                                                                                          ## the
                                                                                          ## EndPoint
                                                                                          ## of
                                                                                          ## the
                                                                                          ## initial
                                                                                          ##
                                                                                          ## !
                                                                                          ## curve
                                                                                          ## becomes
                                                                                          ## the
                                                                                          ## StartPoint
                                                                                          ## of
                                                                                          ## the
                                                                                          ## reversed
                                                                                          ## curve.
type
  HandleGeomCylindricalSurface* = Handle[GeomCylindricalSurface]
## ! This class defines the infinite cylindrical surface.
## !
## ! Every cylindrical surface is set by the following equation:
## ! S(U,V) = Location + R*cos(U)*XAxis + R*sin(U)*YAxis + V*ZAxis,
## ! where R is cylinder radius.
## !
## ! The local coordinate system of the CylindricalSurface is defined
## ! with an axis placement (see class ElementarySurface).
## !
## ! The "ZAxis" is the symmetry axis of the CylindricalSurface,
## ! it gives the direction of increasing parametric value V.
## !
## ! The parametrization range is :
## ! U [0, 2*PI],  V ]- infinite, + infinite[
## !
## ! The "XAxis" and the "YAxis" define the placement plane of the
## ! surface (Z = 0, and parametric value V = 0)  perpendicular to
## ! the symmetry axis. The "XAxis" defines the origin of the
## ! parameter U = 0.  The trigonometric sense gives the positive
## ! orientation for the parameter U.
## !
## ! When you create a CylindricalSurface the U and V directions of
## ! parametrization are such that at each point of the surface the
## ! normal is oriented towards the "outside region".
## !
## ! The methods UReverse VReverse change the orientation of the
## ! surface.
type
  GeomCylindricalSurface* {.importcpp: "Geom_CylindricalSurface",
                           header: "Geom_CylindricalSurface.hxx", bycopy.} = object of GeomElementarySurface ##
                                                                                                      ## !
                                                                                                      ## A3
                                                                                                      ## defines
                                                                                                      ## the
                                                                                                      ## local
                                                                                                      ## coordinate
                                                                                                      ## system
                                                                                                      ## of
                                                                                                      ## the
                                                                                                      ## cylindrical
                                                                                                      ## surface.
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## The
                                                                                                      ## "ZDirection"
                                                                                                      ## of
                                                                                                      ## A3
                                                                                                      ## defines
                                                                                                      ## the
                                                                                                      ## direction
                                                                                                      ## of
                                                                                                      ## the
                                                                                                      ## surface's
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## axis
                                                                                                      ## of
                                                                                                      ## symmetry.
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## At
                                                                                                      ## the
                                                                                                      ## creation
                                                                                                      ## the
                                                                                                      ## parametrization
                                                                                                      ## of
                                                                                                      ## the
                                                                                                      ## surface
                                                                                                      ## is
                                                                                                      ## defined
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## such
                                                                                                      ## that
                                                                                                      ## the
                                                                                                      ## normal
                                                                                                      ## Vector
                                                                                                      ## (N
                                                                                                      ## =
                                                                                                      ## D1U
                                                                                                      ## ^
                                                                                                      ## D1V)
                                                                                                      ## is
                                                                                                      ## oriented
                                                                                                      ## towards
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## the
                                                                                                      ## "outside
                                                                                                      ## region"
                                                                                                      ## of
                                                                                                      ## the
                                                                                                      ## surface.
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## Warnings
                                                                                                      ## :
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## It
                                                                                                      ## is
                                                                                                      ## not
                                                                                                      ## forbidden
                                                                                                      ## to
                                                                                                      ## create
                                                                                                      ## a
                                                                                                      ## cylindrical
                                                                                                      ## surface
                                                                                                      ## with
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## Radius
                                                                                                      ## =
                                                                                                      ## 0.0
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## Raised
                                                                                                      ## if
                                                                                                      ## Radius
                                                                                                      ## <
                                                                                                      ## 0.0
type
  HandleGeomDirection* = Handle[GeomDirection]
## ! The class Direction specifies a vector that is never null.
## ! It is a unit vector.
type
  GeomDirection* {.importcpp: "Geom_Direction", header: "Geom_Direction.hxx", bycopy.} = object of GeomVector ##
                                                                                                    ## !
                                                                                                    ## Creates
                                                                                                    ## a
                                                                                                    ## unit
                                                                                                    ## vector
                                                                                                    ## with
                                                                                                    ## it
                                                                                                    ## 3
                                                                                                    ## cartesian
                                                                                                    ## coordinates.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Raised
                                                                                                    ## if
                                                                                                    ## Sqrt(
                                                                                                    ## X*X
                                                                                                    ## +
                                                                                                    ## Y*Y
                                                                                                    ## +
                                                                                                    ## Z*Z)
                                                                                                    ## <=
                                                                                                    ## Resolution
                                                                                                    ## from
                                                                                                    ## gp.
type
  HandleGeomElementarySurface* = Handle[GeomElementarySurface]
## ! Describes the common behavior of surfaces which
## ! have a simple parametric equation in a local
## ! coordinate system. The Geom package provides
## ! several implementations of concrete elementary surfaces:
## ! - the plane, and
## ! - four simple surfaces of revolution: the cylinder, the
## ! cone, the sphere and the torus.
## ! An elementary surface inherits the common behavior
## ! of Geom_Surface surfaces. Furthermore, it is located
## ! in 3D space by a coordinate system (a gp_Ax3
## ! object) which is also its local coordinate system.
## ! Any elementary surface is oriented, i.e. the normal
## ! vector is always defined, and gives the same
## ! orientation to the surface, at any point on the surface.
## ! In topology this property is referred to as the "outside
## ! region of the surface". This orientation is related to
## ! the two parametric directions of the surface.
## ! Rotation of a surface around the "main Axis" of its
## ! coordinate system, in the trigonometric sense given
## ! by the "X Direction" and the "Y Direction" of the
## ! coordinate system, defines the u parametric direction
## ! of that elementary surface of revolution. This is the
## ! default construction mode.
## ! It is also possible, however, to change the orientation
## ! of a surface by reversing one of the two parametric
## ! directions: use the UReverse or VReverse functions
## ! to change the orientation of the normal at any point on the surface.
## ! Warning
## ! The local coordinate system of an elementary surface
## ! is not necessarily direct:
## ! - if it is direct, the trigonometric sense defined by its
## ! "main Direction" is the same as the trigonometric
## ! sense defined by its two vectors "X Direction" and "Y Direction":
## ! "main Direction" = "X Direction" ^ "Y Direction"
## ! - if it is indirect, the two definitions of trigonometric
## ! sense are opposite:
## ! "main Direction" = - "X Direction" ^ "Y Direction"
type
  GeomElementarySurface* {.importcpp: "Geom_ElementarySurface",
                          header: "Geom_ElementarySurface.hxx", bycopy.} = object of GeomSurface ##
                                                                                          ## !
                                                                                          ## Changes
                                                                                          ## the
                                                                                          ## main
                                                                                          ## axis
                                                                                          ## (ZAxis)
                                                                                          ## of
                                                                                          ## the
                                                                                          ## elementary
                                                                                          ## surface.
                                                                                          ##
                                                                                          ## !
                                                                                          ##
                                                                                          ## !
                                                                                          ## Raised
                                                                                          ## if
                                                                                          ## the
                                                                                          ## direction
                                                                                          ## of
                                                                                          ## A1
                                                                                          ## is
                                                                                          ## parallel
                                                                                          ## to
                                                                                          ## the
                                                                                          ## XAxis
                                                                                          ## of
                                                                                          ## the
                                                                                          ##
                                                                                          ## !
                                                                                          ## coordinate
                                                                                          ## system
                                                                                          ## of
                                                                                          ## the
                                                                                          ## surface.
type
  HandleGeomEllipse* = Handle[GeomEllipse]
## ! Describes an ellipse in 3D space.
## ! An ellipse is defined by its major and minor radii and,
## ! as with any conic curve, is positioned in space with a
## ! right-handed coordinate system (gp_Ax2 object) where:
## ! - the origin is the center of the ellipse,
## ! - the "X Direction" defines the major axis, and
## ! - the "Y Direction" defines the minor axis.
## ! The origin, "X Direction" and "Y Direction" of this
## ! coordinate system define the plane of the ellipse. The
## ! coordinate system is the local coordinate system of the ellipse.
## ! The "main Direction" of this coordinate system is the
## ! vector normal to the plane of the ellipse. The axis, of
## ! which the origin and unit vector are respectively the
## ! origin and "main Direction" of the local coordinate
## ! system, is termed the "Axis" or "main Axis" of the ellipse.
## ! The "main Direction" of the local coordinate system
## ! gives an explicit orientation to the ellipse (definition of
## ! the trigonometric sense), determining the direction in
## ! which the parameter increases along the ellipse.
## ! The Geom_Ellipse ellipse is parameterized by an angle:
## ! P(U) = O + MajorRad*Cos(U)*XDir + MinorRad*Sin(U)*YDir
## ! where:
## ! - P is the point of parameter U,
## ! - O, XDir and YDir are respectively the origin, "X
## ! Direction" and "Y Direction" of its local coordinate system,
## ! - MajorRad and MinorRad are the major and minor radii of the ellipse.
## ! The "X Axis" of the local coordinate system therefore
## ! defines the origin of the parameter of the ellipse.
## ! An ellipse is a closed and periodic curve. The period
## ! is 2.*Pi and the parameter range is [ 0, 2.*Pi [.
type
  GeomEllipse* {.importcpp: "Geom_Ellipse", header: "Geom_Ellipse.hxx", bycopy.} = object of GeomConic ##
                                                                                             ## !
                                                                                             ## Constructs
                                                                                             ## an
                                                                                             ## ellipse
                                                                                             ## by
                                                                                             ## conversion
                                                                                             ## of
                                                                                             ## the
                                                                                             ## gp_Elips
                                                                                             ## ellipse
                                                                                             ## E.
type
  HandleGeomGeometry* = Handle[GeomGeometry]
## ! The abstract class Geometry for 3D space is the root
## ! class of all geometric objects from the Geom
## ! package. It describes the common behavior of these objects when:
## ! - applying geometric transformations to objects, and
## ! - constructing objects by geometric transformation (including copying).
## ! Warning
## ! Only transformations which do not modify the nature
## ! of the geometry can be applied to Geom objects: this
## ! is the case with translations, rotations, symmetries
## ! and scales; this is also the case with gp_Trsf
## ! composite transformations which are used to define
## ! the geometric transformations applied using the
## ! Transform or Transformed functions.
## ! Note: Geometry defines the "prototype" of the
## ! abstract method Transform which is defined for each
## ! concrete type of derived object. All other
## ! transformations are implemented using the Transform method.
type
  GeomGeometry* {.importcpp: "Geom_Geometry", header: "Geom_Geometry.hxx", bycopy.} = object of StandardTransient ##
                                                                                                        ## !
                                                                                                        ## Performs
                                                                                                        ## the
                                                                                                        ## symmetrical
                                                                                                        ## transformation
                                                                                                        ## of
                                                                                                        ## a
                                                                                                        ## Geometry
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## with
                                                                                                        ## respect
                                                                                                        ## to
                                                                                                        ## the
                                                                                                        ## point
                                                                                                        ## P
                                                                                                        ## which
                                                                                                        ## is
                                                                                                        ## the
                                                                                                        ## center
                                                                                                        ## of
                                                                                                        ## the
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## symmetry.
type
  GeomHSequenceOfBSplineSurface* {.importcpp: "Geom_HSequenceOfBSplineSurface",
                                  header: "Geom_HSequenceOfBSplineSurface.hxx",
                                  bycopy.} = object of GeomSequenceOfBSplineSurface
type
  HandleGeomHSequenceOfBSplineSurface* = Handle[GeomHSequenceOfBSplineSurface]
type
  HandleGeomHyperbola* = Handle[GeomHyperbola]
## ! Describes a branch of a hyperbola in 3D space.
## ! A hyperbola is defined by its major and minor radii
## ! and, as with any conic curve, is positioned in space
## ! with a right-handed coordinate system (gp_Ax2 object) where:
## ! - the origin is the center of the hyperbola,
## ! - the "X Direction" defines the major axis, and
## ! - the "Y Direction" defines the minor axis.
## ! The origin, "X Direction" and "Y Direction" of this
## ! coordinate system define the plane of the hyperbola.
## ! The coordinate system is the local coordinate
## ! system of the hyperbola.
## ! The branch of the hyperbola described is the one
## ! located on the positive side of the major axis.
## ! The "main Direction" of the local coordinate system is
## ! a vector normal to the plane of the hyperbola. The
## ! axis, of which the origin and unit vector are
## ! respectively the origin and "main Direction" of the
## ! local coordinate system, is termed the "Axis" or "main
## ! Axis" of the hyperbola.
## ! The "main Direction" of the local coordinate system
## ! gives an explicit orientation to the hyperbola,
## ! determining the direction in which the parameter
## ! increases along the hyperbola.
## ! The Geom_Hyperbola hyperbola is parameterized as follows:
## ! P(U) = O + MajRad*Cosh(U)*XDir + MinRad*Sinh(U)*YDir, where:
## ! - P is the point of parameter U,
## ! - O, XDir and YDir are respectively the origin, "X
## ! Direction" and "Y Direction" of its local coordinate system,
## ! - MajRad and MinRad are the major and minor radii of the hyperbola.
## ! The "X Axis" of the local coordinate system therefore
## ! defines the origin of the parameter of the hyperbola.
## ! The parameter range is ] -infinite, +infinite [.
## ! The following diagram illustrates the respective
## ! positions, in the plane of the hyperbola, of the three
## ! branches of hyperbolas constructed using the
## ! functions OtherBranch, ConjugateBranch1 and
## ! ConjugateBranch2: Defines the main branch of an hyperbola.
## ! ^YAxis
## ! |
## ! FirstConjugateBranch
## ! |
## ! Other            |                Main
## ! --------------------- C ------------------------------>XAxis
## ! Branch           |                Branch
## ! |
## ! SecondConjugateBranch
## ! |
## ! Warning
## ! The value of the major radius (on the major axis) can
## ! be less than the value of the minor radius (on the minor axis).
type
  GeomHyperbola* {.importcpp: "Geom_Hyperbola", header: "Geom_Hyperbola.hxx", bycopy.} = object of GeomConic ##
                                                                                                   ## !
                                                                                                   ## Constructs
                                                                                                   ## a
                                                                                                   ## hyperbola
                                                                                                   ## by
                                                                                                   ## conversion
                                                                                                   ## of
                                                                                                   ## the
                                                                                                   ## gp_Hypr
                                                                                                   ## hyperbola
                                                                                                   ## H.
type
  HandleGeomLine* = Handle[GeomLine]
## ! Describes an infinite line.
## ! A line is defined and positioned in space with an axis
## ! (gp_Ax1 object) which gives it an origin and a unit vector.
## ! The Geom_Line line is parameterized:
## ! P (U) = O + U*Dir, where:
## ! - P is the point of parameter U,
## ! - O is the origin and Dir the unit vector of its positioning axis.
## ! The parameter range is ] -infinite, +infinite [.
## ! The orientation of the line is given by the unit vector
## ! of its positioning axis.
type
  GeomLine* {.importcpp: "Geom_Line", header: "Geom_Line.hxx", bycopy.} = object of GeomCurve ##
                                                                                    ## !
                                                                                    ## Creates
                                                                                    ## a
                                                                                    ## line
                                                                                    ## located
                                                                                    ## in
                                                                                    ## 3D
                                                                                    ## space
                                                                                    ## with
                                                                                    ## the
                                                                                    ## axis
                                                                                    ## placement
                                                                                    ## A1.
                                                                                    ##
                                                                                    ## !
                                                                                    ## The
                                                                                    ## Location
                                                                                    ## of
                                                                                    ## A1
                                                                                    ## is
                                                                                    ## the
                                                                                    ## origin
                                                                                    ## of
                                                                                    ## the
                                                                                    ## line.
type
  HandleGeomOffsetCurve* = Handle[GeomOffsetCurve]
## ! This class implements the basis services for an offset curve
## ! in 3D space. The Offset curve in this package can be a self
## ! intersecting curve even if the basis curve does not
## ! self-intersect. The self intersecting portions are not deleted
## ! at the construction time.
## ! An offset curve is a curve at constant distance (Offset) from
## ! a basis curve in a reference direction V. The offset curve
## ! takes its parametrization from the basis curve.
## ! The Offset curve is in the direction of the normal N
## ! defined with the cross product  T^V, where the vector T
## ! is given by the first derivative on the basis curve with
## ! non zero length.
## ! The distance offset may be positive or negative to indicate the
## ! preferred side of the curve :
## ! . distance offset >0 => the curve is in the direction of N
## ! . distance offset <0 => the curve is in the direction of - N
## !
## ! On the Offset curve :
## ! Value (U) = BasisCurve.Value(U) + (Offset * (T ^ V)) / ||T ^ V||
## !
## ! At any point the Offset direction V must not be parallel to the
## ! vector T and the vector T must not have null length else the
## ! offset curve is not defined. So the offset curve has not the
## ! same continuity as the basis curve.
## !
## ! Warnings :
## !
## ! In this package we suppose that the continuity of the offset
## ! curve is one degree less than the continuity of the basis
## ! curve and we don't check that at any point ||T^V|| != 0.0
## !
## ! So to evaluate the curve it is better to check that the offset
## ! curve is well defined at any point because an exception could
## ! be raised. The check is not done in this package at the creation
## ! of the offset curve because the control needs the use of an
## ! algorithm which cannot be implemented in this package.
## !
## ! The OffsetCurve is closed if the first point and the last point
## ! are the same (The distance between these two points is lower or
## ! equal to the Resolution sea package gp) . The OffsetCurve can be
## ! closed even if the basis curve is not closed.
type
  GeomOffsetCurve* {.importcpp: "Geom_OffsetCurve", header: "Geom_OffsetCurve.hxx",
                    bycopy.} = object of GeomCurve ## ! C is the basis curve, Offset is the distance between <me> and
                                              ## ! the basis curve at any point. V defines the fixed reference
                                              ## ! direction (offset direction). If P is a point on the basis
                                              ## ! curve and T the first derivative with non zero length
                                              ## ! at this point, the corresponding point on the offset curve is
                                              ## ! in the direction of the vector-product N = V ^ T   where
                                              ## ! N is a unitary vector.
                                              ## ! If isNotCheckC0 = TRUE checking if basis curve has C0-continuity
                                              ## ! is not made.
                                              ## ! Warnings :
                                              ## ! In this package the entities are not shared. The OffsetCurve is
                                              ## ! built with a copy of the curve C. So when C is modified the
                                              ## ! OffsetCurve is not modified
                                              ## !
                                              ## ! Raised if the basis curve C is not at least C1.
                                              ## ! Warnings :
                                              ## ! No check is done to know if ||V^T|| != 0.0 at any point.
type
  HandleGeomOffsetSurface* = Handle[GeomOffsetSurface]
## ! Describes an offset surface in 3D space.
## ! An offset surface is defined by:
## ! - the basis surface to which it is parallel, and
## ! - the distance between the offset surface and its basis surface.
## ! A point on the offset surface is built by measuring the
## ! offset value along the normal vector at a point on the
## ! basis surface. This normal vector is given by the cross
## ! product D1u^D1v, where D1u and D1v are the
## ! vectors tangential to the basis surface in the u and v
## ! parametric directions at this point. The side of the
## ! basis surface on which the offset is measured
## ! depends on the sign of the offset value.
## ! A Geom_OffsetSurface surface can be
## ! self-intersecting, even if the basis surface does not
## ! self-intersect. The self-intersecting portions are not
## ! deleted at the time of construction.
## ! Warning
## ! There must be only one normal vector defined at any
## ! point on the basis surface. This must be verified by the
## ! user as no check is made at the time of construction
## ! to detect points with multiple possible normal
## ! directions (for example, the top of a conical surface).
type
  GeomOffsetSurface* {.importcpp: "Geom_OffsetSurface",
                      header: "Geom_OffsetSurface.hxx", bycopy.} = object of GeomSurface ##
                                                                                  ## !
                                                                                  ## Constructs
                                                                                  ## a
                                                                                  ## surface
                                                                                  ## offset
                                                                                  ## from
                                                                                  ## the
                                                                                  ## basis
                                                                                  ## surface
                                                                                  ##
                                                                                  ## !
                                                                                  ## S,
                                                                                  ## where
                                                                                  ## Offset
                                                                                  ## is
                                                                                  ## the
                                                                                  ## distance
                                                                                  ## between
                                                                                  ## the
                                                                                  ## offset
                                                                                  ##
                                                                                  ## !
                                                                                  ## surface
                                                                                  ## and
                                                                                  ## the
                                                                                  ## basis
                                                                                  ## surface
                                                                                  ## at
                                                                                  ## any
                                                                                  ## point.
                                                                                  ##
                                                                                  ## !
                                                                                  ## A
                                                                                  ## point
                                                                                  ## on
                                                                                  ## the
                                                                                  ## offset
                                                                                  ## surface
                                                                                  ## is
                                                                                  ## built
                                                                                  ## by
                                                                                  ## measuring
                                                                                  ##
                                                                                  ## !
                                                                                  ## the
                                                                                  ## offset
                                                                                  ## value
                                                                                  ## along
                                                                                  ## a
                                                                                  ## normal
                                                                                  ## vector
                                                                                  ## at
                                                                                  ## a
                                                                                  ## point
                                                                                  ## on
                                                                                  ##
                                                                                  ## !
                                                                                  ## S.
                                                                                  ## This
                                                                                  ## normal
                                                                                  ## vector
                                                                                  ## is
                                                                                  ## given
                                                                                  ## by
                                                                                  ## the
                                                                                  ## cross
                                                                                  ## product
                                                                                  ##
                                                                                  ## !
                                                                                  ## D1u^D1v,
                                                                                  ## where
                                                                                  ## D1u
                                                                                  ## and
                                                                                  ## D1v
                                                                                  ## are
                                                                                  ## the
                                                                                  ## vectors
                                                                                  ##
                                                                                  ## !
                                                                                  ## tangential
                                                                                  ## to
                                                                                  ## the
                                                                                  ## basis
                                                                                  ## surface
                                                                                  ## in
                                                                                  ## the
                                                                                  ## u
                                                                                  ## and
                                                                                  ## v
                                                                                  ##
                                                                                  ## !
                                                                                  ## parametric
                                                                                  ## directions
                                                                                  ## at
                                                                                  ## this
                                                                                  ## point.
                                                                                  ## The
                                                                                  ## side
                                                                                  ## of
                                                                                  ## S
                                                                                  ## on
                                                                                  ##
                                                                                  ## !
                                                                                  ## which
                                                                                  ## the
                                                                                  ## offset
                                                                                  ## value
                                                                                  ## is
                                                                                  ## measured
                                                                                  ## is
                                                                                  ## indicated
                                                                                  ## by
                                                                                  ##
                                                                                  ## !
                                                                                  ## this
                                                                                  ## normal
                                                                                  ## vector
                                                                                  ## if
                                                                                  ## Offset
                                                                                  ## is
                                                                                  ## positive,
                                                                                  ## or
                                                                                  ## is
                                                                                  ## the
                                                                                  ##
                                                                                  ## !
                                                                                  ## inverse
                                                                                  ## sense
                                                                                  ## if
                                                                                  ## Offset
                                                                                  ## is
                                                                                  ## negative.
                                                                                  ##
                                                                                  ## !
                                                                                  ## If
                                                                                  ## isNotCheckC0
                                                                                  ## =
                                                                                  ## TRUE
                                                                                  ## checking
                                                                                  ## if
                                                                                  ## basis
                                                                                  ## surface
                                                                                  ## has
                                                                                  ## C0-continuity
                                                                                  ##
                                                                                  ## !
                                                                                  ## is
                                                                                  ## not
                                                                                  ## made.
                                                                                  ##
                                                                                  ## !
                                                                                  ## Warnings
                                                                                  ## :
                                                                                  ##
                                                                                  ## !
                                                                                  ## -
                                                                                  ## The
                                                                                  ## offset
                                                                                  ## surface
                                                                                  ## is
                                                                                  ## built
                                                                                  ## with
                                                                                  ## a
                                                                                  ## copy
                                                                                  ## of
                                                                                  ## the
                                                                                  ##
                                                                                  ## !
                                                                                  ## surface
                                                                                  ## S.
                                                                                  ## Therefore,
                                                                                  ## when
                                                                                  ## S
                                                                                  ## is
                                                                                  ## modified
                                                                                  ## the
                                                                                  ##
                                                                                  ## !
                                                                                  ## offset
                                                                                  ## surface
                                                                                  ## is
                                                                                  ## not
                                                                                  ## modified.
                                                                                  ##
                                                                                  ## !
                                                                                  ## -
                                                                                  ## No
                                                                                  ## check
                                                                                  ## is
                                                                                  ## made
                                                                                  ## at
                                                                                  ## the
                                                                                  ## time
                                                                                  ## of
                                                                                  ## construction
                                                                                  ## to
                                                                                  ##
                                                                                  ## !
                                                                                  ## detect
                                                                                  ## points
                                                                                  ## on
                                                                                  ## S
                                                                                  ## with
                                                                                  ## multiple
                                                                                  ## possible
                                                                                  ## normal
                                                                                  ## directions.
                                                                                  ##
                                                                                  ## !
                                                                                  ## Raised
                                                                                  ## if
                                                                                  ## S
                                                                                  ## is
                                                                                  ## not
                                                                                  ## at
                                                                                  ## least
                                                                                  ## C1.
                                                                                  ##
                                                                                  ## !
                                                                                  ## Warnings
                                                                                  ## :
                                                                                  ##
                                                                                  ## !
                                                                                  ## No
                                                                                  ## check
                                                                                  ## is
                                                                                  ## done
                                                                                  ## to
                                                                                  ## verify
                                                                                  ## that
                                                                                  ## a
                                                                                  ## unique
                                                                                  ## normal
                                                                                  ## direction
                                                                                  ## is
                                                                                  ##
                                                                                  ## !
                                                                                  ## defined
                                                                                  ## at
                                                                                  ## any
                                                                                  ## point
                                                                                  ## of
                                                                                  ## the
                                                                                  ## basis
                                                                                  ## surface
                                                                                  ## S.
type
  HandleGeomOsculatingSurface* = Handle[GeomOsculatingSurface]
  GeomOsculatingSurface* {.importcpp: "Geom_OsculatingSurface",
                          header: "Geom_OsculatingSurface.hxx", bycopy.} = object of StandardTransient ##
                                                                                                ## !
                                                                                                ## returns
                                                                                                ## False
                                                                                                ## if
                                                                                                ## the
                                                                                                ## osculating
                                                                                                ## surface
                                                                                                ## can't
                                                                                                ## be
                                                                                                ## built
type
  HandleGeomParabola* = Handle[GeomParabola]
## ! Describes a parabola in 3D space.
## ! A parabola is defined by its focal length (i.e. the
## ! distance between its focus and its apex) and is
## ! positioned in space with a coordinate system
## ! (gp_Ax2 object) where:
## ! - the origin is the apex of the parabola,
## ! - the "X Axis" defines the axis of symmetry; the
## ! parabola is on the positive side of this axis,
## ! - the origin, "X Direction" and "Y Direction" define the
## ! plane of the parabola.
## ! This coordinate system is the local coordinate
## ! system of the parabola.
## ! The "main Direction" of this coordinate system is a
## ! vector normal to the plane of the parabola. The axis,
## ! of which the origin and unit vector are respectively the
## ! origin and "main Direction" of the local coordinate
## ! system, is termed the "Axis" or "main Axis" of the parabola.
## ! The "main Direction" of the local coordinate system
## ! gives an explicit orientation to the parabola,
## ! determining the direction in which the parameter
## ! increases along the parabola.
## ! The Geom_Parabola parabola is parameterized as follows:
## ! P(U) = O + U*U/(4.*F)*XDir + U*YDir
## ! where:
## ! - P is the point of parameter U,
## ! - O, XDir and YDir are respectively the origin, "X
## ! Direction" and "Y Direction" of its local coordinate system,
## ! - F is the focal length of the parabola.
## ! The parameter of the parabola is therefore its Y
## ! coordinate in the local coordinate system, with the "X
## ! Axis" of the local coordinate system defining the origin
## ! of the parameter.
## ! The parameter range is ] -infinite, +infinite [.
type
  GeomParabola* {.importcpp: "Geom_Parabola", header: "Geom_Parabola.hxx", bycopy.} = object of GeomConic ##
                                                                                                ## !
                                                                                                ## Creates
                                                                                                ## a
                                                                                                ## parabola
                                                                                                ## from
                                                                                                ## a
                                                                                                ## non
                                                                                                ## transient
                                                                                                ## one.
type
  HandleGeomPlane* = Handle[GeomPlane]
## ! Describes a plane in 3D space.
## ! A plane is positioned in space by a coordinate system
## ! (a gp_Ax3 object) such that the plane is defined by
## ! the origin, "X Direction" and "Y Direction" of this
## ! coordinate system.
## ! This coordinate system is the "local coordinate
## ! system" of the plane. The following apply:
## ! - Its "X Direction" and "Y Direction" are respectively
## ! the u and v parametric directions of the plane.
## ! - Its origin is the origin of the u and v parameters
## ! (also called the "origin" of the plane).
## ! - Its "main Direction" is a vector normal to the plane.
## ! This normal vector gives the orientation of the
## ! plane only if the local coordinate system is "direct".
## ! (The orientation of the plane is always defined by
## ! the "X Direction" and the "Y Direction" of its local
## ! coordinate system.)
## ! The parametric equation of the plane is:
## ! P(u, v) = O + u*XDir + v*YDir
## ! where O, XDir and YDir are respectively the
## ! origin, the "X Direction" and the "Y Direction" of the
## ! local coordinate system of the plane.
## ! The parametric range of the two parameters u and v
## ! is ] -infinity, +infinity [.
type
  GeomPlane* {.importcpp: "Geom_Plane", header: "Geom_Plane.hxx", bycopy.} = object of GeomElementarySurface ##
                                                                                                   ## !
                                                                                                   ## Creates
                                                                                                   ## a
                                                                                                   ## plane
                                                                                                   ## located
                                                                                                   ## in
                                                                                                   ## 3D
                                                                                                   ## space
                                                                                                   ## with
                                                                                                   ## an
                                                                                                   ## axis
                                                                                                   ## placement
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## three
                                                                                                   ## axis.
                                                                                                   ## The
                                                                                                   ## "ZDirection"
                                                                                                   ## of
                                                                                                   ## "A3"
                                                                                                   ## is
                                                                                                   ## the
                                                                                                   ## direction
                                                                                                   ## normal
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## to
                                                                                                   ## the
                                                                                                   ## plane.
                                                                                                   ## The
                                                                                                   ## "Location"
                                                                                                   ## point
                                                                                                   ## of
                                                                                                   ## "A3"
                                                                                                   ## is
                                                                                                   ## the
                                                                                                   ## origin
                                                                                                   ## of
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## the
                                                                                                   ## plane.
                                                                                                   ## The
                                                                                                   ## "XDirection"
                                                                                                   ## and
                                                                                                   ## "YDirection"
                                                                                                   ## of
                                                                                                   ## "A3"
                                                                                                   ## define
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## the
                                                                                                   ## directions
                                                                                                   ## of
                                                                                                   ## the
                                                                                                   ## U
                                                                                                   ## isoparametric
                                                                                                   ## and
                                                                                                   ## V
                                                                                                   ## isoparametric
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## curves.
type
  HandleGeomPoint* = Handle[GeomPoint]
## ! The abstract class Point describes the common
## ! behavior of geometric points in 3D space.
## ! The Geom package also provides the concrete class
## ! Geom_CartesianPoint.
type
  GeomPoint* {.importcpp: "Geom_Point", header: "Geom_Point.hxx", bycopy.} = object of GeomGeometry ##
                                                                                          ## !
                                                                                          ## returns
                                                                                          ## the
                                                                                          ## Coordinates
                                                                                          ## of
                                                                                          ## <me>.
type
  HandleGeomRectangularTrimmedSurface* = Handle[GeomRectangularTrimmedSurface]
## ! Describes a portion of a surface (a patch) limited
## ! by two values of the u parameter in the u
## ! parametric direction, and two values of the v
## ! parameter in the v parametric direction. The
## ! domain of the trimmed surface must be within the
## ! domain of the surface being trimmed.
## ! The trimmed surface is defined by:
## ! - the basis surface, and
## ! - the values (umin, umax) and (vmin, vmax)
## ! which limit it in the u and v parametric directions.
## ! The trimmed surface is built from a copy of the basis
## ! surface. Therefore, when the basis surface is
## ! modified the trimmed surface is not changed.
## ! Consequently, the trimmed surface does not
## ! necessarily have the same orientation as the basis surface.
## ! Warning:  The  case of surface   being trimmed is  periodic and
## ! parametrics values are outside the domain is possible.
## ! But, domain of the  trimmed surface can be translated
## ! by (n X) the period.
type
  GeomRectangularTrimmedSurface* {.importcpp: "Geom_RectangularTrimmedSurface",
                                  header: "Geom_RectangularTrimmedSurface.hxx",
                                  bycopy.} = object of GeomBoundedSurface ## ! The U parametric direction of the surface is oriented from U1
                                                                     ## ! to U2. The V parametric direction of the surface is oriented
                                                                     ## ! from V1 to V2.
                                                                     ## ! These two directions define the orientation of the surface
                                                                     ## ! (normal). If the surface is not periodic USense and VSense are
                                                                     ## ! not used for the
                                                                     ## construction. If the surface S is periodic in
                                                                     ## ! one direction USense and VSense give the available part of the
                                                                     ## ! surface. By default in this case the surface has the same
                                                                     ## ! orientation as the basis surface S.
                                                                     ## ! The returned surface is not closed and not periodic.
                                                                     ## !
                                                                     ## ConstructionError   Raised if
                                                                     ## ! S is not periodic in the UDirection and U1 or U2 are out of the
                                                                     ## ! bounds of S.
                                                                     ## ! S is not periodic in the VDirection and V1 or V2 are out of the
                                                                     ## ! bounds of S.
                                                                     ## ! U1 = U2 or V1 = V2
                                                                     ## ! General set trim,  to implement
                                                                     ## constructors and
                                                                     ## ! others set trim.
type
  GeomSequenceOfBSplineSurface* = NCollectionSequence[Handle[GeomBSplineSurface]]
type
  HandleGeomSphericalSurface* = Handle[GeomSphericalSurface]
## ! Describes a sphere.
## ! A sphere is defined by its radius, and is positioned in
## ! space by a coordinate system (a gp_Ax3 object), the
## ! origin of which is the center of the sphere.
## ! This coordinate system is the "local coordinate
## ! system" of the sphere. The following apply:
## ! - Rotation around its "main Axis", in the trigonometric
## ! sense given by the "X Direction" and the "Y
## ! Direction", defines the u parametric direction.
## ! - Its "X Axis" gives the origin for the u parameter.
## ! - The "reference meridian" of the sphere is a
## ! half-circle, of radius equal to the radius of the
## ! sphere. It is located in the plane defined by the
## ! origin, "X Direction" and "main Direction", centered
## ! on the origin, and positioned on the positive side of the "X Axis".
## ! - Rotation around the "Y Axis" gives the v parameter
## ! on the reference meridian.
## ! - The "X Axis" gives the origin of the v parameter on
## ! the reference meridian.
## ! - The v parametric direction is oriented by the "main
## ! Direction", i.e. when v increases, the Z coordinate
## ! increases. (This implies that the "Y Direction"
## ! orients the reference meridian only when the local
## ! coordinate system is indirect.)
## ! - The u isoparametric curve is a half-circle obtained
## ! by rotating the reference meridian of the sphere
## ! through an angle u around the "main Axis", in the
## ! trigonometric sense defined by the "X Direction"
## ! and the "Y Direction".
## ! The parametric equation of the sphere is:
## ! P(u,v) = O + R*cos(v)*(cos(u)*XDir + sin(u)*YDir)+R*sin(v)*ZDir
## ! where:
## ! - O, XDir, YDir and ZDir are respectively the
## ! origin, the "X Direction", the "Y Direction" and the "Z
## ! Direction" of its local coordinate system, and
## ! - R is the radius of the sphere.
## ! The parametric range of the two parameters is:
## ! - [ 0, 2.*Pi ] for u, and
## ! - [ - Pi/2., + Pi/2. ] for v.
type
  GeomSphericalSurface* {.importcpp: "Geom_SphericalSurface",
                         header: "Geom_SphericalSurface.hxx", bycopy.} = object of GeomElementarySurface ##
                                                                                                  ## !
                                                                                                  ## A3
                                                                                                  ## is
                                                                                                  ## the
                                                                                                  ## local
                                                                                                  ## coordinate
                                                                                                  ## system
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ## surface.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## At
                                                                                                  ## the
                                                                                                  ## creation
                                                                                                  ## the
                                                                                                  ## parametrization
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ## surface
                                                                                                  ## is
                                                                                                  ## defined
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## such
                                                                                                  ## as
                                                                                                  ## the
                                                                                                  ## normal
                                                                                                  ## Vector
                                                                                                  ## (N
                                                                                                  ## =
                                                                                                  ## D1U
                                                                                                  ## ^
                                                                                                  ## D1V)
                                                                                                  ## is
                                                                                                  ## directed
                                                                                                  ## away
                                                                                                  ## from
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## the
                                                                                                  ## center
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ## sphere.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## The
                                                                                                  ## direction
                                                                                                  ## of
                                                                                                  ## increasing
                                                                                                  ## parametric
                                                                                                  ## value
                                                                                                  ## V
                                                                                                  ## is
                                                                                                  ## defined
                                                                                                  ## by
                                                                                                  ## the
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## rotation
                                                                                                  ## around
                                                                                                  ## the
                                                                                                  ## "YDirection"
                                                                                                  ## of
                                                                                                  ## A2
                                                                                                  ## in
                                                                                                  ## the
                                                                                                  ## trigonometric
                                                                                                  ## sense
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## and
                                                                                                  ## the
                                                                                                  ## orientation
                                                                                                  ## of
                                                                                                  ## increasing
                                                                                                  ## parametric
                                                                                                  ## value
                                                                                                  ## U
                                                                                                  ## is
                                                                                                  ## defined
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## by
                                                                                                  ## the
                                                                                                  ## rotation
                                                                                                  ## around
                                                                                                  ## the
                                                                                                  ## main
                                                                                                  ## direction
                                                                                                  ## of
                                                                                                  ## A2
                                                                                                  ## in
                                                                                                  ## the
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## trigonometric
                                                                                                  ## sense.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Warnings
                                                                                                  ## :
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## It
                                                                                                  ## is
                                                                                                  ## not
                                                                                                  ## forbidden
                                                                                                  ## to
                                                                                                  ## create
                                                                                                  ## a
                                                                                                  ## spherical
                                                                                                  ## surface
                                                                                                  ## with
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Radius
                                                                                                  ## =
                                                                                                  ## 0.0
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Raised
                                                                                                  ## if
                                                                                                  ## Radius
                                                                                                  ## <
                                                                                                  ## 0.0.
type
  HandleGeomSurface* = Handle[GeomSurface]
## ! Describes the common behavior of surfaces in 3D
## ! space. The Geom package provides many
## ! implementations of concrete derived surfaces, such as
## ! planes, cylinders, cones, spheres and tori, surfaces of
## ! linear extrusion, surfaces of revolution, Bezier and
## ! BSpline surfaces, and so on.
## ! The key characteristic of these surfaces is that they
## ! are parameterized. Geom_Surface demonstrates:
## ! - how to work with the parametric equation of a
## ! surface to compute the point of parameters (u,
## ! v), and, at this point, the 1st, 2nd ... Nth derivative,
## ! - how to find global information about a surface in
## ! each parametric direction (for example, level of
## ! continuity, whether the surface is closed, its
## ! periodicity, the bounds of the parameters and so on), and
## ! - how the parameters change when geometric
## ! transformations are applied to the surface, or the
## ! orientation is modified.
## ! Note that all surfaces must have a geometric
## ! continuity, and any surface is at least "C0". Generally,
## ! continuity is checked at construction time or when the
## ! curve is edited. Where this is not the case, the
## ! documentation makes this explicit.
## ! Warning
## ! The Geom package does not prevent the construction of
## ! surfaces with null areas, or surfaces which self-intersect.
type
  GeomSurface* {.importcpp: "Geom_Surface", header: "Geom_Surface.hxx", bycopy.} = object of GeomGeometry ##
                                                                                                ## !
                                                                                                ## Reverses
                                                                                                ## the
                                                                                                ## U
                                                                                                ## direction
                                                                                                ## of
                                                                                                ## parametrization
                                                                                                ## of
                                                                                                ## <me>.
                                                                                                ##
                                                                                                ## !
                                                                                                ## The
                                                                                                ## bounds
                                                                                                ## of
                                                                                                ## the
                                                                                                ## surface
                                                                                                ## are
                                                                                                ## not
                                                                                                ## modified.
type
  HandleGeomSurfaceOfLinearExtrusion* = Handle[GeomSurfaceOfLinearExtrusion]
## ! Describes a surface of linear extrusion ("extruded
## ! surface"), e.g. a generalized cylinder. Such a surface
## ! is obtained by sweeping a curve (called the "extruded
## ! curve" or "basis") in a given direction (referred to as
## ! the "direction of extrusion" and defined by a unit vector).
## ! The u parameter is along the extruded curve. The v
## ! parameter is along the direction of extrusion.
## ! The parameter range for the u parameter is defined
## ! by the reference curve.
## ! The parameter range for the v parameter is ] -
## ! infinity, + infinity [.
## ! The position of the curve gives the origin of the v parameter.
## ! The surface is "CN" in the v parametric direction.
## ! The form of a surface of linear extrusion is generally a
## ! ruled surface (GeomAbs_RuledForm). It can be:
## ! - a cylindrical surface, if the extruded curve is a circle,
## ! or a trimmed circle, with an axis parallel to the
## ! direction of extrusion (GeomAbs_CylindricalForm), or
## ! - a planar surface, if the extruded curve is a line
## ! (GeomAbs_PlanarForm).
## ! Note: The surface of extrusion is built from a copy of
## ! the original basis curve, so the original curve is not
## ! modified when the surface is modified.
## ! Warning
## ! Degenerate surfaces are not detected. A degenerate
## ! surface is obtained, for example, when the extruded
## ! curve is a line and the direction of extrusion is parallel
## ! to that line.
type
  GeomSurfaceOfLinearExtrusion* {.importcpp: "Geom_SurfaceOfLinearExtrusion",
                                 header: "Geom_SurfaceOfLinearExtrusion.hxx",
                                 bycopy.} = object of GeomSweptSurface ## ! V is the direction of extrusion.
                                                                  ## ! C is the extruded curve.
                                                                  ## ! The form of a
                                                                  ## SurfaceOfLinearExtrusion can be :
                                                                  ## ! . ruled surface (RuledForm),
                                                                  ## ! . a cylindrical surface if the extruded curve is a circle or
                                                                  ## ! a trimmed circle
                                                                  ## (CylindricalForm),
                                                                  ## ! . a plane surface if the extruded curve is a Line (PlanarForm).
                                                                  ## ! Warnings :
                                                                  ## ! Degenerated surface cases are not detected. For example if the
                                                                  ## ! curve C is a line and V is parallel to the direction of this
                                                                  ## ! line.
type
  HandleGeomSurfaceOfRevolution* = Handle[GeomSurfaceOfRevolution]
## ! Describes a surface of revolution (revolved surface).
## ! Such a surface is obtained by rotating a curve (called
## ! the "meridian") through a complete revolution about
## ! an axis (referred to as the "axis of revolution"). The
## ! curve and the axis must be in the same plane (the
## ! "reference plane" of the surface).
## ! Rotation around the axis of revolution in the
## ! trigonometric sense defines the u parametric
## ! direction. So the u parameter is an angle, and its
## ! origin is given by the position of the meridian on the surface.
## ! The parametric range for the u parameter is: [ 0, 2.*Pi ]
## ! The v parameter is that of the meridian.
## ! Note: A surface of revolution is built from a copy of the
## ! original meridian. As a result the original meridian is
## ! not modified when the surface is modified.
## ! The form of a surface of revolution is typically a
## ! general revolution surface
## ! (GeomAbs_RevolutionForm). It can be:
## ! - a conical surface, if the meridian is a line or a
## ! trimmed line (GeomAbs_ConicalForm),
## ! - a cylindrical surface, if the meridian is a line or a
## ! trimmed line parallel to the axis of revolution
## ! (GeomAbs_CylindricalForm),
## ! - a planar surface if the meridian is a line or a
## ! trimmed line perpendicular to the axis of revolution
## ! of the surface (GeomAbs_PlanarForm),
## ! - a toroidal surface, if the meridian is a circle or a
## ! trimmed circle (GeomAbs_ToroidalForm), or
## ! - a spherical surface, if the meridian is a circle, the
## ! center of which is located on the axis of the
## ! revolved surface (GeomAbs_SphericalForm).
## ! Warning
## ! Be careful not to construct a surface of revolution
## ! where the curve and the axis or revolution are not
## ! defined in the same plane. If you do not have a
## ! correct configuration, you can correct your initial
## ! curve, using a cylindrical projection in the reference plane.
type
  GeomSurfaceOfRevolution* {.importcpp: "Geom_SurfaceOfRevolution",
                            header: "Geom_SurfaceOfRevolution.hxx", bycopy.} = object of GeomSweptSurface ##
                                                                                                   ## !
                                                                                                   ## C
                                                                                                   ## :
                                                                                                   ## is
                                                                                                   ## the
                                                                                                   ## meridian
                                                                                                   ## or
                                                                                                   ## the
                                                                                                   ## referenced
                                                                                                   ## curve.
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## A1
                                                                                                   ## is
                                                                                                   ## the
                                                                                                   ## axis
                                                                                                   ## of
                                                                                                   ## revolution.
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## The
                                                                                                   ## form
                                                                                                   ## of
                                                                                                   ## a
                                                                                                   ## SurfaceOfRevolution
                                                                                                   ## can
                                                                                                   ## be
                                                                                                   ## :
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## .
                                                                                                   ## a
                                                                                                   ## general
                                                                                                   ## revolution
                                                                                                   ## surface
                                                                                                   ## (RevolutionForm),
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## .
                                                                                                   ## a
                                                                                                   ## conical
                                                                                                   ## surface
                                                                                                   ## if
                                                                                                   ## the
                                                                                                   ## meridian
                                                                                                   ## is
                                                                                                   ## a
                                                                                                   ## line
                                                                                                   ## or
                                                                                                   ## a
                                                                                                   ## trimmed
                                                                                                   ## line
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## (ConicalForm),
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## .
                                                                                                   ## a
                                                                                                   ## cylindrical
                                                                                                   ## surface
                                                                                                   ## if
                                                                                                   ## the
                                                                                                   ## meridian
                                                                                                   ## is
                                                                                                   ## a
                                                                                                   ## line
                                                                                                   ## or
                                                                                                   ## a
                                                                                                   ## trimmed
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## line
                                                                                                   ## parallel
                                                                                                   ## to
                                                                                                   ## the
                                                                                                   ## revolution
                                                                                                   ## axis
                                                                                                   ## (CylindricalForm),
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## .
                                                                                                   ## a
                                                                                                   ## planar
                                                                                                   ## surface
                                                                                                   ## if
                                                                                                   ## the
                                                                                                   ## meridian
                                                                                                   ## is
                                                                                                   ## a
                                                                                                   ## line
                                                                                                   ## perpendicular
                                                                                                   ## to
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## the
                                                                                                   ## revolution
                                                                                                   ## axis
                                                                                                   ## of
                                                                                                   ## the
                                                                                                   ## surface
                                                                                                   ## (PlanarForm).
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## .
                                                                                                   ## a
                                                                                                   ## spherical
                                                                                                   ## surface,
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## .
                                                                                                   ## a
                                                                                                   ## toroidal
                                                                                                   ## surface,
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## .
                                                                                                   ## a
                                                                                                   ## quadric
                                                                                                   ## surface.
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## Warnings
                                                                                                   ## :
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## It
                                                                                                   ## is
                                                                                                   ## not
                                                                                                   ## checked
                                                                                                   ## that
                                                                                                   ## the
                                                                                                   ## curve
                                                                                                   ## C
                                                                                                   ## is
                                                                                                   ## planar
                                                                                                   ## and
                                                                                                   ## that
                                                                                                   ## the
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## surface
                                                                                                   ## axis
                                                                                                   ## is
                                                                                                   ## in
                                                                                                   ## the
                                                                                                   ## plane
                                                                                                   ## of
                                                                                                   ## the
                                                                                                   ## curve.
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## It
                                                                                                   ## is
                                                                                                   ## not
                                                                                                   ## checked
                                                                                                   ## that
                                                                                                   ## the
                                                                                                   ## revolved
                                                                                                   ## curve
                                                                                                   ## C
                                                                                                   ## doesn't
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## self-intersects.
type
  HandleGeomSweptSurface* = Handle[GeomSweptSurface]
## ! Describes the common behavior for surfaces
## ! constructed by sweeping a curve with another curve.
## ! The Geom package provides two concrete derived
## ! surfaces: surface of revolution (a revolved surface),
## ! and surface of linear extrusion (an extruded surface).
type
  GeomSweptSurface* {.importcpp: "Geom_SweptSurface",
                     header: "Geom_SweptSurface.hxx", bycopy.} = object of GeomSurface ##
                                                                                ## !
                                                                                ## returns
                                                                                ## the
                                                                                ## continuity
                                                                                ## of
                                                                                ## the
                                                                                ## surface
                                                                                ## :
                                                                                ##
                                                                                ## !
                                                                                ## C0
                                                                                ## :
                                                                                ## only
                                                                                ## geometric
                                                                                ## continuity,
                                                                                ##
                                                                                ## !
                                                                                ## C1
                                                                                ## :
                                                                                ## continuity
                                                                                ## of
                                                                                ## the
                                                                                ## first
                                                                                ## derivative
                                                                                ## all
                                                                                ## along
                                                                                ## the
                                                                                ## surface,
                                                                                ##
                                                                                ## !
                                                                                ## C2
                                                                                ## :
                                                                                ## continuity
                                                                                ## of
                                                                                ## the
                                                                                ## second
                                                                                ## derivative
                                                                                ## all
                                                                                ## along
                                                                                ## the
                                                                                ## surface,
                                                                                ##
                                                                                ## !
                                                                                ## C3
                                                                                ## :
                                                                                ## continuity
                                                                                ## of
                                                                                ## the
                                                                                ## third
                                                                                ## derivative
                                                                                ## all
                                                                                ## along
                                                                                ## the
                                                                                ## surface,
                                                                                ##
                                                                                ## !
                                                                                ## G1
                                                                                ## :
                                                                                ## tangency
                                                                                ## continuity
                                                                                ## all
                                                                                ## along
                                                                                ## the
                                                                                ## surface,
                                                                                ##
                                                                                ## !
                                                                                ## G2
                                                                                ## :
                                                                                ## curvature
                                                                                ## continuity
                                                                                ## all
                                                                                ## along
                                                                                ## the
                                                                                ## surface,
                                                                                ##
                                                                                ## !
                                                                                ## CN
                                                                                ## :
                                                                                ## the
                                                                                ## order
                                                                                ## of
                                                                                ## continuity
                                                                                ## is
                                                                                ## infinite.
type
  HandleGeomToroidalSurface* = Handle[GeomToroidalSurface]
## ! Describes a torus.
## ! A torus is defined by its major and minor radii, and
## ! positioned in space with a coordinate system (a
## ! gp_Ax3 object) as follows:
## ! - The origin is the center of the torus.
## ! - The surface is obtained by rotating a circle around
## ! the "main Direction". This circle has a radius equal
## ! to the minor radius, and is located in the plane
## ! defined by the origin, "X Direction" and "main
## ! Direction". It is centered on the "X Axis", on its
## ! positive side, and positioned at a distance from the
## ! origin equal to the major radius. This circle is the
## ! "reference circle" of the torus.
## ! - The plane defined by the origin, the "X Direction"
## ! and the "Y Direction" is called the "reference plane" of the torus.
## ! This coordinate system is the "local coordinate
## ! system" of the torus. The following apply:
## ! - Rotation around its "main Axis", in the trigonometric
## ! sense given by "X Direction" and "Y Direction",
## ! defines the u parametric direction.
## ! - The "X Axis" gives the origin for the u parameter.
## ! - Rotation around an axis parallel to the "Y Axis" and
## ! passing through the center of the "reference circle"
## ! gives the v parameter on the "reference circle".
## ! - The "X Axis" gives the origin of the v parameter on
## ! the "reference circle".
## ! - The v parametric direction is oriented by the
## ! inverse of the "main Direction", i.e. near 0, as v
## ! increases, the Z coordinate decreases. (This
## ! implies that the "Y Direction" orients the reference
## ! circle only when the local coordinate system is direct.)
## ! - The u isoparametric curve is a circle obtained by
## ! rotating the "reference circle" of the torus through
## ! an angle u about the "main Axis".
## ! The parametric equation of the torus is :
## ! P(u, v) = O + (R + r*cos(v)) * (cos(u)*XDir +
## ! sin(u)*YDir ) + r*sin(v)*ZDir, where:
## ! - O, XDir, YDir and ZDir are respectively the
## ! origin, the "X Direction", the "Y Direction" and the "Z
## ! Direction" of the local coordinate system,
## ! - r and R are, respectively, the minor and major radius.
## ! The parametric range of the two parameters is:
## ! - [ 0, 2.*Pi ] for u
## ! - [ 0, 2.*Pi ] for v
type
  GeomToroidalSurface* {.importcpp: "Geom_ToroidalSurface",
                        header: "Geom_ToroidalSurface.hxx", bycopy.} = object of GeomElementarySurface ##
                                                                                                ## !
                                                                                                ## A3
                                                                                                ## is
                                                                                                ## the
                                                                                                ## local
                                                                                                ## coordinate
                                                                                                ## system
                                                                                                ## of
                                                                                                ## the
                                                                                                ## surface.
                                                                                                ##
                                                                                                ## !
                                                                                                ## The
                                                                                                ## orientation
                                                                                                ## of
                                                                                                ## increasing
                                                                                                ## V
                                                                                                ## parametric
                                                                                                ## value
                                                                                                ## is
                                                                                                ## defined
                                                                                                ##
                                                                                                ## !
                                                                                                ## by
                                                                                                ## the
                                                                                                ## rotation
                                                                                                ## around
                                                                                                ## the
                                                                                                ## main
                                                                                                ## axis
                                                                                                ## (ZAxis)
                                                                                                ## in
                                                                                                ## the
                                                                                                ##
                                                                                                ## !
                                                                                                ## trigonometric
                                                                                                ## sense.
                                                                                                ## The
                                                                                                ## parametrization
                                                                                                ## of
                                                                                                ## the
                                                                                                ## surface
                                                                                                ## in
                                                                                                ## the
                                                                                                ##
                                                                                                ## !
                                                                                                ## U
                                                                                                ## direction
                                                                                                ## is
                                                                                                ## defined
                                                                                                ## such
                                                                                                ## as
                                                                                                ## the
                                                                                                ## normal
                                                                                                ## Vector
                                                                                                ## (N
                                                                                                ## =
                                                                                                ## D1U
                                                                                                ## ^
                                                                                                ## D1V)
                                                                                                ##
                                                                                                ## !
                                                                                                ## is
                                                                                                ## oriented
                                                                                                ## towards
                                                                                                ## the
                                                                                                ## "outside
                                                                                                ## region"
                                                                                                ## of
                                                                                                ## the
                                                                                                ## surface.
                                                                                                ##
                                                                                                ## !
                                                                                                ## Warnings
                                                                                                ## :
                                                                                                ##
                                                                                                ## !
                                                                                                ## It
                                                                                                ## is
                                                                                                ## not
                                                                                                ## forbidden
                                                                                                ## to
                                                                                                ## create
                                                                                                ## a
                                                                                                ## toroidal
                                                                                                ## surface
                                                                                                ## with
                                                                                                ##
                                                                                                ## !
                                                                                                ## MajorRadius
                                                                                                ## =
                                                                                                ## MinorRadius
                                                                                                ## =
                                                                                                ## 0.0
                                                                                                ##
                                                                                                ## !
                                                                                                ##
                                                                                                ## !
                                                                                                ## Raised
                                                                                                ## if
                                                                                                ## MinorRadius
                                                                                                ## <
                                                                                                ## 0.0
                                                                                                ## or
                                                                                                ## if
                                                                                                ## MajorRadius
                                                                                                ## <
                                                                                                ## 0.0
type
  HandleGeomTransformation* = Handle[GeomTransformation]
## ! Describes how to construct the following elementary transformations
## ! - translations,
## ! - rotations,
## ! - symmetries,
## ! - scales.
## ! The Transformation class can also be used to
## ! construct complex transformations by combining these
## ! elementary transformations.
## ! However, these transformations can never change
## ! the type of an object. For example, the projection
## ! transformation can change a circle into an ellipse, and
## ! therefore change the real type of the object. Such a
## ! transformation is forbidden in this environment and
## ! cannot be a Geom_Transformation.
## ! The transformation can be represented as follow :
## !
## ! V1   V2   V3    T
## ! | a11  a12  a13   a14 |   | x |      | x'|
## ! | a21  a22  a23   a24 |   | y |      | y'|
## ! | a31  a32  a33   a34 |   | z |   =  | z'|
## ! |  0    0    0     1  |   | 1 |      | 1 |
## !
## ! where {V1, V2, V3} defines the vectorial part of the
## ! transformation and T defines the translation part of
## ! the transformation.
## ! Note: Geom_Transformation transformations
## ! provide the same kind of "geometric" services as
## ! gp_Trsf ones but have more complex data structures.
## ! The geometric objects provided by the Geom
## ! package use gp_Trsf transformations in the syntaxes
## ! Transform and Transformed.
## ! Geom_Transformation transformations are used in
## ! a context where they can be shared by several
## ! objects contained inside a common data structure.
type
  GeomTransformation* {.importcpp: "Geom_Transformation",
                       header: "Geom_Transformation.hxx", bycopy.} = object of StandardTransient ##
                                                                                          ## !
                                                                                          ## Creates
                                                                                          ## an
                                                                                          ## identity
                                                                                          ## transformation.
type
  HandleGeomTrimmedCurve* {.importcpp:"opencascade::handle<Geom_TrimmedCurve>", header: "Standard_Handle.hxx", bycopy.} = object of HandleGeomCurve
## ! Describes a portion of a curve (termed the "basis
## ! curve") limited by two parameter values inside the
## ! parametric domain of the basis curve.
## ! The trimmed curve is defined by:
## ! - the basis curve, and
## ! - the two parameter values which limit it.
## ! The trimmed curve can either have the same
## ! orientation as the basis curve or the opposite orientation.
type
  GeomTrimmedCurve* {.importcpp: "Geom_TrimmedCurve",
                     header: "Geom_TrimmedCurve.hxx", bycopy.} = object of GeomBoundedCurve ##
                                                                                     ## !
                                                                                     ## Constructs
                                                                                     ## a
                                                                                     ## trimmed
                                                                                     ## curve
                                                                                     ## from
                                                                                     ## the
                                                                                     ## basis
                                                                                     ## curve
                                                                                     ## C
                                                                                     ##
                                                                                     ## !
                                                                                     ## which
                                                                                     ## is
                                                                                     ## limited
                                                                                     ## between
                                                                                     ## parameter
                                                                                     ## values
                                                                                     ## U1
                                                                                     ## and
                                                                                     ## U2.
                                                                                     ##
                                                                                     ## !
                                                                                     ## Note:
                                                                                     ## -
                                                                                     ## U1
                                                                                     ## can
                                                                                     ## be
                                                                                     ## greater
                                                                                     ## or
                                                                                     ## less
                                                                                     ## than
                                                                                     ## U2;
                                                                                     ## in
                                                                                     ## both
                                                                                     ## cases,
                                                                                     ##
                                                                                     ## !
                                                                                     ## the
                                                                                     ## returned
                                                                                     ## curve
                                                                                     ## is
                                                                                     ## oriented
                                                                                     ## from
                                                                                     ## U1
                                                                                     ## to
                                                                                     ## U2.
                                                                                     ##
                                                                                     ## !
                                                                                     ## -
                                                                                     ## If
                                                                                     ## the
                                                                                     ## basis
                                                                                     ## curve
                                                                                     ## C
                                                                                     ## is
                                                                                     ## periodic,
                                                                                     ## there
                                                                                     ## is
                                                                                     ## an
                                                                                     ##
                                                                                     ## !
                                                                                     ## ambiguity
                                                                                     ## because
                                                                                     ## two
                                                                                     ## parts
                                                                                     ## are
                                                                                     ## available.
                                                                                     ## In
                                                                                     ## this
                                                                                     ##
                                                                                     ## !
                                                                                     ## case,
                                                                                     ## the
                                                                                     ## trimmed
                                                                                     ## curve
                                                                                     ## has
                                                                                     ## the
                                                                                     ## same
                                                                                     ## orientation
                                                                                     ##
                                                                                     ## !
                                                                                     ## as
                                                                                     ## the
                                                                                     ## basis
                                                                                     ## curve
                                                                                     ## if
                                                                                     ## Sense
                                                                                     ## is
                                                                                     ## true
                                                                                     ## (default
                                                                                     ## value)
                                                                                     ##
                                                                                     ## !
                                                                                     ## or
                                                                                     ## the
                                                                                     ## opposite
                                                                                     ## orientation
                                                                                     ## if
                                                                                     ## Sense
                                                                                     ## is
                                                                                     ## false.
                                                                                     ##
                                                                                     ## !
                                                                                     ## -
                                                                                     ## If
                                                                                     ## the
                                                                                     ## curve
                                                                                     ## is
                                                                                     ## closed
                                                                                     ## but
                                                                                     ## not
                                                                                     ## periodic,
                                                                                     ## it
                                                                                     ## is
                                                                                     ## not
                                                                                     ##
                                                                                     ## !
                                                                                     ## possible
                                                                                     ## to
                                                                                     ## keep
                                                                                     ## the
                                                                                     ## part
                                                                                     ## of
                                                                                     ## the
                                                                                     ## curve
                                                                                     ## which
                                                                                     ##
                                                                                     ## !
                                                                                     ## includes
                                                                                     ## the
                                                                                     ## junction
                                                                                     ## point
                                                                                     ## (except
                                                                                     ## if
                                                                                     ## the
                                                                                     ## junction
                                                                                     ##
                                                                                     ## !
                                                                                     ## point
                                                                                     ## is
                                                                                     ## at
                                                                                     ## the
                                                                                     ## beginning
                                                                                     ## or
                                                                                     ## at
                                                                                     ## the
                                                                                     ## end
                                                                                     ## of
                                                                                     ## the
                                                                                     ##
                                                                                     ## !
                                                                                     ## trimmed
                                                                                     ## curve).
                                                                                     ## If
                                                                                     ## you
                                                                                     ## tried
                                                                                     ## to
                                                                                     ## do
                                                                                     ## this,
                                                                                     ## you
                                                                                     ## could
                                                                                     ##
                                                                                     ## !
                                                                                     ## alter
                                                                                     ## the
                                                                                     ## fundamental
                                                                                     ## characteristics
                                                                                     ## of
                                                                                     ## the
                                                                                     ## basis
                                                                                     ##
                                                                                     ## !
                                                                                     ## curve,
                                                                                     ## which
                                                                                     ## are
                                                                                     ## used,
                                                                                     ## for
                                                                                     ## example,
                                                                                     ## to
                                                                                     ## compute
                                                                                     ##
                                                                                     ## !
                                                                                     ## the
                                                                                     ## derivatives
                                                                                     ## of
                                                                                     ## the
                                                                                     ## trimmed
                                                                                     ## curve.
                                                                                     ## The
                                                                                     ## rules
                                                                                     ##
                                                                                     ## !
                                                                                     ## for
                                                                                     ## a
                                                                                     ## closed
                                                                                     ## curve
                                                                                     ## are
                                                                                     ## therefore
                                                                                     ## the
                                                                                     ## same
                                                                                     ## as
                                                                                     ##
                                                                                     ## !
                                                                                     ## those
                                                                                     ## for
                                                                                     ## an
                                                                                     ## open
                                                                                     ## curve.
                                                                                     ##
                                                                                     ## !
                                                                                     ## Warning:
                                                                                     ## The
                                                                                     ## trimmed
                                                                                     ## curve
                                                                                     ## is
                                                                                     ## built
                                                                                     ## from
                                                                                     ## a
                                                                                     ## copy
                                                                                     ## of
                                                                                     ## curve
                                                                                     ## C.
                                                                                     ##
                                                                                     ## !
                                                                                     ## Therefore,
                                                                                     ## when
                                                                                     ## C
                                                                                     ## is
                                                                                     ## modified,
                                                                                     ## the
                                                                                     ## trimmed
                                                                                     ## curve
                                                                                     ##
                                                                                     ## !
                                                                                     ## is
                                                                                     ## not
                                                                                     ## modified.
                                                                                     ##
                                                                                     ## !
                                                                                     ## -
                                                                                     ## If
                                                                                     ## the
                                                                                     ## basis
                                                                                     ## curve
                                                                                     ## is
                                                                                     ## periodic
                                                                                     ## and
                                                                                     ## theAdjustPeriodic
                                                                                     ## is
                                                                                     ## True,
                                                                                     ##
                                                                                     ## !
                                                                                     ## the
                                                                                     ## bounds
                                                                                     ## of
                                                                                     ## the
                                                                                     ## trimmed
                                                                                     ## curve
                                                                                     ## may
                                                                                     ## be
                                                                                     ## different
                                                                                     ## from
                                                                                     ## U1
                                                                                     ## and
                                                                                     ## U2
                                                                                     ##
                                                                                     ## !
                                                                                     ## if
                                                                                     ## the
                                                                                     ## parametric
                                                                                     ## origin
                                                                                     ## of
                                                                                     ## the
                                                                                     ## basis
                                                                                     ## curve
                                                                                     ## is
                                                                                     ## within
                                                                                     ##
                                                                                     ## !
                                                                                     ## the
                                                                                     ## arc
                                                                                     ## of
                                                                                     ## the
                                                                                     ## trimmed
                                                                                     ## curve.
                                                                                     ## In
                                                                                     ## this
                                                                                     ## case,
                                                                                     ## the
                                                                                     ##
                                                                                     ## !
                                                                                     ## modified
                                                                                     ## parameter
                                                                                     ## will
                                                                                     ## be
                                                                                     ## equal
                                                                                     ## to
                                                                                     ## U1
                                                                                     ## or
                                                                                     ## U2
                                                                                     ##
                                                                                     ## !
                                                                                     ## plus
                                                                                     ## or
                                                                                     ## minus
                                                                                     ## the
                                                                                     ## period.
                                                                                     ##
                                                                                     ## !
                                                                                     ## When
                                                                                     ## theAdjustPeriodic
                                                                                     ## is
                                                                                     ## False,
                                                                                     ## parameters
                                                                                     ## U1
                                                                                     ## and
                                                                                     ## U2
                                                                                     ## will
                                                                                     ## be
                                                                                     ##
                                                                                     ## !
                                                                                     ## the
                                                                                     ## same,
                                                                                     ## without
                                                                                     ## adjustment
                                                                                     ## into
                                                                                     ## the
                                                                                     ## first
                                                                                     ## period.
                                                                                     ##
                                                                                     ## !
                                                                                     ## Exceptions
                                                                                     ##
                                                                                     ## !
                                                                                     ## Standard_ConstructionError
                                                                                     ## if:
                                                                                     ##
                                                                                     ## !
                                                                                     ## -
                                                                                     ## C
                                                                                     ## is
                                                                                     ## not
                                                                                     ## periodic
                                                                                     ## and
                                                                                     ## U1
                                                                                     ## or
                                                                                     ## U2
                                                                                     ## is
                                                                                     ## outside
                                                                                     ## the
                                                                                     ##
                                                                                     ## !
                                                                                     ## bounds
                                                                                     ## of
                                                                                     ## C,
                                                                                     ## or
                                                                                     ##
                                                                                     ## !
                                                                                     ## -
                                                                                     ## U1
                                                                                     ## is
                                                                                     ## equal
                                                                                     ## to
                                                                                     ## U2.
type
  HandleGeomCurve* {.importcpp:"opencascade::handle<Geom_Curve>", header: "Standard_Handle.hxx", bycopy, pure, inheritable.} = object
  GeomSequenceOfBSplineSurface* = NCollectionSequence[Handle[GeomBSplineSurface]]
  HandleGeomAxis1Placement* = Handle[GeomAxis1Placement]
  HandleGeomAxis2Placement* = Handle[GeomAxis2Placement]
  HandleGeomAxisPlacement* = Handle[GeomAxisPlacement]
  HandleGeomBezierCurve* = Handle[GeomBezierCurve]
  HandleGeomBezierSurface* = Handle[GeomBezierSurface]
  HandleGeomBoundedCurve* = Handle[GeomBoundedCurve]
  HandleGeomBoundedSurface* = Handle[GeomBoundedSurface]
  HandleGeomBSplineCurve* = Handle[GeomBSplineCurve]
  HandleGeomBSplineSurface* = Handle[GeomBSplineSurface]
  HandleGeomCartesianPoint* = Handle[GeomCartesianPoint]
  HandleGeomCircle* = Handle[GeomCircle]
  HandleGeomConic* = Handle[GeomConic]
  HandleGeomConicalSurface* = Handle[GeomConicalSurface]
  HandleGeomCylindricalSurface* = Handle[GeomCylindricalSurface]
  HandleGeomDirection* = Handle[GeomDirection]
  HandleGeomElementarySurface* = Handle[GeomElementarySurface]
  HandleGeomEllipse* = Handle[GeomEllipse]
  HandleGeomGeometry* = Handle[GeomGeometry]
  HandleGeomHyperbola* = Handle[GeomHyperbola]
  HandleGeomLine* = Handle[GeomLine]
  HandleGeomOffsetCurve* = Handle[GeomOffsetCurve]
  HandleGeomOffsetSurface* = Handle[GeomOffsetSurface]
  HandleGeomParabola* = Handle[GeomParabola]
  HandleGeomPlane* = Handle[GeomPlane]
  HandleGeomPoint* = Handle[GeomPoint]
  HandleGeomRectangularTrimmedSurface* = Handle[GeomRectangularTrimmedSurface]
  HandleGeomSphericalSurface* = Handle[GeomSphericalSurface]
  HandleGeomSurface* = Handle[GeomSurface]
  HandleGeomSurfaceOfLinearExtrusion* = Handle[GeomSurfaceOfLinearExtrusion]
  HandleGeomSurfaceOfRevolution* = Handle[GeomSurfaceOfRevolution]
  HandleGeomSweptSurface* = Handle[GeomSweptSurface]
  HandleGeomToroidalSurface* = Handle[GeomToroidalSurface]
  HandleGeomTransformation* = Handle[GeomTransformation]
  HandleGeomUndefinedDerivative* = Handle[GeomUndefinedDerivative]
  HandleGeomUndefinedValue* = Handle[GeomUndefinedValue]
  HandleGeomVector* = Handle[GeomVector]
  HandleGeomVectorWithMagnitude* = Handle[GeomVectorWithMagnitude]
  HandleGeomTrimmedCurve* {.importcpp:"opencascade::handle<Geom_TrimmedCurve>", header: "Standard_Handle.hxx", bycopy.} = object of HandleGeomCurve
  GeomAxis1Placement* {.importcpp: "Geom_Axis1Placement",
                       header: "Geom_Axis1Placement.hxx", bycopy.} = object of GeomAxisPlacement 
  GeomAxis2Placement* {.importcpp: "Geom_Axis2Placement",
                       header: "Geom_Axis2Placement.hxx", bycopy.} = object of GeomAxisPlacement 
  GeomAxisPlacement* {.importcpp: "Geom_AxisPlacement",
                      header: "Geom_AxisPlacement.hxx", bycopy.} = object of GeomGeometry 
  GeomBezierCurve* {.importcpp: "Geom_BezierCurve", header: "Geom_BezierCurve.hxx",
                    bycopy.} = object of GeomBoundedCurve 
  GeomBezierSurface* {.importcpp: "Geom_BezierSurface",
                      header: "Geom_BezierSurface.hxx", bycopy.} = object of GeomBoundedSurface 
  GeomBoundedCurve* {.importcpp: "Geom_BoundedCurve",
                     header: "Geom_BoundedCurve.hxx", bycopy.} = object of GeomCurve 
  GeomBSplineCurve* {.importcpp: "Geom_BSplineCurve",
                     header: "Geom_BSplineCurve.hxx", bycopy.} = object of GeomBoundedCurve 
  GeomBSplineSurface* {.importcpp: "Geom_BSplineSurface",
                       header: "Geom_BSplineSurface.hxx", bycopy.} = object of GeomBoundedSurface 
  GeomCartesianPoint* {.importcpp: "Geom_CartesianPoint",
                       header: "Geom_CartesianPoint.hxx", bycopy.} = object of GeomPoint 
  GeomCircle* {.importcpp: "Geom_Circle", header: "Geom_Circle.hxx", bycopy.} = object of GeomConic 
  GeomConic* {.importcpp: "Geom_Conic", header: "Geom_Conic.hxx", bycopy.} = object of GeomCurve 
  GeomConicalSurface* {.importcpp: "Geom_ConicalSurface",
                       header: "Geom_ConicalSurface.hxx", bycopy.} = object of GeomElementarySurface 
  GeomCurve* {.importcpp: "Geom_Curve", header: "Geom_Curve.hxx", bycopy.} = object of GeomGeometry 
  GeomCylindricalSurface* {.importcpp: "Geom_CylindricalSurface",
                           header: "Geom_CylindricalSurface.hxx", bycopy.} = object of GeomElementarySurface 
  GeomDirection* {.importcpp: "Geom_Direction", header: "Geom_Direction.hxx", bycopy.} = object of GeomVector 
  GeomElementarySurface* {.importcpp: "Geom_ElementarySurface",
                          header: "Geom_ElementarySurface.hxx", bycopy.} = object of GeomSurface 
  GeomEllipse* {.importcpp: "Geom_Ellipse", header: "Geom_Ellipse.hxx", bycopy.} = object of GeomConic 
  GeomGeometry* {.importcpp: "Geom_Geometry", header: "Geom_Geometry.hxx", bycopy.} = object of StandardTransient 
  GeomHSequenceOfBSplineSurface* {.importcpp: "Geom_HSequenceOfBSplineSurface",
                                  header: "Geom_HSequenceOfBSplineSurface.hxx",
                                  bycopy.} = object of GeomSequenceOfBSplineSurface
  GeomHyperbola* {.importcpp: "Geom_Hyperbola", header: "Geom_Hyperbola.hxx", bycopy.} = object of GeomConic 
  GeomLine* {.importcpp: "Geom_Line", header: "Geom_Line.hxx", bycopy.} = object of GeomCurve 
  GeomOffsetCurve* {.importcpp: "Geom_OffsetCurve", header: "Geom_OffsetCurve.hxx",
                    bycopy.} = object of GeomCurve 
  GeomOffsetSurface* {.importcpp: "Geom_OffsetSurface",
                      header: "Geom_OffsetSurface.hxx", bycopy.} = object of GeomSurface 
  HandleGeomOsculatingSurface* = Handle[GeomOsculatingSurface]
  GeomOsculatingSurface* {.importcpp: "Geom_OsculatingSurface",
                          header: "Geom_OsculatingSurface.hxx", bycopy.} = object of StandardTransient 
  GeomParabola* {.importcpp: "Geom_Parabola", header: "Geom_Parabola.hxx", bycopy.} = object of GeomConic 
  GeomPlane* {.importcpp: "Geom_Plane", header: "Geom_Plane.hxx", bycopy.} = object of GeomElementarySurface 
  GeomPoint* {.importcpp: "Geom_Point", header: "Geom_Point.hxx", bycopy.} = object of GeomGeometry 
  GeomRectangularTrimmedSurface* {.importcpp: "Geom_RectangularTrimmedSurface",
                                  header: "Geom_RectangularTrimmedSurface.hxx",
                                  bycopy.} = object of GeomBoundedSurface 
  GeomSphericalSurface* {.importcpp: "Geom_SphericalSurface",
                         header: "Geom_SphericalSurface.hxx", bycopy.} = object of GeomElementarySurface 
  GeomSurface* {.importcpp: "Geom_Surface", header: "Geom_Surface.hxx", bycopy.} = object of GeomGeometry 
  GeomSurfaceOfLinearExtrusion* {.importcpp: "Geom_SurfaceOfLinearExtrusion",
                                 header: "Geom_SurfaceOfLinearExtrusion.hxx",
                                 bycopy.} = object of GeomSweptSurface 
  GeomSurfaceOfRevolution* {.importcpp: "Geom_SurfaceOfRevolution",
                            header: "Geom_SurfaceOfRevolution.hxx", bycopy.} = object of GeomSweptSurface 
  GeomSweptSurface* {.importcpp: "Geom_SweptSurface",
                     header: "Geom_SweptSurface.hxx", bycopy.} = object of GeomSurface 
  GeomToroidalSurface* {.importcpp: "Geom_ToroidalSurface",
                        header: "Geom_ToroidalSurface.hxx", bycopy.} = object of GeomElementarySurface 
  GeomTransformation* {.importcpp: "Geom_Transformation",
                       header: "Geom_Transformation.hxx", bycopy.} = object of StandardTransient 
  GeomTrimmedCurve* {.importcpp: "Geom_TrimmedCurve",
                     header: "Geom_TrimmedCurve.hxx", bycopy.} = object of GeomBoundedCurve 
  GeomVector* {.importcpp: "Geom_Vector", header: "Geom_Vector.hxx", bycopy.} = object of GeomGeometry 
  GeomVector* {.importcpp: "Geom_Vector", header: "Geom_Vector.hxx", bycopy.} = object of GeomGeometry 
  GeomVectorWithMagnitude* {.importcpp: "Geom_VectorWithMagnitude",
                            header: "Geom_VectorWithMagnitude.hxx", bycopy.} = object of GeomVector 
type
  HandleGeomUndefinedDerivative* = Handle[GeomUndefinedDerivative]
type
  HandleGeomUndefinedValue* = Handle[GeomUndefinedValue]
type
  HandleGeomVector* = Handle[GeomVector]
## ! The abstract class Vector describes the common
## ! behavior of vectors in 3D space.
## ! The Geom package provides two concrete classes of
## ! vectors: Geom_Direction (unit vector) and Geom_VectorWithMagnitude.
type
  GeomVector* {.importcpp: "Geom_Vector", header: "Geom_Vector.hxx", bycopy.} = object of GeomGeometry ##
                                                                                             ## !
                                                                                             ## Reverses
                                                                                             ## the
                                                                                             ## vector
                                                                                             ## <me>.
type
  HandleGeomVectorWithMagnitude* = Handle[GeomVectorWithMagnitude]
## ! Defines a vector with magnitude.
## ! A vector with magnitude can have a zero length.
type
  GeomVectorWithMagnitude* {.importcpp: "Geom_VectorWithMagnitude",
                            header: "Geom_VectorWithMagnitude.hxx", bycopy.} = object of GeomVector ##
                                                                                             ## !
                                                                                             ## Creates
                                                                                             ## a
                                                                                             ## transient
                                                                                             ## copy
                                                                                             ## of
                                                                                             ## V.
