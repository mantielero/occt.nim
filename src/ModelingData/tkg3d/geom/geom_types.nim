type
  Geom_Geometry* {.header: "Geom_Geometry.hxx", importcpp: "Geom_Geometry", byref.} = object #of class Standard_Transient
    ## The abstract class Geometry for 3D space is the root class of all
    ## geometric objects from the Geom package. It describes the common
    ## behavior of these objects when: - applying geometric transformations
    ## to objects, and - constructing objects by geometric transformation
    ## (including copying). Warning Only transformations which do not modify
    ## the nature of the geometry can be applied to Geom objects: this is the
    ## case with translations, rotations, symmetries and scales; this is also
    ## the case with gp_Trsf composite transformations which are used to
    ## define the geometric transformations applied using the Transform or
    ## Transformed functions. Note: Geometry defines the "prototype" of the
    ## abstract method Transform which is defined for each concrete type of
    ## derived object. All other transformations are implemented using the
    ## Transform method.

  Geom_BSplineSurface* {.header: "Geom_BSplineSurface.hxx", importcpp: "Geom_BSplineSurface", byref.} = object #of class Geom_BoundedSurface
    ## Describes a BSpline surface. In each parametric direction, a BSpline
    ## surface can be: - uniform or non-uniform, - rational or non-rational,
    ## - periodic or non-periodic. A BSpline surface is defined by: - its
    ## degrees, in the u and v parametric directions, - its periodic
    ## characteristic, in the u and v parametric directions, - a table of
    ## poles, also called control points (together with the associated
    ## weights if the surface is rational), and - a table of knots, together
    ## with the associated multiplicities. The degree of a
    ## Geom_BSplineSurface is limited to a value (25) which is defined and
    ## controlled by the system. This value is returned by the function
    ## MaxDegree. Poles and Weights Poles and Weights are manipulated using
    ## two associative double arrays: - the poles table, which is a double
    ## array of gp_Pnt points, and - the weights table, which is a double
    ## array of reals. The bounds of the poles and weights arrays are: - 1
    ## and NbUPoles for the row bounds (provided that the BSpline surface is
    ## not periodic in the u parametric direction), where NbUPoles is the
    ## number of poles of the surface in the u parametric direction, and - 1
    ## and NbVPoles for the column bounds (provided that the BSpline surface
    ## is not periodic in the v parametric direction), where NbVPoles is the
    ## number of poles of the surface in the v parametric direction. The
    ## poles of the surface are the points used to shape and reshape the
    ## surface. They comprise a rectangular network. If the surface is not
    ## periodic: - The points (1, 1), (NbUPoles, 1), (1, NbVPoles), and
    ## (NbUPoles, NbVPoles) are the four parametric "corners" of the surface.
    ## - The first column of poles and the last column of poles define two
    ## BSpline curves which delimit the surface in the v parametric
    ## direction. These are the v isoparametric curves corresponding to the
    ## two bounds of the v parameter. - The first row of poles and the last
    ## row of poles define two BSpline curves which delimit the surface in
    ## the u parametric direction. These are the u isoparametric curves
    ## corresponding to the two bounds of the u parameter. If the surface is
    ## periodic, these geometric properties are not verified. It is more
    ## difficult to define a geometrical significance for the weights.
    ## However they are useful for representing a quadric surface precisely.
    ## Moreover, if the weights of all the poles are equal, the surface has a
    ## polynomial equation, and hence is a "non-rational surface". The non-
    ## rational surface is a special, but frequently used, case, where all
    ## poles have identical weights. The weights are defined and used only in
    ## the case of a rational surface. The rational characteristic is defined
    ## in each parametric direction. A surface can be rational in the u
    ## parametric direction, and non-rational in the v parametric direction.
    ## Knots and Multiplicities For a Geom_BSplineSurface the table of knots
    ## is made up of two increasing sequences of reals, without repetition,
    ## one for each parametric direction. The multiplicities define the
    ## repetition of the knots. A BSpline surface comprises multiple
    ## contiguous patches, which are themselves polynomial or rational
    ## surfaces. The knots are the parameters of the isoparametric curves
    ## which limit these contiguous patches. The multiplicity of a knot on a
    ## BSpline surface (in a given parametric direction) is related to the
    ## degree of continuity of the surface at that knot in that parametric
    ## direction: Degree of continuity at knot(i) = Degree - Multi(i) where:
    ## - Degree is the degree of the BSpline surface in the given parametric
    ## direction, and - Multi(i) is the multiplicity of knot number i in the
    ## given parametric direction. There are some special cases, where the
    ## knots are regularly spaced in one parametric direction (i.e. the
    ## difference between two consecutive knots is a constant). - "Uniform":
    ## all the multiplicities are equal to 1. - "Quasi-uniform": all the
    ## multiplicities are equal to 1, except for the first and last knots in
    ## this parametric direction, and these are equal to Degree + 1. -
    ## "Piecewise Bezier": all the multiplicities are equal to Degree except
    ## for the first and last knots, which are equal to Degree + 1. This
    ## surface is a concatenation of Bezier patches in the given parametric
    ## direction. If the BSpline surface is not periodic in a given
    ## parametric direction, the bounds of the knots and multiplicities
    ## tables are 1 and NbKnots, where NbKnots is the number of knots of the
    ## BSpline surface in that parametric direction. If the BSpline surface
    ## is periodic in a given parametric direction, and there are k periodic
    ## knots and p periodic poles in that parametric direction: - the period
    ## is such that: period = Knot(k+1) - Knot(1), and - the poles and knots
    ## tables in that parametric direction can be considered as infinite
    ## tables, such that: Knot(i+k) = Knot(i) + period, and Pole(i+p) =
    ## Pole(i) Note: The data structure tables for a periodic BSpline surface
    ## are more complex than those of a non-periodic one. References : . A
    ## survey of curve and surface methods in CADG Wolfgang BOHM CAGD 1
    ## (1984) . On de Boor-like algorithms and blossoming Wolfgang BOEHM cagd
    ## 5 (1988) . Blossoming and knot insertion algorithms for B-spline
    ## curves Ronald N. GOLDMAN . Modelisation des surfaces en CAO, Henri
    ## GIAUME Peugeot SA . Curves and Surfaces for Computer Aided Geometric
    ## Design, a practical guide Gerald Farin

  Geom_OsculatingSurface* {.header: "Geom_OsculatingSurface.hxx", importcpp: "Geom_OsculatingSurface", byref.} = object #of class Standard_Transient

  Geom_Vector* {.header: "Geom_Vector.hxx", importcpp: "Geom_Vector", byref.} = object #of class Geom_Geometry
    ## The abstract class Vector describes the common behavior of vectors in
    ## 3D space. The Geom package provides two concrete classes of vectors:
    ## Geom_Direction (unit vector) and Geom_VectorWithMagnitude.

  Geom_Surface* {.header: "Geom_Surface.hxx", importcpp: "Geom_Surface", byref.} = object #of class Geom_Geometry
    ## Describes the common behavior of surfaces in 3D space. The Geom
    ## package provides many implementations of concrete derived surfaces,
    ## such as planes, cylinders, cones, spheres and tori, surfaces of linear
    ## extrusion, surfaces of revolution, Bezier and BSpline surfaces, and so
    ## on. The key characteristic of these surfaces is that they are
    ## parameterized. Geom_Surface demonstrates: - how to work with the
    ## parametric equation of a surface to compute the point of parameters
    ## (u, v), and, at this point, the 1st, 2nd ... Nth derivative, - how to
    ## find global information about a surface in each parametric direction
    ## (for example, level of continuity, whether the surface is closed, its
    ## periodicity, the bounds of the parameters and so on), and - how the
    ## parameters change when geometric transformations are applied to the
    ## surface, or the orientation is modified. Note that all surfaces must
    ## have a geometric continuity, and any surface is at least "C0".
    ## Generally, continuity is checked at construction time or when the
    ## curve is edited. Where this is not the case, the documentation makes
    ## this explicit. Warning The Geom package does not prevent the
    ## construction of surfaces with null areas, or surfaces which self-
    ## intersect.

  Geom_Curve* {.header: "Geom_Curve.hxx", importcpp: "Geom_Curve", byref.} = object #of class Geom_Geometry
    ## The abstract class Curve describes the common behavior of curves in 3D
    ## space. The Geom package provides numerous concrete classes of derived
    ## curves, including lines, circles, conics, Bezier or BSpline curves,
    ## etc. The main characteristic of these curves is that they are
    ## parameterized. The Geom_Curve class shows: - how to work with the
    ## parametric equation of a curve in order to calculate the point of
    ## parameter u, together with the vector tangent and the derivative
    ## vectors of order 2, 3,..., N at this point; - how to obtain general
    ## information about the curve (for example, level of continuity, closed
    ## characteristics, periodicity, bounds of the parameter field); - how
    ## the parameter changes when a geometric transformation is applied to
    ## the curve or when the orientation of the curve is inverted. All curves
    ## must have a geometric continuity: a curve is at least "C0". Generally,
    ## this property is checked at the time of construction or when the curve
    ## is edited. Where this is not the case, the documentation states so
    ## explicitly. Warning The Geom package does not prevent the construction
    ## of curves with null length or curves which self-intersect.

  #Geom_SequenceOfBSplineSurface* {.header: "Geom_SequenceOfBSplineSurface.hxx", importcpp: "Geom_SequenceOfBSplineSurface".} = NCollection_Sequence[handle[Geom_BSplineSurface]]


