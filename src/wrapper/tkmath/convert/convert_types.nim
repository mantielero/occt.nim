# PROVIDES: ConvertCompBezierCurves2dToBSplineCurve2d ConvertCompBezierCurvesToBSplineCurve ConvertCompPolynomialToPoles ConvertConicToBSplineCurve ConvertElementarySurfaceToBSplineSurface ConvertGridPolynomialToPoles ConvertCircleToBSplineCurve ConvertConeToBSplineSurface ConvertCylinderToBSplineSurface ConvertEllipseToBSplineCurve ConvertHyperbolaToBSplineCurve ConvertParabolaToBSplineCurve ConvertSphereToBSplineSurface ConvertTorusToBSplineSurface
# DEPENDS:

type
  ConvertCompBezierCurves2dToBSplineCurve2d* {.
      importcpp: "Convert_CompBezierCurves2dToBSplineCurve2d",
      header: "Convert_CompBezierCurves2dToBSplineCurve2d.hxx", bycopy.} = object ## !
                                                                             ## Constructs a
                                                                             ## framework for
                                                                             ## converting a
                                                                             ## sequence of
                                                                             ## !
                                                                             ## adjacent
                                                                             ## non-rational
                                                                             ## Bezier
                                                                             ## curves
                                                                             ## into a
                                                                             ## BSpline
                                                                             ## curve.
                                                                             ## !
                                                                             ## Knots
                                                                             ## will be
                                                                             ## created on the
                                                                             ## computed
                                                                             ## BSpline
                                                                             ## curve at
                                                                             ## !
                                                                             ## each
                                                                             ## junction
                                                                             ## point of two
                                                                             ## consecutive
                                                                             ## Bezier
                                                                             ## curves. The
                                                                             ## !
                                                                             ## degree of
                                                                             ## continuity of the
                                                                             ## BSpline
                                                                             ## curve
                                                                             ## will be
                                                                             ## increased at
                                                                             ## ! the
                                                                             ## junction
                                                                             ## point of two
                                                                             ## consecutive
                                                                             ## Bezier
                                                                             ## curves if
                                                                             ## their
                                                                             ## !
                                                                             ## tangent
                                                                             ## vectors at
                                                                             ## this
                                                                             ## point are
                                                                             ## parallel.
                                                                             ## AngularTolerance
                                                                             ## !
                                                                             ## (given in
                                                                             ## radians, and
                                                                             ## defaulted to 1.0
                                                                             ## e-4)
                                                                             ## will be
                                                                             ## used
                                                                             ## ! to
                                                                             ## check the
                                                                             ## parallelism of the two
                                                                             ## tangent
                                                                             ## vectors.
                                                                             ## ! Use the
                                                                             ## following
                                                                             ## functions:
                                                                             ## ! -
                                                                             ## AddCurve to
                                                                             ## define in
                                                                             ## sequence the
                                                                             ## adjacent
                                                                             ## Bezier
                                                                             ## !
                                                                             ## curves to be
                                                                             ## converted,
                                                                             ## ! -
                                                                             ## Perform to
                                                                             ## compute the
                                                                             ## data
                                                                             ## needed to
                                                                             ## build the
                                                                             ## BSpline
                                                                             ## curve,
                                                                             ## ! -   and the
                                                                             ## available
                                                                             ## consultation
                                                                             ## functions to
                                                                             ## access the
                                                                             ## !
                                                                             ## computed
                                                                             ## data.
                                                                             ## This
                                                                             ## data may be
                                                                             ## used to
                                                                             ## construct the
                                                                             ## BSpline
                                                                             ## curve.

type
  ConvertCompBezierCurvesToBSplineCurve* {.
      importcpp: "Convert_CompBezierCurvesToBSplineCurve",
      header: "Convert_CompBezierCurvesToBSplineCurve.hxx", bycopy.} = object ## !
                                                                         ## Constructs a
                                                                         ## framework for
                                                                         ## converting a
                                                                         ## sequence of
                                                                         ## !
                                                                         ## adjacent
                                                                         ## non-rational Bezier curves into a BSpline curve.
                                                                         ## ! Knots will be created on the
                                                                         ## computed BSpline curve at
                                                                         ## ! each
                                                                         ## junction point of two
                                                                         ## consecutive Bezier curves. The
                                                                         ## ! degree of
                                                                         ## continuity of the BSpline curve will be
                                                                         ## increased at
                                                                         ## ! the
                                                                         ## junction point of two
                                                                         ## consecutive Bezier curves if their
                                                                         ## ! tangent vectors at this point are
                                                                         ## parallel.
                                                                         ## AngularTolerance
                                                                         ## ! (given in
                                                                         ## radians, and
                                                                         ## defaulted to 1.0 e-4) will be used
                                                                         ## ! to check the
                                                                         ## parallelism of the two tangent
                                                                         ## vectors.
                                                                         ## ! Use the
                                                                         ## following
                                                                         ## functions:
                                                                         ## ! -
                                                                         ## AddCurve to define in
                                                                         ## sequence the
                                                                         ## adjacent Bezier
                                                                         ## ! curves to be
                                                                         ## converted,
                                                                         ## ! -   Perform to compute the data needed to build the BSpline curve,
                                                                         ## ! -   and the
                                                                         ## available
                                                                         ## consultation
                                                                         ## functions to access the
                                                                         ## !
                                                                         ## computed data. This data may be used to
                                                                         ## construct the BSpline curve.

type
  ConvertCompPolynomialToPoles* {.importcpp: "Convert_CompPolynomialToPoles",
                                 header: "Convert_CompPolynomialToPoles.hxx",
                                 bycopy.} = object ## ! Warning!
                                                ## ! Continuity can be at MOST the maximum degree of
                                                ## ! the polynomial functions
                                                ## ! TrueIntervals :
                                                ## ! this is the true parameterisation for the composite curve
                                                ## ! that is : the curve has myContinuity if the nth curve
                                                ## ! is parameterized between myTrueIntervals(n) and myTrueIntervals(n+1)
                                                ## !
                                                ## ! Coefficients have to be the implicit "c form":
                                                ## !
                                                ## Coefficients[Numcurves][MaxDegree+1][Dimension]
                                                ## !
                                                ## ! Warning!
                                                ## ! The NumberOfCoefficient of an polynome is his degree + 1
                                                ## ! Example: To convert the linear function f(x) = 2*x + 1 on the
                                                ## ! domaine [2,5] to BSpline with the bound [-1,1]. Arguments are :
                                                ## ! NumCurves  = 1;
                                                ## ! Continuity = 1;
                                                ## ! Dimension  = 1;
                                                ## ! MaxDegree  = 1;
                                                ## ! NumCoeffPerCurve [1] = {2};
                                                ## ! Coefficients[2] = {1, 2};
                                                ## ! PolynomialIntervals[1,2] = {{2,5}}
                                                ## ! TrueIntervals[2] = {-1, 1}

type
  ConvertConicToBSplineCurve* {.importcpp: "Convert_ConicToBSplineCurve",
                               header: "Convert_ConicToBSplineCurve.hxx", bycopy.} = object of RootObj ##
                                                                                       ## !
                                                                                       ## Returns
                                                                                       ## the
                                                                                       ## degree
                                                                                       ## of
                                                                                       ## the
                                                                                       ## BSpline
                                                                                       ## curve
                                                                                       ## whose
                                                                                       ## data
                                                                                       ## is
                                                                                       ##
                                                                                       ## !
                                                                                       ## computed
                                                                                       ## in
                                                                                       ## this
                                                                                       ## framework.

type
  ConvertElementarySurfaceToBSplineSurface* {.
      importcpp: "Convert_ElementarySurfaceToBSplineSurface",
      header: "Convert_ElementarySurfaceToBSplineSurface.hxx", bycopy.} = object of RootObj

type
  ConvertGridPolynomialToPoles* {.importcpp: "Convert_GridPolynomialToPoles",
                                 header: "Convert_GridPolynomialToPoles.hxx",
                                 bycopy.} = object ## ! To    only  one   polynomial  Surface.
                                                ## ! The  Length  of  <PolynomialUIntervals> and <PolynomialVIntervals>
                                                ## ! have to be 2.
                                                ## ! This values defined the parametric domain of the Polynomial Equation.
                                                ## !
                                                ## ! Coefficients :
                                                ## ! The <Coefficients> have to be formated than an "C array"
                                                ## ! [MaxUDegree+1] [MaxVDegree+1] [3]

type
  ConvertCircleToBSplineCurve* {.importcpp: "Convert_CircleToBSplineCurve",
                                header: "Convert_CircleToBSplineCurve.hxx", bycopy.} = object of ConvertConicToBSplineCurve ##
                                                                                                                     ## !
                                                                                                                     ## The
                                                                                                                     ## equivalent
                                                                                                                     ## B-spline
                                                                                                                     ## curve
                                                                                                                     ## has
                                                                                                                     ## the
                                                                                                                     ## same
                                                                                                                     ## orientation
                                                                                                                     ##
                                                                                                                     ## !
                                                                                                                     ## as
                                                                                                                     ## the
                                                                                                                     ## circle
                                                                                                                     ## C.

type
  ConvertConeToBSplineSurface* {.importcpp: "Convert_ConeToBSplineSurface",
                                header: "Convert_ConeToBSplineSurface.hxx", bycopy.} = object of ConvertElementarySurfaceToBSplineSurface ##
                                                                                                                                   ## !
                                                                                                                                   ## The
                                                                                                                                   ## equivalent
                                                                                                                                   ## B-spline
                                                                                                                                   ## surface
                                                                                                                                   ## as
                                                                                                                                   ## the
                                                                                                                                   ## same
                                                                                                                                   ## orientation
                                                                                                                                   ## as
                                                                                                                                   ## the
                                                                                                                                   ##
                                                                                                                                   ## !
                                                                                                                                   ## Cone
                                                                                                                                   ## in
                                                                                                                                   ## the
                                                                                                                                   ## U
                                                                                                                                   ## and
                                                                                                                                   ## V
                                                                                                                                   ## parametric
                                                                                                                                   ## directions.
                                                                                                                                   ##
                                                                                                                                   ## !
                                                                                                                                   ##
                                                                                                                                   ## !
                                                                                                                                   ## Raised
                                                                                                                                   ## if
                                                                                                                                   ## U1
                                                                                                                                   ## =
                                                                                                                                   ## U2
                                                                                                                                   ## or
                                                                                                                                   ## U1
                                                                                                                                   ## =
                                                                                                                                   ## U2
                                                                                                                                   ## +
                                                                                                                                   ## 2.0
                                                                                                                                   ## *
                                                                                                                                   ## Pi
                                                                                                                                   ##
                                                                                                                                   ## !
                                                                                                                                   ## Raised
                                                                                                                                   ## if
                                                                                                                                   ## V1
                                                                                                                                   ## =
                                                                                                                                   ## V2.

type
  ConvertCylinderToBSplineSurface* {.importcpp: "Convert_CylinderToBSplineSurface", header: "Convert_CylinderToBSplineSurface.hxx",
                                    bycopy.} = object of ConvertElementarySurfaceToBSplineSurface ##
                                                                                             ## !
                                                                                             ## The
                                                                                             ## equivalent
                                                                                             ## B-splineSurface
                                                                                             ## as
                                                                                             ## the
                                                                                             ## same
                                                                                             ## orientation
                                                                                             ## as
                                                                                             ## the
                                                                                             ##
                                                                                             ## !
                                                                                             ## cylinder
                                                                                             ## in
                                                                                             ## the
                                                                                             ## U
                                                                                             ## and
                                                                                             ## V
                                                                                             ## parametric
                                                                                             ## directions.
                                                                                             ##
                                                                                             ## !
                                                                                             ##
                                                                                             ## !
                                                                                             ## Raised
                                                                                             ## if
                                                                                             ## U1
                                                                                             ## =
                                                                                             ## U2
                                                                                             ## or
                                                                                             ## U1
                                                                                             ## =
                                                                                             ## U2
                                                                                             ## +
                                                                                             ## 2.0
                                                                                             ## *
                                                                                             ## Pi
                                                                                             ##
                                                                                             ## !
                                                                                             ## Raised
                                                                                             ## if
                                                                                             ## V1
                                                                                             ## =
                                                                                             ## V2.

type
  ConvertEllipseToBSplineCurve* {.importcpp: "Convert_EllipseToBSplineCurve",
                                 header: "Convert_EllipseToBSplineCurve.hxx",
                                 bycopy.} = object of ConvertConicToBSplineCurve ## ! The
                                                                            ## equivalent
                                                                            ## B-spline
                                                                            ## curve has the same
                                                                            ## orientation
                                                                            ## ! as the
                                                                            ## ellipse E.

type
  ConvertHyperbolaToBSplineCurve* {.importcpp: "Convert_HyperbolaToBSplineCurve", header: "Convert_HyperbolaToBSplineCurve.hxx",
                                   bycopy.} = object of ConvertConicToBSplineCurve ## !
                                                                              ## The
                                                                              ## hyperbola H is
                                                                              ## limited
                                                                              ## between
                                                                              ## the
                                                                              ## parametric
                                                                              ## values
                                                                              ## U1, U2
                                                                              ## !
                                                                              ## and
                                                                              ## the
                                                                              ## equivalent
                                                                              ## B-spline
                                                                              ## curve
                                                                              ## has
                                                                              ## the
                                                                              ## same
                                                                              ## orientation as
                                                                              ## the
                                                                              ## !
                                                                              ## hyperbola.

type
  ConvertParabolaToBSplineCurve* {.importcpp: "Convert_ParabolaToBSplineCurve",
                                  header: "Convert_ParabolaToBSplineCurve.hxx",
                                  bycopy.} = object of ConvertConicToBSplineCurve ## ! The
                                                                             ## parabola Prb is
                                                                             ## limited
                                                                             ## between the
                                                                             ## parametric
                                                                             ## values U1, U2
                                                                             ## ! and the
                                                                             ## equivalent
                                                                             ## B-spline
                                                                             ## curve as the
                                                                             ## same
                                                                             ## orientation as the
                                                                             ## !
                                                                             ## parabola
                                                                             ## Prb.

type
  ConvertSphereToBSplineSurface* {.importcpp: "Convert_SphereToBSplineSurface",
                                  header: "Convert_SphereToBSplineSurface.hxx",
                                  bycopy.} = object of ConvertElementarySurfaceToBSplineSurface ##
                                                                                           ## !
                                                                                           ## The
                                                                                           ## equivalent
                                                                                           ## B-spline
                                                                                           ## surface
                                                                                           ## as
                                                                                           ## the
                                                                                           ## same
                                                                                           ## orientation
                                                                                           ## as
                                                                                           ## the
                                                                                           ##
                                                                                           ## !
                                                                                           ## sphere
                                                                                           ## in
                                                                                           ## the
                                                                                           ## U
                                                                                           ## and
                                                                                           ## V
                                                                                           ## parametric
                                                                                           ## directions.
                                                                                           ##
                                                                                           ## !
                                                                                           ##
                                                                                           ## !
                                                                                           ## Raised
                                                                                           ## if
                                                                                           ## U1
                                                                                           ## =
                                                                                           ## U2
                                                                                           ## or
                                                                                           ## U1
                                                                                           ## =
                                                                                           ## U2
                                                                                           ## +
                                                                                           ## 2.0
                                                                                           ## *
                                                                                           ## Pi
                                                                                           ##
                                                                                           ## !
                                                                                           ## Raised
                                                                                           ## if
                                                                                           ## V1
                                                                                           ## =
                                                                                           ## V2.

                                                                                           ## V2.
type
  ConvertTorusToBSplineSurface* {.importcpp: "Convert_TorusToBSplineSurface",
                                 header: "Convert_TorusToBSplineSurface.hxx",
                                 bycopy.} = object of ConvertElementarySurfaceToBSplineSurface ##
                                                                                          ## !
                                                                                          ## The
                                                                                          ## equivalent
                                                                                          ## B-spline
                                                                                          ## surface
                                                                                          ## as
                                                                                          ## the
                                                                                          ## same
                                                                                          ## orientation
                                                                                          ## as
                                                                                          ## the
                                                                                          ##
                                                                                          ## !
                                                                                          ## torus
                                                                                          ## in
                                                                                          ## the
                                                                                          ## U
                                                                                          ## and
                                                                                          ## V
                                                                                          ## parametric
                                                                                          ## directions.
                                                                                          ##
                                                                                          ## !
                                                                                          ##
                                                                                          ## !
                                                                                          ## Raised
                                                                                          ## if
                                                                                          ## U1
                                                                                          ## =
                                                                                          ## U2
                                                                                          ## or
                                                                                          ## U1
                                                                                          ## =
                                                                                          ## U2
                                                                                          ## +
                                                                                          ## 2.0
                                                                                          ## *
                                                                                          ## Pi
                                                                                          ##
                                                                                          ## !
                                                                                          ## Raised
                                                                                          ## if
                                                                                          ## V1
                                                                                          ## =
                                                                                          ## V2
                                                                                          ## or
                                                                                          ## V1
                                                                                          ## =
                                                                                          ## V2
                                                                                          ## +
                                                                                          ## 2.0
                                                                                          ## *
                                                                                          ## Pi


