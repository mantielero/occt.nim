# PROVIDES: ApproxCurve2d ApproxCurve3d ApproxCurveOnSurface ApproxCurvilinearParameter HandleApproxCurvlinFunc ApproxFitAndDivide ApproxFitAndDivide2d ApproxMCurvesToBSpCurve ApproxSameParameter ApproxSweepApproximation HandleApproxSweepFunction ApproxIntKnotTools ApproxIntSvSurfaces
# DEPENDS: StandardTransient ApproxArray1OfAdHSurface ApproxArray1OfGTrsf2d StandardTransient

type
  ApproxCurve2d* {.importcpp: "Approx_Curve2d", header: "Approx_Curve2d.hxx", bycopy.} = object

type
  ApproxCurve3d* {.importcpp: "Approx_Curve3d", header: "Approx_Curve3d.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Approximation
                                                                                        ## of
                                                                                        ## a
                                                                                        ## curve
                                                                                        ## with
                                                                                        ## respect
                                                                                        ## of
                                                                                        ## the
                                                                                        ##
                                                                                        ## !
                                                                                        ## requiered
                                                                                        ## tolerance
                                                                                        ## Tol3D.

type
  ApproxCurveOnSurface* {.importcpp: "Approx_CurveOnSurface",
                         header: "Approx_CurveOnSurface.hxx", bycopy.} = object ## ! This
                                                                           ## constructor calls
                                                                           ## perform
                                                                           ## method. This
                                                                           ## constructor is
                                                                           ## deprecated.
                                                                           ## !
                                                                           ## Checks
                                                                           ## whether the 2d curve is a
                                                                           ## isoline. It can be
                                                                           ## represented by
                                                                           ## b-spline,
                                                                           ## bezier,
                                                                           ## ! or
                                                                           ## geometric line. This line
                                                                           ## should have
                                                                           ## natural
                                                                           ## parameterization.
                                                                           ## !
                                                                           ## @param
                                                                           ## theC2D
                                                                           ## Trimmed curve to be
                                                                           ## checked.
                                                                           ## !
                                                                           ## @param
                                                                           ## theIsU       Flag
                                                                           ## indicating that line is u
                                                                           ## const.
                                                                           ## !
                                                                           ## @param
                                                                           ## theParam     Line
                                                                           ## parameter.
                                                                           ## !
                                                                           ## @param
                                                                           ## theIsForward Flag
                                                                           ## indicating
                                                                           ## forward
                                                                           ## parameterization on a
                                                                           ## isoline.
                                                                           ## !
                                                                           ## @return
                                                                           ## Standard_True when 2d curve is a line and
                                                                           ## Standard_False
                                                                           ## otherwise.
                                                                           ## ! Input
                                                                           ## curve.
    ## ! Input surface.
    ## ! First parameter of the result.
    ## ! Last parameter of the result.
    ## ! Tolerance.

type
  ApproxCurvilinearParameter* {.importcpp: "Approx_CurvilinearParameter",
                               header: "Approx_CurvilinearParameter.hxx", bycopy.} = object ##
                                                                                       ## !
                                                                                       ## case
                                                                                       ## of
                                                                                       ## a
                                                                                       ## free
                                                                                       ## 3D
                                                                                       ## curve

type
  HandleApproxCurvlinFunc* = Handle[ApproxCurvlinFunc]
## ! defines an abstract curve with
## ! curvilinear parametrization

type
  ApproxFitAndDivide* {.importcpp: "Approx_FitAndDivide",
                       header: "Approx_FitAndDivide.hxx", bycopy.} = object ## ! The MultiLine <Line> will be
                                                                       ## approximated until
                                                                       ## tolerances
                                                                       ## ! will be reached.
                                                                       ## ! The
                                                                       ## approximation will be done from degreemin to degreemax
                                                                       ## ! with a cutting if the
                                                                       ## corresponding boolean is True.
                                                                       ## ! is
                                                                       ## internally used by the
                                                                       ## algorithms.

type
  ApproxFitAndDivide2d* {.importcpp: "Approx_FitAndDivide2d",
                         header: "Approx_FitAndDivide2d.hxx", bycopy.} = object ## ! The
                                                                           ## MultiLine
                                                                           ## <Line> will be
                                                                           ## approximated until
                                                                           ## tolerances
                                                                           ## ! will be
                                                                           ## reached.
                                                                           ## ! The
                                                                           ## approximation will be done from
                                                                           ## degreemin to
                                                                           ## degreemax
                                                                           ## ! with a
                                                                           ## cutting if the
                                                                           ## corresponding
                                                                           ## boolean is True.
                                                                           ## ! is
                                                                           ## internally used by the
                                                                           ## algorithms.

type
  ApproxMCurvesToBSpCurve* {.importcpp: "Approx_MCurvesToBSpCurve",
                            header: "Approx_MCurvesToBSpCurve.hxx", bycopy.} = object

type
  ApproxSameParameter* {.importcpp: "Approx_SameParameter",
                        header: "Approx_SameParameter.hxx", bycopy.} = object ## !
                                                                         ## Warning: the C3D and C2D must have the same
                                                                         ## parametric domain.
                                                                         ## !
                                                                         ## Internal data
                                                                         ## structure to unify access to the most
                                                                         ## actively used data.
                                                                         ## ! This
                                                                         ## structure is not
                                                                         ## intended to be class field since
                                                                         ## ! a lot of memory is used in
                                                                         ## intermediate
                                                                         ## computations.
    ##  Initialization is allowed only for integral types.

type
  ApproxSweepApproximation* {.importcpp: "Approx_SweepApproximation",
                             header: "Approx_SweepApproximation.hxx", bycopy.} = object

type
  HandleApproxSweepFunction* = Handle[ApproxSweepFunction]
## ! defined the function used by SweepApproximation to
## ! perform sweeping application.

type
  ApproxIntKnotTools* {.importcpp: "ApproxInt_KnotTools",
                       header: "ApproxInt_KnotTools.hxx", bycopy.} = object ## ! Main function to build optimal knot sequence.
                                                                       ## ! At least one set from
                                                                       ## (thePntsXYZ,
                                                                       ## thePntsU1V1,
                                                                       ## thePntsU2V2) should exist.
                                                                       ## ! @param
                                                                       ## thePntsXYZ - Set of 3d points.
                                                                       ## ! @param
                                                                       ## thePntsU1V1 - Set of 2d points.
                                                                       ## ! @param
                                                                       ## thePntsU2V2 - Set of 2d points.
                                                                       ## ! @param thePars - Expected
                                                                       ## parameters assoiated with set.
                                                                       ## ! @param
                                                                       ## theApproxXYZ - Flag, existence of 3d set.
                                                                       ## ! @param
                                                                       ## theApproxU1V1 - Flag existence of first 2d set.
                                                                       ## ! @param
                                                                       ## theApproxU2V2 - Flag existence of second 2d set.
                                                                       ## ! @param
                                                                       ## theMinNbPnts - Minimal number of points per knot interval.
                                                                       ## ! @param theKnots - output knots sequence.
                                                                       ## ! Compute indices of knots:
                                                                       ## !
                                                                       ## ! I: Build discrete curvature in points set,
                                                                       ## ! using outer product of two vectors.
                                                                       ## !
                                                                       ## ! II: Put knots in points which has extremity on discrete
                                                                       ## curvature.
                                                                       ## !
                                                                       ## ! III: Put knots in monotone intervals of
                                                                       ## curvature.
                                                                       ## !
                                                                       ## ! IV: Put
                                                                       ## additional knots near extrema points.

                                                                       ## additional knots near extrema points.
type
  ApproxIntSvSurfaces* {.importcpp: "ApproxInt_SvSurfaces",
                        header: "ApproxInt_SvSurfaces.hxx", bycopy.} = object ## ! returns True if
                                                                         ## Tg,Tguv1 Tguv2 can be
                                                                         ## computed.


type
  ApproxCurvlinFunc* {.importcpp: "Approx_CurvlinFunc",
                      header: "Approx_CurvlinFunc.hxx", bycopy.} = object of StandardTransient

type
  ApproxHArray1OfAdHSurface* {.importcpp: "Approx_HArray1OfAdHSurface",
                              header: "Approx_HArray1OfAdHSurface.hxx", bycopy.} = object of ApproxArray1OfAdHSurface

type
  ApproxHArray1OfGTrsf2d* {.importcpp: "Approx_HArray1OfGTrsf2d",
                           header: "Approx_HArray1OfGTrsf2d.hxx", bycopy.} = object of ApproxArray1OfGTrsf2d

type
  ApproxSweepFunction* {.importcpp: "Approx_SweepFunction",
                        header: "Approx_SweepFunction.hxx", bycopy.} = object of StandardTransient ##
                                                                                            ## !
                                                                                            ## compute
                                                                                            ## the
                                                                                            ## section
                                                                                            ## for
                                                                                            ## v
                                                                                            ## =
                                                                                            ## param

