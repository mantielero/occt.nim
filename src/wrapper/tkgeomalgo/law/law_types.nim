# PROVIDES: Law HandleLawBSpFunc HandleLawBSpline LawBSplineKnotSplitting HandleLawComposite HandleLawConstant HandleLawFunction HandleLawInterpol LawInterpolate HandleLawLinear HandleLawS
# DEPENDS: LawFunction StandardTransient LawFunction LawFunction StandardTransient LawBSpFunc LawFunction LawBSpFunc

type
  Law* {.importcpp: "Law", header: "Law.hxx", bycopy.} = object ## ! This algorithm searches the knot values corresponding to the
                                                        ## ! splitting of a given B-spline law into  several arcs with
                                                        ## ! the same continuity. The continuity order is given at the
                                                        ## ! construction time.
                                                        ## ! Builds a 1d bspline that   is near from Lin with  null
                                                        ## ! derivatives at the extremities.

type
  HandleLawBSpFunc* = Handle[LawBSpFunc]
## ! Law Function based on a BSpline curve 1d.  Package
## ! methods and classes are implemented in package Law
## ! to    construct  the  basis    curve with  several
## ! constraints.

type
  HandleLawBSpline* = Handle[LawBSpline]
## ! Definition of the 1D B_spline curve.
## !
## ! Uniform  or non-uniform
## ! Rational or non-rational
## ! Periodic or non-periodic
## !
## ! a b-spline curve is defined by :
## !
## ! The Degree (up to 25)
## !
## ! The Poles  (and the weights if it is rational)
## !
## ! The Knots and Multiplicities
## !
## ! The knot vector   is an  increasing  sequence  of
## ! reals without  repetition. The multiplicities are
## ! the repetition of the knots.
## !
## ! If the knots are regularly spaced (the difference
## ! of two  consecutive  knots  is a   constant), the
## ! knots repartition is :
## !
## ! - Uniform if all multiplicities are 1.
## !
## ! -  Quasi-uniform if  all multiplicities are  1
## ! but the first and the last which are Degree+1.
## !
## ! -   PiecewiseBezier if  all multiplicites  are
## ! Degree but the   first and the  last which are
## ! Degree+1.
## !
## ! The curve may be periodic.
## !
## ! On a periodic curve if there are k knots and p
## ! poles. the period is knot(k) - knot(1)
## !
## ! the poles and knots are infinite vectors with :
## !
## ! knot(i+k) = knot(i) + period
## !
## ! pole(i+p) = pole(i)
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
  LawBSplineKnotSplitting* {.importcpp: "Law_BSplineKnotSplitting",
                            header: "Law_BSplineKnotSplitting.hxx", bycopy.} = object ##
                                                                                 ## !
                                                                                 ## Locates
                                                                                 ## the
                                                                                 ## knot
                                                                                 ## values
                                                                                 ## which
                                                                                 ## correspond
                                                                                 ## to
                                                                                 ## the
                                                                                 ## segmentation
                                                                                 ## of
                                                                                 ##
                                                                                 ## !
                                                                                 ## the
                                                                                 ## curve
                                                                                 ## into
                                                                                 ## arcs
                                                                                 ## with
                                                                                 ## a
                                                                                 ## continuity
                                                                                 ## equal
                                                                                 ## to
                                                                                 ## ContinuityRange.
                                                                                 ##
                                                                                 ## !
                                                                                 ##
                                                                                 ## !
                                                                                 ## Raised
                                                                                 ## if
                                                                                 ## ContinuityRange
                                                                                 ## is
                                                                                 ## not
                                                                                 ## greater
                                                                                 ## or
                                                                                 ## equal
                                                                                 ## zero.

type
  HandleLawComposite* = Handle[LawComposite]
## ! Loi  composite constituee  d une liste  de lois de
## ! ranges consecutifs.
## ! Cette implementation un peu lourde permet de reunir
## ! en une seule loi des portions de loi construites de
## ! facon independantes (par exemple en interactif) et
## ! de lancer le walking d un coup a l echelle d une
## ! ElSpine.
## ! CET OBJET REPOND DONC A UN PROBLEME D IMPLEMENTATION
## ! SPECIFIQUE AUX CONGES!!!

type
  HandleLawConstant* = Handle[LawConstant]
## ! Loi constante

type
  HandleLawFunction* = Handle[LawFunction]
## ! Root class for evolution laws.

type
  HandleLawInterpol* = Handle[LawInterpol]
## ! Provides an evolution law that interpolates a set
## ! of parameter and value pairs (wi, radi)

type
  LawInterpolate* {.importcpp: "Law_Interpolate", header: "Law_Interpolate.hxx",
                   bycopy.} = object ## ! Tolerance is to check if  the points are not too close
                                  ## ! to one an  other.  It is  also  used to check   if the
                                  ## ! tangent vector  is not too small.   There should be at
                                  ## ! least 2 points. If PeriodicFlag is True then the curve
                                  ## ! will be periodic be periodic
                                  ## ! Interpolates in a non periodic fashion.

type
  HandleLawLinear* = Handle[LawLinear]
## ! Describes an linear evolution law.

type
  HandleLawS* = Handle[LawS]
## ! Describes an "S" evolution law.

type
  LawBSpFunc* {.importcpp: "Law_BSpFunc", header: "Law_BSpFunc.hxx", bycopy.} = object of LawFunction

type
  LawBSpline* {.importcpp: "Law_BSpline", header: "Law_BSpline.hxx", bycopy.} = object of StandardTransient ##
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
                                                                                                  ## Tells
                                                                                                  ## whether
                                                                                                  ## the
                                                                                                  ## Cache
                                                                                                  ## is
                                                                                                  ## valid
                                                                                                  ## for
                                                                                                  ## the
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## given
                                                                                                  ## parameter
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Warnings
                                                                                                  ## :
                                                                                                  ## the
                                                                                                  ## parameter
                                                                                                  ## must
                                                                                                  ## be
                                                                                                  ## normalized
                                                                                                  ## within
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## the
                                                                                                  ## period
                                                                                                  ## if
                                                                                                  ## the
                                                                                                  ## curve
                                                                                                  ## is
                                                                                                  ## periodic.
                                                                                                  ## Otherwise
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## the
                                                                                                  ## answer
                                                                                                  ## will
                                                                                                  ## be
                                                                                                  ## false

type
  LawComposite* {.importcpp: "Law_Composite", header: "Law_Composite.hxx", bycopy.} = object of LawFunction ##
                                                                                                  ## !
                                                                                                  ## Construct
                                                                                                  ## an
                                                                                                  ## empty
                                                                                                  ## Law
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Set
                                                                                                  ## the
                                                                                                  ## current
                                                                                                  ## function.

type
  LawConstant* {.importcpp: "Law_Constant", header: "Law_Constant.hxx", bycopy.} = object of LawFunction

type
  LawFunction* {.importcpp: "Law_Function", header: "Law_Function.hxx", bycopy.} = object of StandardTransient

type
  LawInterpol* {.importcpp: "Law_Interpol", header: "Law_Interpol.hxx", bycopy.} = object of LawBSpFunc ##
                                                                                              ## !
                                                                                              ## Constructs
                                                                                              ## an
                                                                                              ## empty
                                                                                              ## interpolative
                                                                                              ## evolution
                                                                                              ## law.
                                                                                              ##
                                                                                              ## !
                                                                                              ## The
                                                                                              ## function
                                                                                              ## Set
                                                                                              ## is
                                                                                              ## used
                                                                                              ## to
                                                                                              ## define
                                                                                              ## the
                                                                                              ## law.

type
  LawLinear* {.importcpp: "Law_Linear", header: "Law_Linear.hxx", bycopy.} = object of LawFunction ##
                                                                                         ## !
                                                                                         ## Constructs
                                                                                         ## an
                                                                                         ## empty
                                                                                         ## linear
                                                                                         ## evolution
                                                                                         ## law.

## ! Describes an "S" evolution law.
type
  LawS* {.importcpp: "Law_S", header: "Law_S.hxx", bycopy.} = object of LawBSpFunc ## !
                                                                         ## Constructs an empty "S"
                                                                         ## evolution law.


