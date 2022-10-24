type
  HandleGeom2dAxisPlacement* = Handle[Geom2dAxisPlacement]
## ! Describes an axis in 2D space.
## ! An axis is defined by:
## ! - its origin, also termed the "Location point" of the axis,
## ! - its unit vector, termed the "Direction" of the axis.
## ! Note: Geom2d_AxisPlacement axes provide the
## ! same kind of "geometric" services as gp_Ax2d axes
## ! but have more complex data structures. The
## ! geometric objects provided by the Geom2d package
## ! use gp_Ax2d objects to include axes in their data
## ! structures, or to define an axis of symmetry or axis of rotation.
## ! Geom2d_AxisPlacement axes are used in a context
## ! where they can be shared by several objects
## ! contained inside a common data structure.
type
  Geom2dAxisPlacement* {.importcpp: "Geom2d_AxisPlacement",
                        header: "Geom2d_AxisPlacement.hxx", bycopy.} = object of Geom2dGeometry ##
                                                                                         ## !
                                                                                         ## Constructs
                                                                                         ## an
                                                                                         ## axis
                                                                                         ## by
                                                                                         ## conversion
                                                                                         ## of
                                                                                         ## the
                                                                                         ## gp_Ax2d
                                                                                         ## axis
                                                                                         ## A.
type
  HandleGeom2dBezierCurve* = Handle[Geom2dBezierCurve]
## ! Describes a rational or non-rational Bezier curve
## ! - a non-rational Bezier curve is defined by a table
## ! of poles (also called control points),
## ! - a rational Bezier curve is defined by a table of
## ! poles with varying weights.
## ! These data are manipulated by two parallel arrays:
## ! - the poles table, which is an array of gp_Pnt2d points, and
## ! - the weights table, which is an array of reals.
## ! The bounds of these arrays are 1 and "the number of poles" of the curve.
## ! The poles of the curve are "control points" used to deform the curve.
## ! The first pole is the start point of the curve, and the
## ! last pole is the end point of the curve. The segment
## ! which joins the first pole to the second pole is the
## ! tangent to the curve at its start point, and the
## ! segment which joins the last pole to the
## ! second-from-last pole is the tangent to the curve
## ! at its end point.
## ! It is more difficult to give a geometric signification
## ! to the weights but they are useful for providing
## ! exact representations of the arcs of a circle or
## ! ellipse. Moreover, if the weights of all the poles are
## ! equal, the curve is polynomial; it is therefore a
## ! non-rational curve. The non-rational curve is a
## ! special and frequently used case. The weights are
## ! defined and used only in case of a rational curve.
## ! The degree of a Bezier curve is equal to the
## ! number of poles, minus 1. It must be greater than or
## ! equal to 1. However, the degree of a
## ! Geom2d_BezierCurve curve is limited to a value
## ! (25) which is defined and controlled by the system.
## ! This value is returned by the function MaxDegree.
## ! The parameter range for a Bezier curve is [ 0, 1 ].
## ! If the first and last control points of the Bezier
## ! curve are the same point then the curve is closed.
## ! For example, to create a closed Bezier curve with
## ! four control points, you have to give a set of control
## ! points P1, P2, P3 and P1.
## ! The continuity of a Bezier curve is infinite.
## ! It is not possible to build a Bezier curve with
## ! negative weights. We consider that a weight value
## ! is zero if it is less than or equal to
## ! gp::Resolution(). We also consider that
## ! two weight values W1 and W2 are equal if:
## ! |W2 - W1| <= gp::Resolution().
## ! Warning
## ! - When considering the continuity of a closed
## ! Bezier curve at the junction point, remember that
## ! a curve of this type is never periodic. This means
## ! that the derivatives for the parameter u = 0
## ! have no reason to be the same as the
## ! derivatives for the parameter u = 1 even if the curve is closed.
## ! - The length of a Bezier curve can be null.
type
  Geom2dBezierCurve* {.importcpp: "Geom2d_BezierCurve",
                      header: "Geom2d_BezierCurve.hxx", bycopy.} = object of Geom2dBoundedCurve ##
                                                                                         ## !
                                                                                         ## Creates
                                                                                         ## a
                                                                                         ## non
                                                                                         ## rational
                                                                                         ## Bezier
                                                                                         ## curve
                                                                                         ## with
                                                                                         ## a
                                                                                         ## set
                                                                                         ## of
                                                                                         ## poles
                                                                                         ## :
                                                                                         ##
                                                                                         ## !
                                                                                         ## CurvePoles.
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
                                                                                         ## Raises
                                                                                         ## ConstructionError
                                                                                         ## if
                                                                                         ## the
                                                                                         ## number
                                                                                         ## of
                                                                                         ## poles
                                                                                         ## is
                                                                                         ## greater
                                                                                         ## than
                                                                                         ## MaxDegree
                                                                                         ## +
                                                                                         ## 1
                                                                                         ##
                                                                                         ## !
                                                                                         ## or
                                                                                         ## lower
                                                                                         ## than
                                                                                         ## 2.
                                                                                         ##
                                                                                         ## !
                                                                                         ## Set
                                                                                         ## poles
                                                                                         ## to
                                                                                         ## Poles,
                                                                                         ## weights
                                                                                         ## to
                                                                                         ## Weights
                                                                                         ## (not
                                                                                         ##
                                                                                         ## !
                                                                                         ## copied).
                                                                                         ## If
                                                                                         ## Weights
                                                                                         ## is
                                                                                         ## null
                                                                                         ## the
                                                                                         ## curve
                                                                                         ## is
                                                                                         ## non
                                                                                         ##
                                                                                         ## !
                                                                                         ## rational.
                                                                                         ## Create
                                                                                         ## the
                                                                                         ## arrays
                                                                                         ## of
                                                                                         ## coefficients.
                                                                                         ## Poles
                                                                                         ##
                                                                                         ## !
                                                                                         ## and
                                                                                         ## Weights
                                                                                         ## are
                                                                                         ## assumed
                                                                                         ## to
                                                                                         ## have
                                                                                         ## the
                                                                                         ## first
                                                                                         ##
                                                                                         ## !
                                                                                         ## coefficient
                                                                                         ## 1.
                                                                                         ##
                                                                                         ## !
                                                                                         ##
                                                                                         ## !
                                                                                         ## Update
                                                                                         ## rational
                                                                                         ## and
                                                                                         ## closed.
                                                                                         ##
                                                                                         ## !
                                                                                         ##
                                                                                         ## !
                                                                                         ## if
                                                                                         ## nbpoles
                                                                                         ## <
                                                                                         ## 2
                                                                                         ## or
                                                                                         ## nbboles
                                                                                         ## >
                                                                                         ## MaDegree
                                                                                         ## +
                                                                                         ## 1
type
  HandleGeom2dBoundedCurve* = Handle[Geom2dBoundedCurve]
## ! The abstract class BoundedCurve describes the
## ! common behavior of bounded curves in 2D space. A
## ! bounded curve is limited by two finite values of the
## ! parameter, termed respectively "first parameter" and
## ! "last parameter". The "first parameter" gives the "start
## ! point" of the bounded curve, and the "last parameter"
## ! gives the "end point" of the bounded curve.
## ! The length of a bounded curve is finite.
## ! The Geom2d package provides three concrete
## ! classes of bounded curves:
## ! - two frequently used mathematical formulations of complex curves:
## ! - Geom2d_BezierCurve,
## ! - Geom2d_BSplineCurve, and
## ! - Geom2d_TrimmedCurve to trim a curve, i.e. to
## ! only take part of the curve limited by two values of
## ! the parameter of the basis curve.
type
  Geom2dBoundedCurve* {.importcpp: "Geom2d_BoundedCurve",
                       header: "Geom2d_BoundedCurve.hxx", bycopy.} = object of Geom2dCurve ##
                                                                                    ## !
                                                                                    ## Returns
                                                                                    ## the
                                                                                    ## end
                                                                                    ## point
                                                                                    ## of
                                                                                    ## the
                                                                                    ## curve.
                                                                                    ##
                                                                                    ## !
                                                                                    ## The
                                                                                    ## end
                                                                                    ## point
                                                                                    ## is
                                                                                    ## the
                                                                                    ## value
                                                                                    ## of
                                                                                    ## the
                                                                                    ## curve
                                                                                    ## for
                                                                                    ## the
                                                                                    ##
                                                                                    ## !
                                                                                    ## "LastParameter"
                                                                                    ## of
                                                                                    ## the
                                                                                    ## curve.
type
  HandleGeom2dBSplineCurve* = Handle[Geom2dBSplineCurve]
## ! Describes a BSpline curve.
## ! A BSpline curve can be:
## ! - uniform or non-uniform,
## ! - rational or non-rational,
## ! - periodic or non-periodic.
## ! A BSpline curve is defined by:
## ! - its degree; the degree for a
## ! Geom2d_BSplineCurve is limited to a value (25)
## ! which is defined and controlled by the system. This
## ! value is returned by the function MaxDegree;
## ! - its periodic or non-periodic nature;
## ! - a table of poles (also called control points), with
## ! their associated weights if the BSpline curve is
## ! rational. The poles of the curve are "control points"
## ! used to deform the curve. If the curve is
## ! non-periodic, the first pole is the start point of the
## ! curve, and the last pole is the end point of the
## ! curve. The segment, which joins the first pole to the
## ! second pole, is the tangent to the curve at its start
## ! point, and the segment, which joins the last pole to
## ! the second-from-last pole, is the tangent to the
## ! curve at its end point. If the curve is periodic, these
## ! geometric properties are not verified. It is more
## ! difficult to give a geometric signification to the
## ! weights but they are useful for providing exact
## ! representations of the arcs of a circle or ellipse.
## ! Moreover, if the weights of all the poles are equal,
## ! the curve has a polynomial equation; it is
## ! therefore a non-rational curve.
## ! - a table of knots with their multiplicities. For a
## ! Geom2d_BSplineCurve, the table of knots is an
## ! increasing sequence of reals without repetition; the
## ! multiplicities define the repetition of the knots. A
## ! BSpline curve is a piecewise polynomial or rational
## ! curve. The knots are the parameters of junction
## ! points between two pieces. The multiplicity
## ! Mult(i) of the knot Knot(i) of the BSpline
## ! curve is related to the degree of continuity of the
## ! curve at the knot Knot(i), which is equal to
## ! Degree - Mult(i) where Degree is the
## ! degree of the BSpline curve.
## ! If the knots are regularly spaced (i.e. the difference
## ! between two consecutive knots is a constant), three
## ! specific and frequently used cases of knot distribution
## ! can be identified:
## ! - "uniform" if all multiplicities are equal to 1,
## ! - "quasi-uniform" if all multiplicities are equal to 1,
## ! except the first and the last knot which have a
## ! multiplicity of Degree + 1, where Degree is
## ! the degree of the BSpline curve,
## ! - "Piecewise Bezier" if all multiplicities are equal to
## ! Degree except the first and last knot which have
## ! a multiplicity of Degree + 1, where Degree is
## ! the degree of the BSpline curve. A curve of this
## ! type is a concatenation of arcs of Bezier curves.
## ! If the BSpline curve is not periodic:
## ! - the bounds of the Poles and Weights tables are 1
## ! and NbPoles, where NbPoles is the number of
## ! poles of the BSpline curve,
## ! - the bounds of the Knots and Multiplicities tables are
## ! 1 and NbKnots, where NbKnots is the number
## ! of knots of the BSpline curve.
## ! If the BSpline curve is periodic, and if there are k
## ! periodic knots and p periodic poles, the period is:
## ! period = Knot(k + 1) - Knot(1)
## ! and the poles and knots tables can be considered as
## ! infinite tables, such that:
## ! - Knot(i+k) = Knot(i) + period
## ! - Pole(i+p) = Pole(i)
## ! Note: data structures of a periodic BSpline curve are
## ! more complex than those of a non-periodic one.
## ! Warnings :
## ! In this class we consider that a weight value is zero if
## ! Weight <= Resolution from package gp.
## ! For two parametric values (or two knot values) U1, U2 we
## ! consider that U1 = U2 if Abs (U2 - U1) <= Epsilon (U1).
## ! For two weights values W1, W2 we consider that W1 = W2 if
## ! Abs (W2 - W1) <= Epsilon (W1).  The method Epsilon is
## ! defined in the class Real from package Standard.
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
  Geom2dBSplineCurve* {.importcpp: "Geom2d_BSplineCurve",
                       header: "Geom2d_BSplineCurve.hxx", bycopy.} = object of Geom2dBoundedCurve ##
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
                                                                                           ## Degree
                                                                                           ## <=
                                                                                           ## MaxDegree.
                                                                                           ##
                                                                                           ## !
                                                                                           ##
                                                                                           ## !
                                                                                           ## Knots.Length()
                                                                                           ## ==
                                                                                           ## Mults.Length()
                                                                                           ## >=
                                                                                           ## 2
                                                                                           ##
                                                                                           ## !
                                                                                           ##
                                                                                           ## !
                                                                                           ## Knots(i)
                                                                                           ## <
                                                                                           ## Knots(i+1)
                                                                                           ## (Knots
                                                                                           ## are
                                                                                           ## increasing)
                                                                                           ##
                                                                                           ## !
                                                                                           ##
                                                                                           ## !
                                                                                           ## 1
                                                                                           ## <=
                                                                                           ## Mults(i)
                                                                                           ## <=
                                                                                           ## Degree
                                                                                           ##
                                                                                           ## !
                                                                                           ##
                                                                                           ## !
                                                                                           ## On
                                                                                           ## a
                                                                                           ## non
                                                                                           ## periodic
                                                                                           ## curve
                                                                                           ## the
                                                                                           ## first
                                                                                           ## and
                                                                                           ## last
                                                                                           ## multiplicities
                                                                                           ##
                                                                                           ## !
                                                                                           ## may
                                                                                           ## be
                                                                                           ## Degree+1
                                                                                           ## (this
                                                                                           ## is
                                                                                           ## even
                                                                                           ## recommanded
                                                                                           ## if
                                                                                           ## you
                                                                                           ## want
                                                                                           ## the
                                                                                           ##
                                                                                           ## !
                                                                                           ## curve
                                                                                           ## to
                                                                                           ## start
                                                                                           ## and
                                                                                           ## finish
                                                                                           ## on
                                                                                           ## the
                                                                                           ## first
                                                                                           ## and
                                                                                           ## last
                                                                                           ## pole).
                                                                                           ##
                                                                                           ## !
                                                                                           ##
                                                                                           ## !
                                                                                           ## On
                                                                                           ## a
                                                                                           ## periodic
                                                                                           ## curve
                                                                                           ## the
                                                                                           ## first
                                                                                           ## and
                                                                                           ## the
                                                                                           ## last
                                                                                           ## multicities
                                                                                           ##
                                                                                           ## !
                                                                                           ## must
                                                                                           ## be
                                                                                           ## the
                                                                                           ## same.
                                                                                           ##
                                                                                           ## !
                                                                                           ##
                                                                                           ## !
                                                                                           ## on
                                                                                           ## non-periodic
                                                                                           ## curves
                                                                                           ##
                                                                                           ## !
                                                                                           ##
                                                                                           ## !
                                                                                           ## Poles.Length()
                                                                                           ## ==
                                                                                           ## Sum(Mults(i))
                                                                                           ## -
                                                                                           ## Degree
                                                                                           ## -
                                                                                           ## 1
                                                                                           ## >=
                                                                                           ## 2
                                                                                           ##
                                                                                           ## !
                                                                                           ##
                                                                                           ## !
                                                                                           ## on
                                                                                           ## periodic
                                                                                           ## curves
                                                                                           ##
                                                                                           ## !
                                                                                           ##
                                                                                           ## !
                                                                                           ## Poles.Length()
                                                                                           ## ==
                                                                                           ## Sum(Mults(i))
                                                                                           ## except
                                                                                           ## the
                                                                                           ## first
                                                                                           ## or
                                                                                           ## last
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
  HandleGeom2dCartesianPoint* = Handle[Geom2dCartesianPoint]
## ! Describes a point in 2D space. A
## ! Geom2d_CartesianPoint is defined by a gp_Pnt2d
## ! point, with its two Cartesian coordinates X and Y.
type
  Geom2dCartesianPoint* {.importcpp: "Geom2d_CartesianPoint",
                         header: "Geom2d_CartesianPoint.hxx", bycopy.} = object of Geom2dPoint ##
                                                                                        ## !
                                                                                        ## Returns
                                                                                        ## a
                                                                                        ## persistent
                                                                                        ## copy
                                                                                        ## of
                                                                                        ## P.
type
  HandleGeom2dCircle* = Handle[Geom2dCircle]
## ! Describes a circle in the plane (2D space).
## ! A circle is defined by its radius and, as with any conic
## ! curve, is positioned in the plane with a coordinate
## ! system (gp_Ax22d object) where the origin is the
## ! center of the circle.
## ! The coordinate system is the local coordinate
## ! system of the circle.
## ! The orientation (direct or indirect) of the local
## ! coordinate system gives an explicit orientation to the
## ! circle, determining the direction in which the
## ! parameter increases along the circle.
## ! The Geom2d_Circle circle is parameterized by an angle:
## ! P(U) = O + R*Cos(U)*XDir + R*Sin(U)*YDir
## ! where:
## ! - P is the point of parameter U,
## ! - O, XDir and YDir are respectively the origin, "X
## ! Direction" and "Y Direction" of its local coordinate system,
## ! - R is the radius of the circle.
## ! The "X Axis" of the local coordinate system therefore
## ! defines the origin of the parameter of the circle. The
## ! parameter is the angle with this "X Direction".
## ! A circle is a closed and periodic curve. The period is
## ! 2.*Pi and the parameter range is [ 0,2.*Pi [.
## ! See Also
## ! GCE2d_MakeCircle which provides functions for
## ! more complex circle constructions
## ! gp_Ax22d and  gp_Circ2d for an equivalent, non-parameterized data structure.
type
  Geom2dCircle* {.importcpp: "Geom2d_Circle", header: "Geom2d_Circle.hxx", bycopy.} = object of Geom2dConic ##
                                                                                                  ## !
                                                                                                  ## Constructs
                                                                                                  ## a
                                                                                                  ## circle
                                                                                                  ## by
                                                                                                  ## conversion
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ## gp_Circ2d
                                                                                                  ## circle
                                                                                                  ## C.
type
  HandleGeom2dConic* = Handle[Geom2dConic]
## ! The abstract class Conic describes the common
## ! behavior of conic curves in 2D space and, in
## ! particular, their general characteristics. The Geom2d
## ! package provides four specific classes of conics:
## ! Geom2d_Circle, Geom2d_Ellipse,
## ! Geom2d_Hyperbola and Geom2d_Parabola.
## ! A conic is positioned in the plane with a coordinate
## ! system (gp_Ax22d object), where the origin is the
## ! center of the conic (or the apex in case of a parabola).
## ! This coordinate system is the local coordinate
## ! system of the conic. It gives the conic an explicit
## ! orientation, determining the direction in which the
## ! parameter increases along the conic. The "X Axis" of
## ! the local coordinate system also defines the origin of
## ! the parameter of the conic.
type
  Geom2dConic* {.importcpp: "Geom2d_Conic", header: "Geom2d_Conic.hxx", bycopy.} = object of Geom2dCurve ##
                                                                                               ## !
                                                                                               ## Modifies
                                                                                               ## this
                                                                                               ## conic,
                                                                                               ## redefining
                                                                                               ## its
                                                                                               ## local
                                                                                               ## coordinate
                                                                                               ## system
                                                                                               ##
                                                                                               ## !
                                                                                               ## partially,
                                                                                               ## by
                                                                                               ## assigning
                                                                                               ## theA
                                                                                               ## as
                                                                                               ## its
                                                                                               ## axis
type
  HandleGeom2dCurve* {.importcpp:"opencascade::handle<Geom2d_Curve>", header:"Standard_Handle.hxx", bycopy.} = object of HandleGeom2dGeometry
## ! The abstract class Curve describes the common
## ! behavior of curves in 2D space. The Geom2d
## ! package provides numerous concrete classes of
## ! derived curves, including lines, circles, conics, Bezier
## ! or BSpline curves, etc.
## ! The main characteristic of these curves is that they
## ! are parameterized. The Geom2d_Curve class shows:
## ! - how to work with the parametric equation of a
## ! curve in order to calculate the point of parameter
## ! u, together with the vector tangent and the
## ! derivative vectors of order 2, 3,..., N at this point;
## ! - how to obtain general information about the curve
## ! (for example, level of continuity, closed
## ! characteristics, periodicity, bounds of the parameter field);
## ! - how the parameter changes when a geometric
## ! transformation is applied to the curve or when the
## ! orientation of the curve is inverted.
## ! All curves must have a geometric continuity: a curve is
## ! at least "C0". Generally, this property is checked at
## ! the time of construction or when the curve is edited.
## ! Where this is not the case, the documentation
## ! explicitly states so.
## ! Warning
## ! The Geom2d package does not prevent the
## ! construction of curves with null length or curves which
## ! self-intersect.
type
  Geom2dCurve* {.importcpp: "Geom2d_Curve", header: "Geom2d_Curve.hxx", bycopy.} = object of Geom2dGeometry ##
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
  HandleGeom2dDirection* = Handle[Geom2dDirection]
## ! The class Direction specifies a vector that is never null.
## ! It is a unit vector.
type
  Geom2dDirection* {.importcpp: "Geom2d_Direction", header: "Geom2d_Direction.hxx",
                    bycopy.} = object of Geom2dVector ## ! Creates a unit vector with it 2 cartesian coordinates.
                                                 ## !
                                                 ## ! Raised if Sqrt( X*X + Y*Y) <= Resolution from gp.
type
  HandleGeom2dEllipse* = Handle[Geom2dEllipse]
## ! Describes an ellipse in the plane (2D space).
## ! An ellipse is defined by its major and minor radii and,
## ! as with any conic curve, is positioned in the plane
## ! with a coordinate system (gp_Ax22d object) where:
## ! - the origin is the center of the ellipse,
## ! - the "X Direction" defines the major axis, and
## ! - the "Y Direction" defines the minor axis.
## ! This coordinate system is the local coordinate system of the ellipse.
## ! The orientation (direct or indirect) of the local
## ! coordinate system gives an explicit orientation to the
## ! ellipse, determining the direction in which the
## ! parameter increases along the ellipse.
## ! The Geom2d_Ellipse ellipse is parameterized by an angle:
## ! P(U) = O + MajorRad*Cos(U)*XDir + MinorRad*Sin(U)*YDir
## ! where:
## ! - P is the point of parameter U,
## ! - O, XDir and YDir are respectively the origin, "X
## ! Direction" and "Y Direction" of its local coordinate system,
## ! - MajorRad and MinorRad are the major and
## ! minor radii of the ellipse.
## ! The "X Axis" of the local coordinate system therefore
## ! defines the origin of the parameter of the ellipse.
## ! An ellipse is a closed and periodic curve. The period
## ! is 2.*Pi and the parameter range is [ 0,2.*Pi [.
## ! See Also
## ! GCE2d_MakeEllipse which provides functions for
## ! more complex ellipse constructions
## ! gp_Ax22d
## ! gp_Elips2d for an equivalent, non-parameterized data structure
type
  Geom2dEllipse* {.importcpp: "Geom2d_Ellipse", header: "Geom2d_Ellipse.hxx", bycopy.} = object of Geom2dConic ##
                                                                                                     ## !
                                                                                                     ## Creates
                                                                                                     ## an
                                                                                                     ## ellipse
                                                                                                     ## by
                                                                                                     ## conversion
                                                                                                     ## of
                                                                                                     ## the
                                                                                                     ## gp_Elips2d
                                                                                                     ## ellipse
                                                                                                     ## E.
type
  HandleGeom2dGeometry* {.importcpp:"opencascade::handle<Geom2d_Geometry>", header:"Standard_Handle.hxx", bycopy, pure, inheritable.} = object
## ! The general abstract class Geometry in 2D space describes
## ! the common behaviour of all the geometric entities.
## !
## ! All the objects derived from this class can be move with a
## ! geometric transformation. Only the transformations which
## ! doesn't modify the nature of the geometry are available in
## ! this package.
## ! The method Transform which defines a general transformation
## ! is deferred. The other specifics transformations used the
## ! method Transform.
## ! All the following transformations modify the object itself.
## ! Warning
## ! Only transformations which do not modify the nature
## ! of the geometry can be applied to Geom2d objects:
## ! this is the case with translations, rotations,
## ! symmetries and scales; this is also the case with
## ! gp_Trsf2d composite transformations which are
## ! used to define the geometric transformations applied
## ! using the Transform or Transformed functions.
## ! Note: Geometry defines the "prototype" of the
## ! abstract method Transform which is defined for each
## ! concrete type of derived object. All other
## ! transformations are implemented using the Transform method.
type
  Geom2dGeometry* {.importcpp: "Geom2d_Geometry", header: "Geom2d_Geometry.hxx",
                   bycopy.} = object of StandardTransient ## ! Performs the symmetrical transformation of a Geometry
                                                     ## ! with respect to the point P which is the center of the
                                                     ## ! symmetry and assigns the result to this geometric object.
type
  HandleGeom2dHyperbola* = Handle[Geom2dHyperbola]
## ! Describes a branch of a hyperbola in the plane (2D space).
## ! A hyperbola is defined by its major and minor radii
## ! and, as with any conic curve, is positioned in the
## ! plane with a coordinate system (gp_Ax22d object) where:
## ! - the origin is the center of the hyperbola,
## ! - the "X Direction" defines the major axis, and
## ! - the "Y Direction" defines the minor axis.
## ! This coordinate system is the local coordinate
## ! system of the hyperbola.
## ! The branch of the hyperbola described is the one
## ! located on the positive side of the major axis.
## ! The orientation (direct or indirect) of the local
## ! coordinate system gives an explicit orientation to the
## ! hyperbola, determining the direction in which the
## ! parameter increases along the hyperbola.
## ! The Geom2d_Hyperbola hyperbola is parameterized as follows:
## ! P(U) = O + MajRad*Cosh(U)*XDir + MinRad*Sinh(U)*YDir
## ! where:
## ! - P is the point of parameter U,
## ! - O, XDir and YDir are respectively the origin, "X
## ! Direction" and "Y Direction" of its local coordinate system,
## ! - MajRad and MinRad are the major and minor radii of the hyperbola.
## ! The "X Axis" of the local coordinate system therefore
## ! defines the origin of the parameter of the hyperbola.
## ! The parameter range is ] -infinite,+infinite [.
## ! The following diagram illustrates the respective
## ! positions, in the plane of the hyperbola, of the three
## ! branches of hyperbolas constructed using the
## ! functions OtherBranch, ConjugateBranch1 and
## ! ConjugateBranch2:
## ! ^YAxis
## ! |
## ! FirstConjugateBranch
## ! |
## ! Other         |          Main
## ! --------------------- C
## ! --------------------->XAxis
## ! Branch       |
## ! Branch
## ! |
## ! SecondConjugateBranch
## ! |
## ! Warning
## ! The value of the major radius (on the major axis) can
## ! be less than the value of the minor radius (on the minor axis).
## ! See Also
## ! GCE2d_MakeHyperbola which provides functions for
## ! more complex hyperbola constructions
## ! gp_Ax22d
## ! gp_Hypr2d for an equivalent, non-parameterized data structure
type
  Geom2dHyperbola* {.importcpp: "Geom2d_Hyperbola", header: "Geom2d_Hyperbola.hxx",
                    bycopy.} = object of Geom2dConic ## ! Creates  an Hyperbola from a non persistent one from package gp
type
  HandleGeom2dLine* = Handle[Geom2dLine]
## ! Describes an infinite line in the plane (2D space).
## ! A line is defined and positioned in the plane with an
## ! axis (gp_Ax2d object) which gives it an origin and a unit vector.
## ! The Geom2d_Line line is parameterized as follows:
## ! P (U) = O + U*Dir
## ! where:
## ! - P is the point of parameter U,
## ! - O is the origin and Dir the unit vector of its positioning axis.
## ! The parameter range is ] -infinite, +infinite [.
## ! The orientation of the line is given by the unit vector
## ! of its positioning axis.
## ! See Also
## ! GCE2d_MakeLine which provides functions for more
## ! complex line constructions
## ! gp_Ax2d
## ! gp_Lin2d for an equivalent, non-parameterized data structure.
type
  Geom2dLine* {.importcpp: "Geom2d_Line", header: "Geom2d_Line.hxx", bycopy.} = object of Geom2dCurve ##
                                                                                            ## !
                                                                                            ## Creates
                                                                                            ## a
                                                                                            ## line
                                                                                            ## located
                                                                                            ## in
                                                                                            ## 2D
                                                                                            ## space
                                                                                            ## with
                                                                                            ## the
                                                                                            ## axis
                                                                                            ## placement
                                                                                            ## A.
                                                                                            ##
                                                                                            ## !
                                                                                            ## The
                                                                                            ## Location
                                                                                            ## of
                                                                                            ## A
                                                                                            ## is
                                                                                            ## the
                                                                                            ## origin
                                                                                            ## of
                                                                                            ## the
                                                                                            ## line.
type
  HandleGeom2dOffsetCurve* = Handle[Geom2dOffsetCurve]
## ! This class implements the basis services for the creation,
## ! edition, modification and evaluation of planar offset curve.
## ! The offset curve is obtained by offsetting by distance along
## ! the normal to a basis curve defined in 2D space.
## ! The offset curve in this package can be a self intersecting
## ! curve even if the basis curve does not self-intersect.
## ! The self intersecting portions are not deleted at the
## ! construction time.
## ! An offset curve is a curve at constant distance (Offset) from a
## ! basis curve and the offset curve takes its parametrization from
## ! the basis curve. The Offset curve is in the direction of the
## ! normal to the basis curve N.
## ! The distance offset may be positive or negative to indicate the
## ! preferred side of the curve :
## ! . distance offset >0 => the curve is in the direction of N
## ! . distance offset >0 => the curve is in the direction of - N
## ! On the Offset curve :
## ! Value(u) = BasisCurve.Value(U) + (Offset * (T ^ Z)) / ||T ^ Z||
## ! where T is the tangent vector to the basis curve and Z the
## ! direction of the normal vector to the plane of the curve,
## ! N = T ^ Z defines the offset direction and should not have
## ! null length.
## !
## ! Warnings :
## ! In this package we suppose that the continuity of the offset
## ! curve is one degree less than the continuity of the
## ! basis curve and we don't check that at any point ||T^Z|| != 0.0
## !
## ! So to evaluate the curve it is better to check that the offset
## ! curve is well defined at any point because an exception could
## ! be raised. The check is not done in this package at the creation
## ! of the offset curve because the control needs the use of an
## ! algorithm which cannot be implemented in this package.
## ! The OffsetCurve is closed if the first point and the last point
## ! are the same (The distance between these two points is lower or
## ! equal to the Resolution sea package gp) . The OffsetCurve can be
## ! closed even if the basis curve is not closed.
type
  Geom2dOffsetCurve* {.importcpp: "Geom2d_OffsetCurve",
                      header: "Geom2d_OffsetCurve.hxx", bycopy.} = object of Geom2dCurve ##
                                                                                  ## !
                                                                                  ## Constructs
                                                                                  ## a
                                                                                  ## curve
                                                                                  ## offset
                                                                                  ## from
                                                                                  ## the
                                                                                  ## basis
                                                                                  ## curve
                                                                                  ## C,
                                                                                  ##
                                                                                  ## !
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
                                                                                  ## curve
                                                                                  ## and
                                                                                  ## the
                                                                                  ## basis
                                                                                  ## curve
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
                                                                                  ## curve
                                                                                  ## is
                                                                                  ## built
                                                                                  ## by
                                                                                  ## measuring
                                                                                  ## the
                                                                                  ##
                                                                                  ## !
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
                                                                                  ## C.
                                                                                  ##
                                                                                  ## !
                                                                                  ## This
                                                                                  ## normal
                                                                                  ## vector
                                                                                  ## is
                                                                                  ## obtained
                                                                                  ## by
                                                                                  ## rotating
                                                                                  ## the
                                                                                  ##
                                                                                  ## !
                                                                                  ## vector
                                                                                  ## tangential
                                                                                  ## to
                                                                                  ## C
                                                                                  ## at
                                                                                  ## 90
                                                                                  ## degrees
                                                                                  ## in
                                                                                  ## the
                                                                                  ##
                                                                                  ## !
                                                                                  ## anti-trigonometric
                                                                                  ## sense.
                                                                                  ## The
                                                                                  ## side
                                                                                  ## of
                                                                                  ## C
                                                                                  ## on
                                                                                  ## which
                                                                                  ##
                                                                                  ## !
                                                                                  ## the
                                                                                  ## offset
                                                                                  ## value
                                                                                  ## is
                                                                                  ## measured
                                                                                  ## is
                                                                                  ## indicated
                                                                                  ## by
                                                                                  ## this
                                                                                  ##
                                                                                  ## !
                                                                                  ## normal
                                                                                  ## vector
                                                                                  ## if
                                                                                  ## Offset
                                                                                  ## is
                                                                                  ## positive,
                                                                                  ## or
                                                                                  ## in
                                                                                  ## the
                                                                                  ## inverse
                                                                                  ##
                                                                                  ## !
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
                                                                                  ## curve
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
                                                                                  ## In
                                                                                  ## this
                                                                                  ## package
                                                                                  ## the
                                                                                  ## entities
                                                                                  ## are
                                                                                  ## not
                                                                                  ## shared.
                                                                                  ## The
                                                                                  ## OffsetCurve
                                                                                  ## is
                                                                                  ##
                                                                                  ## !
                                                                                  ## built
                                                                                  ## with
                                                                                  ## a
                                                                                  ## copy
                                                                                  ## of
                                                                                  ## the
                                                                                  ## curve
                                                                                  ## C.
                                                                                  ## So
                                                                                  ## when
                                                                                  ## C
                                                                                  ## is
                                                                                  ## modified
                                                                                  ## the
                                                                                  ##
                                                                                  ## !
                                                                                  ## OffsetCurve
                                                                                  ## is
                                                                                  ## not
                                                                                  ## modified
                                                                                  ##
                                                                                  ## !
                                                                                  ## Warning!
                                                                                  ## if
                                                                                  ## isNotCheckC0
                                                                                  ## =
                                                                                  ## false,
                                                                                  ##
                                                                                  ## !
                                                                                  ## ConstructionError
                                                                                  ## raised
                                                                                  ## if
                                                                                  ## the
                                                                                  ## basis
                                                                                  ## curve
                                                                                  ## C
                                                                                  ## is
                                                                                  ## not
                                                                                  ## at
                                                                                  ## least
                                                                                  ## C1.
                                                                                  ##
                                                                                  ## !
                                                                                  ## No
                                                                                  ## check
                                                                                  ## is
                                                                                  ## done
                                                                                  ## to
                                                                                  ## know
                                                                                  ## if
                                                                                  ## ||V^Z||
                                                                                  ## !=
                                                                                  ## 0.0
                                                                                  ## at
                                                                                  ## any
                                                                                  ## point.
type
  HandleGeom2dParabola* = Handle[Geom2dParabola]
## ! Describes a parabola in the plane (2D space).
## ! A parabola is defined by its focal length (i.e. the
## ! distance between its focus and its apex) and is
## ! positioned in the plane with a coordinate system
## ! (gp_Ax22d object) where:
## ! - the origin is the apex of the parabola, and
## ! - the "X Axis" defines the axis of symmetry; the
## ! parabola is on the positive side of this axis.
## ! This coordinate system is the local coordinate
## ! system of the parabola.
## ! The orientation (direct or indirect) of the local
## ! coordinate system gives an explicit orientation to the
## ! parabola, determining the direction in which the
## ! parameter increases along the parabola.
## ! The Geom_Parabola parabola is parameterized as follows:
## ! P(U) = O + U*U/(4.*F)*XDir + U*YDir, where:
## ! - P is the point of parameter U,
## ! - O, XDir and YDir are respectively the origin, "X
## ! Direction" and "Y Direction" of its local coordinate system,
## ! - F is the focal length of the parabola.
## ! The parameter of the parabola is therefore its Y
## ! coordinate in the local coordinate system, with the "X
## ! Axis" of the local coordinate system defining the
## ! origin of the parameter.
## ! The parameter range is ] -infinite,+infinite [.
type
  Geom2dParabola* {.importcpp: "Geom2d_Parabola", header: "Geom2d_Parabola.hxx",
                   bycopy.} = object of Geom2dConic ## ! Creates a parabola from a non persistent one.
type
  HandleGeom2dPoint* = Handle[Geom2dPoint]
## ! The abstract class Point describes the common
## ! behavior of geometric points in 2D space.
## ! The Geom2d package also provides the concrete
## ! class Geom2d_CartesianPoint.
type
  Geom2dPoint* {.importcpp: "Geom2d_Point", header: "Geom2d_Point.hxx", bycopy.} = object of Geom2dGeometry ##
                                                                                                  ## !
                                                                                                  ## returns
                                                                                                  ## the
                                                                                                  ## Coordinates
                                                                                                  ## of
                                                                                                  ## <me>.
type
  HandleGeom2dTransformation* = Handle[Geom2dTransformation]
## ! The class Transformation allows to create Translation,
## ! Rotation, Symmetry, Scaling and complex transformations
## ! obtained by combination of the previous elementary
## ! transformations.
## ! The Transformation class can also be used to
## ! construct complex transformations by combining
## ! these elementary transformations.
## ! However, these transformations can never change
## ! the type of an object. For example, the projection
## ! transformation can change a circle into an ellipse,
## ! and therefore change the real type of the object.
## ! Such a transformation is forbidden in this
## ! environment and cannot be a Geom2d_Transformation.
## ! The transformation can be represented as follow :
## !
## ! V1   V2     T
## ! | a11  a12    a14 |   | x |      | x'|
## ! | a21  a22    a24 |   | y |      | y'|
## ! |  0    0      1  |   | 1 |      | 1 |
## !
## ! where {V1, V2} defines the vectorial part of the
## ! transformation and T defines the translation part of
## ! the transformation.
## ! - Geom2d_Transformation transformations provide
## ! the same kind of "geometric" services as
## ! gp_Trsf2d ones but have more complex data
## ! structures. The geometric objects provided by the
## ! Geom2d package use gp_Trsf2d transformations
## ! in the syntaxes Transform and Transformed.
## ! - Geom2d_Transformation transformations are
## ! used in a context where they can be shared by
## ! several objects contained inside a common data structure.
type
  Geom2dTransformation* {.importcpp: "Geom2d_Transformation",
                         header: "Geom2d_Transformation.hxx", bycopy.} = object of StandardTransient ##
                                                                                              ## !
                                                                                              ## Creates
                                                                                              ## an
                                                                                              ## identity
                                                                                              ## transformation.
type
  HandleGeom2dTrimmedCurve* {.importcpp:"opencascade::handle<Geom2d_TrimmedCurve>", header:"Standard_Handle.hxx", bycopy.} = object of HandleGeom2dCurve
## ! Defines a portion of a curve limited by two values of
## ! parameters inside the parametric domain of the curve.
## ! The trimmed curve is defined by:
## ! - the basis curve, and
## ! - the two parameter values which limit it.
## ! The trimmed curve can either have the same
## ! orientation as the basis curve or the opposite orientation.
type
  Geom2dTrimmedCurve* {.importcpp: "Geom2d_TrimmedCurve",
                       header: "Geom2d_TrimmedCurve.hxx", bycopy.} = object of Geom2dBoundedCurve ##
                                                                                           ## !
                                                                                           ## Creates
                                                                                           ## a
                                                                                           ## trimmed
                                                                                           ## curve
                                                                                           ## from
                                                                                           ## the
                                                                                           ## basis
                                                                                           ## curve
                                                                                           ## C
                                                                                           ## limited
                                                                                           ## between
                                                                                           ##
                                                                                           ## !
                                                                                           ## U1
                                                                                           ## and
                                                                                           ## U2.
                                                                                           ##
                                                                                           ## !
                                                                                           ##
                                                                                           ## !
                                                                                           ## .
                                                                                           ## U1
                                                                                           ## can
                                                                                           ## be
                                                                                           ## greater
                                                                                           ## or
                                                                                           ## lower
                                                                                           ## than
                                                                                           ## U2.
                                                                                           ##
                                                                                           ## !
                                                                                           ## .
                                                                                           ## The
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
                                                                                           ## .
                                                                                           ## If
                                                                                           ## the
                                                                                           ## basis
                                                                                           ## curve
                                                                                           ## C
                                                                                           ## is
                                                                                           ## periodic
                                                                                           ## there
                                                                                           ## is
                                                                                           ## an
                                                                                           ## ambiguity
                                                                                           ##
                                                                                           ## !
                                                                                           ## because
                                                                                           ## two
                                                                                           ## parts
                                                                                           ## are
                                                                                           ## available.
                                                                                           ## In
                                                                                           ## this
                                                                                           ## case
                                                                                           ## by
                                                                                           ## default
                                                                                           ##
                                                                                           ## !
                                                                                           ## the
                                                                                           ## trimmed
                                                                                           ## curve
                                                                                           ## has
                                                                                           ## the
                                                                                           ## same
                                                                                           ## orientation
                                                                                           ## as
                                                                                           ## the
                                                                                           ## basis
                                                                                           ##
                                                                                           ## !
                                                                                           ## curve
                                                                                           ## (Sense
                                                                                           ## =
                                                                                           ## True).
                                                                                           ## If
                                                                                           ## Sense
                                                                                           ## =
                                                                                           ## False
                                                                                           ## then
                                                                                           ## the
                                                                                           ## orientation
                                                                                           ##
                                                                                           ## !
                                                                                           ## of
                                                                                           ## the
                                                                                           ## trimmed
                                                                                           ## curve
                                                                                           ## is
                                                                                           ## opposite
                                                                                           ## to
                                                                                           ## the
                                                                                           ## orientation
                                                                                           ## of
                                                                                           ## the
                                                                                           ##
                                                                                           ## !
                                                                                           ## basis
                                                                                           ## curve
                                                                                           ## C.
                                                                                           ##
                                                                                           ## !
                                                                                           ## If
                                                                                           ## the
                                                                                           ## curve
                                                                                           ## is
                                                                                           ## closed
                                                                                           ## but
                                                                                           ## not
                                                                                           ## periodic
                                                                                           ## it
                                                                                           ## is
                                                                                           ## not
                                                                                           ## possible
                                                                                           ##
                                                                                           ## !
                                                                                           ## to
                                                                                           ## keep
                                                                                           ## the
                                                                                           ## part
                                                                                           ## of
                                                                                           ## the
                                                                                           ## curve
                                                                                           ## including
                                                                                           ## the
                                                                                           ## junction
                                                                                           ## point
                                                                                           ##
                                                                                           ## !
                                                                                           ## (except
                                                                                           ## if
                                                                                           ## the
                                                                                           ## junction
                                                                                           ## point
                                                                                           ## is
                                                                                           ## at
                                                                                           ## the
                                                                                           ## beginning
                                                                                           ## or
                                                                                           ##
                                                                                           ## !
                                                                                           ## at
                                                                                           ## the
                                                                                           ## end
                                                                                           ## of
                                                                                           ## the
                                                                                           ## trimmed
                                                                                           ## curve)
                                                                                           ## because
                                                                                           ## you
                                                                                           ## could
                                                                                           ## lose
                                                                                           ## the
                                                                                           ##
                                                                                           ## !
                                                                                           ## fundamental
                                                                                           ## characteristics
                                                                                           ## of
                                                                                           ## the
                                                                                           ## basis
                                                                                           ## curve
                                                                                           ## which
                                                                                           ## are
                                                                                           ##
                                                                                           ## !
                                                                                           ## used
                                                                                           ## for
                                                                                           ## example
                                                                                           ## to
                                                                                           ## compute
                                                                                           ## the
                                                                                           ## derivatives
                                                                                           ## of
                                                                                           ## the
                                                                                           ## trimmed
                                                                                           ##
                                                                                           ## !
                                                                                           ## curve.
                                                                                           ## So
                                                                                           ## for
                                                                                           ## a
                                                                                           ## closed
                                                                                           ## curve
                                                                                           ## the
                                                                                           ## rules
                                                                                           ## are
                                                                                           ## the
                                                                                           ## same
                                                                                           ## as
                                                                                           ## for
                                                                                           ##
                                                                                           ## !
                                                                                           ## a
                                                                                           ## open
                                                                                           ## curve.
                                                                                           ##
                                                                                           ## !
                                                                                           ## Warnings
                                                                                           ## :
                                                                                           ##
                                                                                           ## !
                                                                                           ## In
                                                                                           ## this
                                                                                           ## package
                                                                                           ## the
                                                                                           ## entities
                                                                                           ## are
                                                                                           ## not
                                                                                           ## shared.
                                                                                           ## The
                                                                                           ## TrimmedCurve
                                                                                           ## is
                                                                                           ##
                                                                                           ## !
                                                                                           ## built
                                                                                           ## with
                                                                                           ## a
                                                                                           ## copy
                                                                                           ## of
                                                                                           ## the
                                                                                           ## curve
                                                                                           ## C.
                                                                                           ## So
                                                                                           ## when
                                                                                           ## C
                                                                                           ## is
                                                                                           ## modified
                                                                                           ## the
                                                                                           ##
                                                                                           ## !
                                                                                           ## TrimmedCurve
                                                                                           ## is
                                                                                           ## not
                                                                                           ## modified
                                                                                           ##
                                                                                           ## !
                                                                                           ## Warnings
                                                                                           ## :
                                                                                           ##
                                                                                           ## !
                                                                                           ## If
                                                                                           ## <C>
                                                                                           ## is
                                                                                           ## periodic
                                                                                           ## and
                                                                                           ## <theAdjustPeriodic>
                                                                                           ## is
                                                                                           ## True,
                                                                                           ## parametrics
                                                                                           ##
                                                                                           ## !
                                                                                           ## bounds
                                                                                           ## of
                                                                                           ## the
                                                                                           ## TrimmedCurve,
                                                                                           ## can
                                                                                           ## be
                                                                                           ## different
                                                                                           ## to
                                                                                           ## [<U1>;<U2>},
                                                                                           ##
                                                                                           ## !
                                                                                           ## if
                                                                                           ## <U1>
                                                                                           ## or
                                                                                           ## <U2>
                                                                                           ## are
                                                                                           ## not
                                                                                           ## in
                                                                                           ## the
                                                                                           ## principal
                                                                                           ## period.
                                                                                           ##
                                                                                           ## !
                                                                                           ## Include
                                                                                           ## :
                                                                                           ##
                                                                                           ## !
                                                                                           ## For
                                                                                           ## more
                                                                                           ## explanation
                                                                                           ## see
                                                                                           ## the
                                                                                           ## scheme
                                                                                           ## given
                                                                                           ## with
                                                                                           ## this
                                                                                           ## class.
                                                                                           ##
                                                                                           ## !
                                                                                           ## Raises
                                                                                           ## ConstructionError
                                                                                           ## the
                                                                                           ## C
                                                                                           ## is
                                                                                           ## not
                                                                                           ## periodic
                                                                                           ## and
                                                                                           ## U1
                                                                                           ## or
                                                                                           ## U2
                                                                                           ## are
                                                                                           ## out
                                                                                           ## of
                                                                                           ##
                                                                                           ## !
                                                                                           ## the
                                                                                           ## bounds
                                                                                           ## of
                                                                                           ## C.
                                                                                           ##
                                                                                           ## !
                                                                                           ## Raised
                                                                                           ## if
                                                                                           ## U1
                                                                                           ## =
                                                                                           ## U2.
type
  HandleGeom2dUndefinedDerivative* = Handle[Geom2dUndefinedDerivative]
type
  HandleGeom2dUndefinedValue* = Handle[Geom2dUndefinedValue]
type
  HandleGeom2dVector* = Handle[Geom2dVector]
## ! The abstract class Vector describes the common
## ! behavior of vectors in 2D space.
## ! The Geom2d package provides two concrete
## ! classes of vectors: Geom2d_Direction (unit vector)
## ! and Geom2d_VectorWithMagnitude.
type
  Geom2dVector* {.importcpp: "Geom2d_Vector", header: "Geom2d_Vector.hxx", bycopy.} = object of Geom2dGeometry ##
                                                                                                     ## !
                                                                                                     ## Reverses
                                                                                                     ## the
                                                                                                     ## vector
                                                                                                     ## <me>.
type
  HandleGeom2dVectorWithMagnitude* = Handle[Geom2dVectorWithMagnitude]
## ! Defines a vector with magnitude.
## ! A vector with magnitude can have a zero length.
type
  Geom2dVectorWithMagnitude* {.importcpp: "Geom2d_VectorWithMagnitude",
                              header: "Geom2d_VectorWithMagnitude.hxx", bycopy.} = object of Geom2dVector ##
                                                                                                   ## !
                                                                                                   ## Creates
                                                                                                   ## a
                                                                                                   ## persistent
                                                                                                   ## copy
                                                                                                   ## of
                                                                                                   ## V.
