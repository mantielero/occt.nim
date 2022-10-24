type
  GeomFill* {.importcpp: "GeomFill", header: "GeomFill.hxx", bycopy.} = object ## ! Builds a ruled surface between the two curves, Curve1 and Curve2.
type
  GeomFillAppSurf* {.importcpp: "GeomFill_AppSurf", header: "GeomFill_AppSurf.hxx",
                    bycopy.} = object of AppBlendApprox
type
  GeomFillAppSweep* {.importcpp: "GeomFill_AppSweep",
                     header: "GeomFill_AppSweep.hxx", bycopy.} = object of AppBlendApprox
type
  GeomFillBezierCurves* {.importcpp: "GeomFill_BezierCurves",
                         header: "GeomFill_BezierCurves.hxx", bycopy.} = object ## !
                                                                           ## Constructs an empty
                                                                           ## framework for
                                                                           ## building a
                                                                           ## Bezier
                                                                           ## !
                                                                           ## surface from
                                                                           ## contiguous
                                                                           ## Bezier
                                                                           ## curves.
                                                                           ## ! You use the Init
                                                                           ## function to
                                                                           ## define the
                                                                           ## boundaries of the
                                                                           ## surface.
type
  HandleGeomFillBoundary* = Handle[GeomFillBoundary]
## ! Root class to define a boundary  which will form part of a
## ! contour around a gap requiring filling.
## ! Any  new type  of  constrained boundary must inherit this class.
## ! The GeomFill package provides two classes to define constrained boundaries:
## ! -   GeomFill_SimpleBound to define an unattached boundary
## ! -   GeomFill_BoundWithSurf to define a boundary attached to a surface.
## ! These objects are used to define the boundaries for a
## ! GeomFill_ConstrainedFilling framework.
type
  GeomFillBoundary* {.importcpp: "GeomFill_Boundary",
                     header: "GeomFill_Boundary.hxx", bycopy.} = object of StandardTransient
type
  HandleGeomFillBoundWithSurf* = Handle[GeomFillBoundWithSurf]
## ! Defines a 3d curve as a boundary for a
## ! GeomFill_ConstrainedFilling algorithm.
## ! This curve is attached to an existing surface.
## ! Defines a  constrained boundary for  filling
## ! the computations are done with a CurveOnSurf and a
## ! normals field  defined by the normalized normal to
## ! the surface along the PCurve.
## ! Contains fields  to allow a reparametrization of curve
## ! and normals field.
type
  GeomFillBoundWithSurf* {.importcpp: "GeomFill_BoundWithSurf",
                          header: "GeomFill_BoundWithSurf.hxx", bycopy.} = object of GeomFillBoundary ##
                                                                                               ## !
                                                                                               ## Constructs
                                                                                               ## a
                                                                                               ## boundary
                                                                                               ## object
                                                                                               ## defined
                                                                                               ## by
                                                                                               ## the
                                                                                               ## 3d
                                                                                               ## curve
                                                                                               ## CurveOnSurf.
                                                                                               ##
                                                                                               ## !
                                                                                               ## The
                                                                                               ## surface
                                                                                               ## to
                                                                                               ## be
                                                                                               ## filled
                                                                                               ## along
                                                                                               ## this
                                                                                               ## boundary
                                                                                               ## will
                                                                                               ## be
                                                                                               ## in
                                                                                               ## the
                                                                                               ##
                                                                                               ## !
                                                                                               ## tolerance
                                                                                               ## range
                                                                                               ## defined
                                                                                               ## by
                                                                                               ## Tol3d.
                                                                                               ##
                                                                                               ## !
                                                                                               ## What's
                                                                                               ## more,
                                                                                               ## at
                                                                                               ## each
                                                                                               ## point
                                                                                               ## of
                                                                                               ## CurveOnSurf,
                                                                                               ## the
                                                                                               ## angle
                                                                                               ##
                                                                                               ## !
                                                                                               ## between
                                                                                               ## the
                                                                                               ## normal
                                                                                               ## to
                                                                                               ## the
                                                                                               ## surface
                                                                                               ## to
                                                                                               ## be
                                                                                               ## filled
                                                                                               ## along
                                                                                               ## this
                                                                                               ##
                                                                                               ## !
                                                                                               ## boundary,
                                                                                               ## and
                                                                                               ## the
                                                                                               ## normal
                                                                                               ## to
                                                                                               ## the
                                                                                               ## surface
                                                                                               ## on
                                                                                               ## which
                                                                                               ##
                                                                                               ## !
                                                                                               ## CurveOnSurf
                                                                                               ## lies,
                                                                                               ## must
                                                                                               ## not
                                                                                               ## be
                                                                                               ## greater
                                                                                               ## than
                                                                                               ## TolAng.
                                                                                               ##
                                                                                               ## !
                                                                                               ## This
                                                                                               ## object
                                                                                               ## is
                                                                                               ## to
                                                                                               ## be
                                                                                               ## used
                                                                                               ## as
                                                                                               ## a
                                                                                               ## boundary
                                                                                               ## for
                                                                                               ## a
                                                                                               ##
                                                                                               ## !
                                                                                               ## GeomFill_ConstrainedFilling
                                                                                               ## framework.
                                                                                               ##
                                                                                               ## !
                                                                                               ## Warning
                                                                                               ##
                                                                                               ## !
                                                                                               ## CurveOnSurf
                                                                                               ## is
                                                                                               ## an
                                                                                               ## adapted
                                                                                               ## curve,
                                                                                               ## that
                                                                                               ## is,
                                                                                               ## an
                                                                                               ## object
                                                                                               ##
                                                                                               ## !
                                                                                               ## which
                                                                                               ## is
                                                                                               ## an
                                                                                               ## interface
                                                                                               ## between:
                                                                                               ##
                                                                                               ## !
                                                                                               ## -
                                                                                               ## the
                                                                                               ## services
                                                                                               ## provided
                                                                                               ## by
                                                                                               ## a
                                                                                               ## curve
                                                                                               ## lying
                                                                                               ## on
                                                                                               ## a
                                                                                               ## surface
                                                                                               ## from
                                                                                               ## the
                                                                                               ## package
                                                                                               ## Geom
                                                                                               ##
                                                                                               ## !
                                                                                               ## -
                                                                                               ## and
                                                                                               ## those
                                                                                               ## required
                                                                                               ## of
                                                                                               ## the
                                                                                               ## curve
                                                                                               ## by
                                                                                               ## the
                                                                                               ## computation
                                                                                               ## algorithm
                                                                                               ## which
                                                                                               ## uses
                                                                                               ## it.
                                                                                               ##
                                                                                               ## !
                                                                                               ## The
                                                                                               ## adapted
                                                                                               ## curve
                                                                                               ## is
                                                                                               ## created
                                                                                               ## in
                                                                                               ## the
                                                                                               ## following
                                                                                               ## way:
                                                                                               ##
                                                                                               ## !
                                                                                               ## Handle(Geom_Surface)
                                                                                               ## mySurface
                                                                                               ## =
                                                                                               ## ...
                                                                                               ## ;
                                                                                               ##
                                                                                               ## !
                                                                                               ## Handle(Geom2d_Curve)
                                                                                               ## myParamCurve
                                                                                               ## =
                                                                                               ## ...
                                                                                               ## ;
                                                                                               ##
                                                                                               ## !
                                                                                               ## //
                                                                                               ## where
                                                                                               ## myParamCurve
                                                                                               ## is
                                                                                               ## a
                                                                                               ## 2D
                                                                                               ## curve
                                                                                               ## in
                                                                                               ## the
                                                                                               ## parametric
                                                                                               ## space
                                                                                               ## of
                                                                                               ## the
                                                                                               ## surface
                                                                                               ## mySurface
                                                                                               ##
                                                                                               ## !
                                                                                               ## Handle(GeomAdaptor_HSurface)
                                                                                               ##
                                                                                               ## !
                                                                                               ## Surface
                                                                                               ## =
                                                                                               ## new
                                                                                               ##
                                                                                               ## !
                                                                                               ## GeomAdaptor_HSurface(mySurface);
                                                                                               ##
                                                                                               ## !
                                                                                               ## Handle(Geom2dAdaptor_HCurve)
                                                                                               ##
                                                                                               ## !
                                                                                               ## ParamCurve
                                                                                               ## =
                                                                                               ## new
                                                                                               ##
                                                                                               ## !
                                                                                               ## Geom2dAdaptor_HCurve(myParamCurve);
                                                                                               ##
                                                                                               ## !
                                                                                               ## CurveOnSurf
                                                                                               ## =
                                                                                               ## Adaptor3d_CurveOnSurface(ParamCurve,Surface);
                                                                                               ##
                                                                                               ## !
                                                                                               ## The
                                                                                               ## boundary
                                                                                               ## is
                                                                                               ## then
                                                                                               ## constructed
                                                                                               ## with
                                                                                               ## the
                                                                                               ## CurveOnSurf
                                                                                               ## object:
                                                                                               ##
                                                                                               ## !
                                                                                               ## Standard_Real
                                                                                               ## Tol
                                                                                               ## =
                                                                                               ## ...
                                                                                               ## ;
                                                                                               ##
                                                                                               ## !
                                                                                               ## Standard_Real
                                                                                               ## TolAng
                                                                                               ## =
                                                                                               ## ...
                                                                                               ## ;
                                                                                               ##
                                                                                               ## !
                                                                                               ## myBoundary
                                                                                               ## =
                                                                                               ## GeomFill_BoundWithSurf
                                                                                               ## (
                                                                                               ##
                                                                                               ## !
                                                                                               ## CurveOnSurf,
                                                                                               ## Tol,
                                                                                               ## TolAng
                                                                                               ## );
type
  GeomFillBSplineCurves* {.importcpp: "GeomFill_BSplineCurves",
                          header: "GeomFill_BSplineCurves.hxx", bycopy.} = object ## !
                                                                             ## Constructs a
                                                                             ## default
                                                                             ## BSpline
                                                                             ## surface
                                                                             ## framework.
type
  HandleGeomFillCircularBlendFunc* = Handle[GeomFillCircularBlendFunc]
## ! Circular     Blend Function  to    approximate by
## ! SweepApproximation from Approx
type
  GeomFillCircularBlendFunc* {.importcpp: "GeomFill_CircularBlendFunc",
                              header: "GeomFill_CircularBlendFunc.hxx", bycopy.} = object of ApproxSweepFunction ##
                                                                                                          ## !
                                                                                                          ## Create
                                                                                                          ## a
                                                                                                          ## Blend
                                                                                                          ## with
                                                                                                          ## a
                                                                                                          ## constant
                                                                                                          ## radius
                                                                                                          ## with
                                                                                                          ## 2
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## guide-line.
                                                                                                          ## <FShape>
                                                                                                          ## sets
                                                                                                          ## the
                                                                                                          ## type
                                                                                                          ## of
                                                                                                          ## fillet
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## surface.
                                                                                                          ## The
                                                                                                          ## --
                                                                                                          ## default
                                                                                                          ## value
                                                                                                          ## is
                                                                                                          ## Convert_TgtThetaOver2
                                                                                                          ## (classical
                                                                                                          ## --
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## nurbs
                                                                                                          ## --
                                                                                                          ## representation
                                                                                                          ## of
                                                                                                          ## circles).
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## ChFi3d_QuasiAngular
                                                                                                          ## --
                                                                                                          ## corresponds
                                                                                                          ## to
                                                                                                          ## a
                                                                                                          ## nurbs
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## representation
                                                                                                          ## of
                                                                                                          ## circles
                                                                                                          ## --
                                                                                                          ## which
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## parameterisation
                                                                                                          ## matches
                                                                                                          ## the
                                                                                                          ## circle
                                                                                                          ## one.
                                                                                                          ## --
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## ChFi3d_Polynomial
                                                                                                          ## corresponds
                                                                                                          ## to
                                                                                                          ## a
                                                                                                          ## polynomial
                                                                                                          ## --
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## representation
                                                                                                          ## of
                                                                                                          ## circles.
type
  HandleGeomFillConstantBiNormal* = Handle[GeomFillConstantBiNormal]
## ! Defined an Trihedron Law  where the BiNormal, is fixed
type
  GeomFillConstantBiNormal* {.importcpp: "GeomFill_ConstantBiNormal",
                             header: "GeomFill_ConstantBiNormal.hxx", bycopy.} = object of GeomFillTrihedronLaw
type
  GeomFillConstrainedFilling* {.importcpp: "GeomFill_ConstrainedFilling",
                               header: "GeomFill_ConstrainedFilling.hxx", bycopy.} = object ##
                                                                                       ## !
                                                                                       ## Constructs
                                                                                       ## an
                                                                                       ## empty
                                                                                       ## framework
                                                                                       ## for
                                                                                       ## filling
                                                                                       ## a
                                                                                       ## surface
                                                                                       ## from
                                                                                       ## boundaries.
                                                                                       ##
                                                                                       ## !
                                                                                       ## The
                                                                                       ## boundaries
                                                                                       ## of
                                                                                       ## the
                                                                                       ## surface
                                                                                       ## will
                                                                                       ## be
                                                                                       ## defined,
                                                                                       ## and
                                                                                       ## the
                                                                                       ##
                                                                                       ## !
                                                                                       ## surface
                                                                                       ## will
                                                                                       ## be
                                                                                       ## built
                                                                                       ## by
                                                                                       ## using
                                                                                       ## the
                                                                                       ## function
                                                                                       ## Init.
                                                                                       ##
                                                                                       ## !
                                                                                       ## The
                                                                                       ## surface
                                                                                       ## will
                                                                                       ## respect
                                                                                       ## the
                                                                                       ## following
                                                                                       ## constraints:
                                                                                       ##
                                                                                       ## !
                                                                                       ## -
                                                                                       ## its
                                                                                       ## degree
                                                                                       ## will
                                                                                       ## not
                                                                                       ## be
                                                                                       ## greater
                                                                                       ## than
                                                                                       ## MaxDeg
                                                                                       ##
                                                                                       ## !
                                                                                       ## -
                                                                                       ## the
                                                                                       ## maximum
                                                                                       ## number
                                                                                       ## of
                                                                                       ## segments
                                                                                       ## MaxSeg
                                                                                       ## which
                                                                                       ##
                                                                                       ## !
                                                                                       ## BSpline
                                                                                       ## surfaces
                                                                                       ## can
                                                                                       ## have.
                                                                                       ##
                                                                                       ## !
                                                                                       ## Performs
                                                                                       ## the
                                                                                       ## approximation
                                                                                       ## an
                                                                                       ## compute
                                                                                       ## the
                                                                                       ## poles
                                                                                       ## of
                                                                                       ## the
                                                                                       ##
                                                                                       ## !
                                                                                       ## surface.
type
  GeomFillCoons* {.importcpp: "GeomFill_Coons", header: "GeomFill_Coons.hxx", bycopy.} = object of GeomFillFilling
type
  HandleGeomFillCoonsAlgPatch* = Handle[GeomFillCoonsAlgPatch]
## ! Provides  evaluation   methods on an   algorithmic
## ! patch (based on 4 Curves) defined by  its   boundaries and  blending
## ! functions.
type
  GeomFillCoonsAlgPatch* {.importcpp: "GeomFill_CoonsAlgPatch",
                          header: "GeomFill_CoonsAlgPatch.hxx", bycopy.} = object of StandardTransient ##
                                                                                                ## !
                                                                                                ## Constructs
                                                                                                ## the
                                                                                                ## algorithmic
                                                                                                ## patch.
                                                                                                ## By
                                                                                                ## Default
                                                                                                ## the
                                                                                                ##
                                                                                                ## !
                                                                                                ## constructed
                                                                                                ## blending
                                                                                                ## functions
                                                                                                ## are
                                                                                                ## linear.
                                                                                                ##
                                                                                                ## !
                                                                                                ## Warning:
                                                                                                ## No
                                                                                                ## control
                                                                                                ## is
                                                                                                ## done
                                                                                                ## on
                                                                                                ## the
                                                                                                ## bounds.
                                                                                                ##
                                                                                                ## !
                                                                                                ## B1/B3
                                                                                                ## and
                                                                                                ## B2/B4
                                                                                                ## must
                                                                                                ## be
                                                                                                ## same
                                                                                                ## range
                                                                                                ## and
                                                                                                ## well
                                                                                                ## oriented.
type
  GeomFillCornerState* {.importcpp: "GeomFill_CornerState",
                        header: "GeomFill_CornerState.hxx", bycopy.} = object
type
  HandleGeomFillCorrectedFrenet* = Handle[GeomFillCorrectedFrenet]
## ! Defined an Corrected Frenet  Trihedron  Law It is
## ! like Frenet with an Torsion's minimization
type
  GeomFillCorrectedFrenet* {.importcpp: "GeomFill_CorrectedFrenet",
                            header: "GeomFill_CorrectedFrenet.hxx", bycopy.} = object of GeomFillTrihedronLaw
type
  HandleGeomFillCurveAndTrihedron* = Handle[GeomFillCurveAndTrihedron]
## ! Define location law with an TrihedronLaw and an
## ! curve
## ! Definition Location is :
## ! transformed  section   coordinates  in  (Curve(v)),
## ! (Normal(v),   BiNormal(v), Tangente(v))) systeme are
## ! the  same like section  shape coordinates in
## ! (O,(OX, OY, OZ)) systeme.
type
  GeomFillCurveAndTrihedron* {.importcpp: "GeomFill_CurveAndTrihedron",
                              header: "GeomFill_CurveAndTrihedron.hxx", bycopy.} = object of GeomFillLocationLaw
type
  GeomFillCurved* {.importcpp: "GeomFill_Curved", header: "GeomFill_Curved.hxx",
                   bycopy.} = object of GeomFillFilling
type
  HandleGeomFillDarboux* = Handle[GeomFillDarboux]
## ! Defines Darboux case of Frenet Trihedron Law
type
  GeomFillDarboux* {.importcpp: "GeomFill_Darboux", header: "GeomFill_Darboux.hxx",
                    bycopy.} = object of GeomFillTrihedronLaw
type
  HandleGeomFillDegeneratedBound* = Handle[GeomFillDegeneratedBound]
## ! Description of a degenerated boundary (a point).
## ! Class defining  a degenerated  boundary   for   a
## ! constrained filling   with  a   point  and  no   other
## ! constraint. Only used to  simulate an  ordinary bound,
## ! may not be usefull and desapear soon.
type
  GeomFillDegeneratedBound* {.importcpp: "GeomFill_DegeneratedBound",
                             header: "GeomFill_DegeneratedBound.hxx", bycopy.} = object of GeomFillBoundary
type
  HandleGeomFillDiscreteTrihedron* = Handle[GeomFillDiscreteTrihedron]
## ! Defined Discrete Trihedron Law.
## ! The requirement for path curve is only G1.
## ! The result is C0-continuous surface
## ! that can be later approximated to C1.
type
  GeomFillDiscreteTrihedron* {.importcpp: "GeomFill_DiscreteTrihedron",
                              header: "GeomFill_DiscreteTrihedron.hxx", bycopy.} = object of GeomFillTrihedronLaw
type
  HandleGeomFillDraftTrihedron* = Handle[GeomFillDraftTrihedron]
  GeomFillDraftTrihedron* {.importcpp: "GeomFill_DraftTrihedron",
                           header: "GeomFill_DraftTrihedron.hxx", bycopy.} = object of GeomFillTrihedronLaw
type
  HandleGeomFillEvolvedSection* = Handle[GeomFillEvolvedSection]
## ! Define an Constant Section Law
type
  GeomFillEvolvedSection* {.importcpp: "GeomFill_EvolvedSection",
                           header: "GeomFill_EvolvedSection.hxx", bycopy.} = object of GeomFillSectionLaw ##
                                                                                                   ## !
                                                                                                   ## Make
                                                                                                   ## an
                                                                                                   ## SectionLaw
                                                                                                   ## with
                                                                                                   ## a
                                                                                                   ## Curve
                                                                                                   ## and
                                                                                                   ## a
                                                                                                   ## real
                                                                                                   ## Law.
type
  GeomFillFilling* {.importcpp: "GeomFill_Filling", header: "GeomFill_Filling.hxx",
                    bycopy.} = object of RootObj
type
  HandleGeomFillFixed* = Handle[GeomFillFixed]
## ! Defined an constant TrihedronLaw
type
  GeomFillFixed* {.importcpp: "GeomFill_Fixed", header: "GeomFill_Fixed.hxx", bycopy.} = object of GeomFillTrihedronLaw
type
  HandleGeomFillFrenet* = Handle[GeomFillFrenet]
## ! Defined Frenet Trihedron  Law
type
  GeomFillFrenet* {.importcpp: "GeomFill_Frenet", header: "GeomFill_Frenet.hxx",
                   bycopy.} = object of GeomFillTrihedronLaw
type
  GeomFillFunctionDraft* {.importcpp: "GeomFill_FunctionDraft",
                          header: "GeomFill_FunctionDraft.hxx", bycopy.} = object of MathFunctionSetWithDerivatives
type
  GeomFillFunctionGuide* {.importcpp: "GeomFill_FunctionGuide",
                          header: "GeomFill_FunctionGuide.hxx", bycopy.} = object of MathFunctionSetWithDerivatives
type
  GeomFillGenerator* {.importcpp: "GeomFill_Generator",
                      header: "GeomFill_Generator.hxx", bycopy.} = object of GeomFillProfiler
type
  HandleGeomFillGuideTrihedronAC* = Handle[GeomFillGuideTrihedronAC]
## ! Trihedron in  the  case of a sweeping along a guide  curve.
## ! defined by curviline  absciss
type
  GeomFillGuideTrihedronAC* {.importcpp: "GeomFill_GuideTrihedronAC",
                             header: "GeomFill_GuideTrihedronAC.hxx", bycopy.} = object of GeomFillTrihedronWithGuide
type
  HandleGeomFillGuideTrihedronPlan* = Handle[GeomFillGuideTrihedronPlan]
## ! Trihedron in  the case of sweeping along a guide curve defined
## ! by the orthogonal  plan on  the trajectory
type
  GeomFillGuideTrihedronPlan* {.importcpp: "GeomFill_GuideTrihedronPlan",
                               header: "GeomFill_GuideTrihedronPlan.hxx", bycopy.} = object of GeomFillTrihedronWithGuide
type
  GeomFillHArray1OfLocationLaw* {.importcpp: "GeomFill_HArray1OfLocationLaw",
                                 header: "GeomFill_HArray1OfLocationLaw.hxx",
                                 bycopy.} = object of GeomFillArray1OfLocationLaw
type
  GeomFillHArray1OfSectionLaw* {.importcpp: "GeomFill_HArray1OfSectionLaw",
                                header: "GeomFill_HArray1OfSectionLaw.hxx", bycopy.} = object of GeomFillArray1OfSectionLaw
type
  GeomFillHSequenceOfAx2* {.importcpp: "GeomFill_HSequenceOfAx2",
                           header: "GeomFill_HSequenceOfAx2.hxx", bycopy.} = object of GeomFillSequenceOfAx2
type
  HandleGeomFillLine* = Handle[GeomFillLine]
## ! class for instantiation of AppBlend
type
  GeomFillLine* {.importcpp: "GeomFill_Line", header: "GeomFill_Line.hxx", bycopy.} = object of StandardTransient
type
  HandleGeomFillLocationDraft* = Handle[GeomFillLocationDraft]
  GeomFillLocationDraft* {.importcpp: "GeomFill_LocationDraft",
                          header: "GeomFill_LocationDraft.hxx", bycopy.} = object of GeomFillLocationLaw
type
  HandleGeomFillLocationGuide* = Handle[GeomFillLocationGuide]
  GeomFillLocationGuide* {.importcpp: "GeomFill_LocationGuide",
                          header: "GeomFill_LocationGuide.hxx", bycopy.} = object of GeomFillLocationLaw
type
  HandleGeomFillLocationLaw* = Handle[GeomFillLocationLaw]
## ! To define location  law in Sweeping location is --
## ! defined   by an  Matrix  M and  an Vector  V,  and
## ! transform an point P in MP+V.
type
  GeomFillLocationLaw* {.importcpp: "GeomFill_LocationLaw",
                        header: "GeomFill_LocationLaw.hxx", bycopy.} = object of StandardTransient
type
  GeomFillLocFunction* {.importcpp: "GeomFill_LocFunction",
                        header: "GeomFill_LocFunction.hxx", bycopy.} = object
type
  HandleGeomFillNSections* = Handle[GeomFillNSections]
## ! Define a Section Law by N Sections
type
  GeomFillNSections* {.importcpp: "GeomFill_NSections",
                      header: "GeomFill_NSections.hxx", bycopy.} = object of GeomFillSectionLaw ##
                                                                                         ## !
                                                                                         ## Make
                                                                                         ## a
                                                                                         ## SectionLaw
                                                                                         ## with
                                                                                         ## N
                                                                                         ## Curves.
type
  GeomFillPipe* {.importcpp: "GeomFill_Pipe", header: "GeomFill_Pipe.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## Constructs
                                                                                     ## an
                                                                                     ## empty
                                                                                     ## algorithm
                                                                                     ## for
                                                                                     ## building
                                                                                     ## pipes.
                                                                                     ## Use
                                                                                     ##
                                                                                     ## !
                                                                                     ## the
                                                                                     ## function
                                                                                     ## Init
                                                                                     ## to
                                                                                     ## initialize
                                                                                     ## it.
type
  GeomFillPlanFunc* {.importcpp: "GeomFill_PlanFunc",
                     header: "GeomFill_PlanFunc.hxx", bycopy.} = object of MathFunctionWithDerivative
type
  GeomFillPolynomialConvertor* {.importcpp: "GeomFill_PolynomialConvertor",
                                header: "GeomFill_PolynomialConvertor.hxx", bycopy.} = object
type
  GeomFillProfiler* {.importcpp: "GeomFill_Profiler",
                     header: "GeomFill_Profiler.hxx", bycopy.} = object of RootObj
type
  GeomFillQuasiAngularConvertor* {.importcpp: "GeomFill_QuasiAngularConvertor",
                                  header: "GeomFill_QuasiAngularConvertor.hxx",
                                  bycopy.} = object
type
  GeomFillSectionGenerator* {.importcpp: "GeomFill_SectionGenerator",
                             header: "GeomFill_SectionGenerator.hxx", bycopy.} = object of GeomFillProfiler
type
  HandleGeomFillSectionLaw* = Handle[GeomFillSectionLaw]
## ! To define section law in  sweeping
type
  GeomFillSectionLaw* {.importcpp: "GeomFill_SectionLaw",
                       header: "GeomFill_SectionLaw.hxx", bycopy.} = object of StandardTransient ##
                                                                                          ## !
                                                                                          ## compute
                                                                                          ## the
                                                                                          ## section
                                                                                          ## for
                                                                                          ## v
                                                                                          ## =
                                                                                          ## param
type
  GeomFillSectionPlacement* {.importcpp: "GeomFill_SectionPlacement",
                             header: "GeomFill_SectionPlacement.hxx", bycopy.} = object
type
  HandleGeomFillSimpleBound* = Handle[GeomFillSimpleBound]
## ! Defines a 3d curve as a boundary for a
## ! GeomFill_ConstrainedFilling algorithm.
## ! This curve is unattached to an existing surface.D
## ! Contains fields to allow a reparametrization of curve.
type
  GeomFillSimpleBound* {.importcpp: "GeomFill_SimpleBound",
                        header: "GeomFill_SimpleBound.hxx", bycopy.} = object of GeomFillBoundary ##
                                                                                           ## !
                                                                                           ## Constructs
                                                                                           ## the
                                                                                           ## boundary
                                                                                           ## object
                                                                                           ## defined
                                                                                           ## by
                                                                                           ## the
                                                                                           ## 3d
                                                                                           ## curve.
                                                                                           ##
                                                                                           ## !
                                                                                           ## The
                                                                                           ## surface
                                                                                           ## to
                                                                                           ## be
                                                                                           ## built
                                                                                           ## along
                                                                                           ## this
                                                                                           ## boundary
                                                                                           ## will
                                                                                           ## be
                                                                                           ## in
                                                                                           ## the
                                                                                           ##
                                                                                           ## !
                                                                                           ## tolerance
                                                                                           ## range
                                                                                           ## defined
                                                                                           ## by
                                                                                           ## Tol3d.
                                                                                           ##
                                                                                           ## !
                                                                                           ## This
                                                                                           ## object
                                                                                           ## is
                                                                                           ## to
                                                                                           ## be
                                                                                           ## used
                                                                                           ## as
                                                                                           ## a
                                                                                           ## boundary
                                                                                           ## for
                                                                                           ## a
                                                                                           ##
                                                                                           ## !
                                                                                           ## GeomFill_ConstrainedFilling
                                                                                           ## framework.
                                                                                           ##
                                                                                           ## !
                                                                                           ## Dummy
                                                                                           ## is
                                                                                           ## initialized
                                                                                           ## but
                                                                                           ## has
                                                                                           ## no
                                                                                           ## function
                                                                                           ## in
                                                                                           ## this
                                                                                           ## class.
                                                                                           ##
                                                                                           ## !
                                                                                           ## Warning
                                                                                           ##
                                                                                           ## !
                                                                                           ## Curve
                                                                                           ## is
                                                                                           ## an
                                                                                           ## adapted
                                                                                           ## curve,
                                                                                           ## that
                                                                                           ## is,
                                                                                           ## an
                                                                                           ## object
                                                                                           ## which
                                                                                           ## is
                                                                                           ## an
                                                                                           ## interface
                                                                                           ## between:
                                                                                           ##
                                                                                           ## !
                                                                                           ## -
                                                                                           ## the
                                                                                           ## services
                                                                                           ## provided
                                                                                           ## by
                                                                                           ## a
                                                                                           ## 3D
                                                                                           ## curve
                                                                                           ## from
                                                                                           ## the
                                                                                           ## package
                                                                                           ## Geom
                                                                                           ##
                                                                                           ## !
                                                                                           ## -
                                                                                           ## and
                                                                                           ## those
                                                                                           ## required
                                                                                           ## of
                                                                                           ## the
                                                                                           ## curve
                                                                                           ## by
                                                                                           ## the
                                                                                           ## computation
                                                                                           ##
                                                                                           ## !
                                                                                           ## algorithm
                                                                                           ## which
                                                                                           ## uses
                                                                                           ## it.
                                                                                           ##
                                                                                           ## !
                                                                                           ## The
                                                                                           ## adapted
                                                                                           ## curve
                                                                                           ## is
                                                                                           ## created
                                                                                           ## in
                                                                                           ## one
                                                                                           ## of
                                                                                           ## the
                                                                                           ## following
                                                                                           ## ways:
                                                                                           ##
                                                                                           ## !
                                                                                           ## -
                                                                                           ## First
                                                                                           ## sequence:
                                                                                           ##
                                                                                           ## !
                                                                                           ## Handle(Geom_Curve)
                                                                                           ## myCurve
                                                                                           ## =
                                                                                           ## ...
                                                                                           ## ;
                                                                                           ##
                                                                                           ## !
                                                                                           ## Handle(GeomAdaptor_HCurve)
                                                                                           ##
                                                                                           ## !
                                                                                           ## Curve
                                                                                           ## =
                                                                                           ## new
                                                                                           ##
                                                                                           ## !
                                                                                           ## GeomAdaptor_HCurve(myCurve);
                                                                                           ##
                                                                                           ## !
                                                                                           ## -
                                                                                           ## Second
                                                                                           ## sequence:
                                                                                           ##
                                                                                           ## !
                                                                                           ## //
                                                                                           ## Step
                                                                                           ## 1
                                                                                           ##
                                                                                           ## !
                                                                                           ## Handle(Geom_Curve)
                                                                                           ## myCurve
                                                                                           ## =
                                                                                           ## ...
                                                                                           ## ;
                                                                                           ##
                                                                                           ## !
                                                                                           ## GeomAdaptor_Curve
                                                                                           ## Crv
                                                                                           ## (myCurve);
                                                                                           ##
                                                                                           ## !
                                                                                           ## //
                                                                                           ## Step
                                                                                           ## 2
                                                                                           ##
                                                                                           ## !
                                                                                           ## Handle(GeomAdaptor_HCurve)
                                                                                           ##
                                                                                           ## !
                                                                                           ## Curve
                                                                                           ## =
                                                                                           ## new
                                                                                           ##
                                                                                           ## !
                                                                                           ## GeomAdaptor_HCurve(Crv);
                                                                                           ##
                                                                                           ## !
                                                                                           ## You
                                                                                           ## use
                                                                                           ## the
                                                                                           ## second
                                                                                           ## part
                                                                                           ## of
                                                                                           ## this
                                                                                           ## sequence
                                                                                           ## if
                                                                                           ## you
                                                                                           ## already
                                                                                           ##
                                                                                           ## !
                                                                                           ## have
                                                                                           ## the
                                                                                           ## adapted
                                                                                           ## curve
                                                                                           ## Crv.
                                                                                           ##
                                                                                           ## !
                                                                                           ## The
                                                                                           ## boundary
                                                                                           ## is
                                                                                           ## then
                                                                                           ## constructed
                                                                                           ## with
                                                                                           ## the
                                                                                           ## Curve
                                                                                           ## object:
                                                                                           ##
                                                                                           ## !
                                                                                           ## Standard_Real
                                                                                           ## Tol
                                                                                           ## =
                                                                                           ## ...
                                                                                           ## ;
                                                                                           ##
                                                                                           ## !
                                                                                           ## Standard_Real
                                                                                           ## dummy
                                                                                           ## =
                                                                                           ## 0.
                                                                                           ## ;
                                                                                           ##
                                                                                           ## !
                                                                                           ## myBoundary
                                                                                           ## =
                                                                                           ## GeomFill_SimpleBound
                                                                                           ##
                                                                                           ## !
                                                                                           ## (Curve,Tol,dummy);
type
  GeomFillSnglrFunc* {.importcpp: "GeomFill_SnglrFunc",
                      header: "GeomFill_SnglrFunc.hxx", bycopy.} = object of Adaptor3dCurve
type
  GeomFillStretch* {.importcpp: "GeomFill_Stretch", header: "GeomFill_Stretch.hxx",
                    bycopy.} = object of GeomFillFilling
type
  GeomFillSweep* {.importcpp: "GeomFill_Sweep", header: "GeomFill_Sweep.hxx", bycopy.} = object
type
  HandleGeomFillSweepFunction* = Handle[GeomFillSweepFunction]
## ! Function to approximate by SweepApproximation from
## ! Approx. To bulid general sweep Surface.
type
  GeomFillSweepFunction* {.importcpp: "GeomFill_SweepFunction",
                          header: "GeomFill_SweepFunction.hxx", bycopy.} = object of ApproxSweepFunction
type
  GeomFillSweepSectionGenerator* {.importcpp: "GeomFill_SweepSectionGenerator",
                                  header: "GeomFill_SweepSectionGenerator.hxx",
                                  bycopy.} = object
type
  GeomFillTensor* {.importcpp: "GeomFill_Tensor", header: "GeomFill_Tensor.hxx",
                   bycopy.} = object
type
  HandleGeomFillTgtField* = Handle[GeomFillTgtField]
## ! Root class defining the methods we need to make an
## ! algorithmic tangents field.
type
  GeomFillTgtField* {.importcpp: "GeomFill_TgtField",
                     header: "GeomFill_TgtField.hxx", bycopy.} = object of StandardTransient
type
  HandleGeomFillTgtOnCoons* = Handle[GeomFillTgtOnCoons]
## ! Defines   an   algorithmic  tangents  field   on a
## ! boundary of a CoonsAlgPatch.
type
  GeomFillTgtOnCoons* {.importcpp: "GeomFill_TgtOnCoons",
                       header: "GeomFill_TgtOnCoons.hxx", bycopy.} = object of GeomFillTgtField
type
  HandleGeomFillTrihedronLaw* = Handle[GeomFillTrihedronLaw]
## ! To define Trihedron along one Curve
type
  GeomFillTrihedronLaw* {.importcpp: "GeomFill_TrihedronLaw",
                         header: "GeomFill_TrihedronLaw.hxx", bycopy.} = object of StandardTransient
type
  HandleGeomFillTrihedronWithGuide* = Handle[GeomFillTrihedronWithGuide]
## ! To define Trihedron along one Curve with a guide
type
  GeomFillTrihedronWithGuide* {.importcpp: "GeomFill_TrihedronWithGuide",
                               header: "GeomFill_TrihedronWithGuide.hxx", bycopy.} = object of GeomFillTrihedronLaw
type
  HandleGeomFillUniformSection* = Handle[GeomFillUniformSection]
## ! Define an Constant Section Law
type
  GeomFillUniformSection* {.importcpp: "GeomFill_UniformSection",
                           header: "GeomFill_UniformSection.hxx", bycopy.} = object of GeomFillSectionLaw ##
                                                                                                   ## !
                                                                                                   ## Make
                                                                                                   ## an
                                                                                                   ## constant
                                                                                                   ## Law
                                                                                                   ## with
                                                                                                   ## C.
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## [First,
                                                                                                   ## Last]
                                                                                                   ## define
                                                                                                   ## law
                                                                                                   ## definition
                                                                                                   ## domain
