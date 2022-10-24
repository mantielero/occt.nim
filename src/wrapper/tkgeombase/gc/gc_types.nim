type
  MakeArcOfCircle* {.importcpp: "GC_MakeArcOfCircle",
                    header: "GC_MakeArcOfCircle.hxx", bycopy.} = object of Root ## ! Make an arc of circle
                                                                         ## (TrimmedCurve from Geom) from
                                                                         ## ! a circle between two angles Alpha1 and Alpha2
                                                                         ## ! given in
                                                                         ## radiians.
type
  MakeArcOfEllipse* {.importcpp: "GC_MakeArcOfEllipse",
                     header: "GC_MakeArcOfEllipse.hxx", bycopy.} = object of Root ## !
                                                                           ## Constructs an arc of
                                                                           ## Ellipse
                                                                           ## (TrimmedCurve from Geom) from
                                                                           ## ! a
                                                                           ## Ellipse
                                                                           ## between two
                                                                           ## parameters
                                                                           ## Alpha1 and
                                                                           ## Alpha2.
type
  MakeArcOfHyperbola* {.importcpp: "GC_MakeArcOfHyperbola",
                       header: "GC_MakeArcOfHyperbola.hxx", bycopy.} = object of Root ## !
                                                                               ## Creates
                                                                               ## an
                                                                               ## arc
                                                                               ## of
                                                                               ## Hyperbola
                                                                               ## (TrimmedCurve
                                                                               ## from
                                                                               ## Geom)
                                                                               ## from
                                                                               ## ! a
                                                                               ## Hyperbola
                                                                               ## between
                                                                               ## two
                                                                               ## parameters
                                                                               ## Alpha1
                                                                               ## and
                                                                               ## Alpha2
                                                                               ## !
                                                                               ## (given
                                                                               ## in
                                                                               ## radians).
type
  MakeArcOfParabola* {.importcpp: "GC_MakeArcOfParabola",
                      header: "GC_MakeArcOfParabola.hxx", bycopy.} = object of Root ## !
                                                                             ## Creates an arc of
                                                                             ## Parabola
                                                                             ## (TrimmedCurve
                                                                             ## from
                                                                             ## Geom)
                                                                             ## from
                                                                             ## ! a
                                                                             ## Parabola
                                                                             ## between two
                                                                             ## parameters
                                                                             ## Alpha1 and
                                                                             ## Alpha2
                                                                             ## !
                                                                             ## (given in
                                                                             ## radians).
type
  MakeCircle* {.importcpp: "GC_MakeCircle", header: "GC_MakeCircle.hxx", bycopy.} = object of Root ##
                                                                                         ## !
                                                                                         ## creates
                                                                                         ## a
                                                                                         ## circle
                                                                                         ## from
                                                                                         ## a
                                                                                         ## non
                                                                                         ## persistent
                                                                                         ## circle
                                                                                         ## C
                                                                                         ## by
                                                                                         ## its
                                                                                         ## conversion.
type
  MakeConicalSurface* {.importcpp: "GC_MakeConicalSurface",
                       header: "GC_MakeConicalSurface.hxx", bycopy.} = object of Root ## !
                                                                               ## A2
                                                                               ## defines
                                                                               ## the
                                                                               ## local
                                                                               ## coordinate
                                                                               ## system
                                                                               ## of
                                                                               ## the
                                                                               ## conical
                                                                               ## surface.
                                                                               ## !
                                                                               ## Ang
                                                                               ## is
                                                                               ## the
                                                                               ## conical
                                                                               ## surface
                                                                               ## semi-angle
                                                                               ## ]0,
                                                                               ## PI/2[.
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
                                                                               ## !
                                                                               ## The
                                                                               ## "ZDirection"
                                                                               ## of
                                                                               ## A2
                                                                               ## defines
                                                                               ## the
                                                                               ## direction
                                                                               ## of
                                                                               ## the
                                                                               ## surface's
                                                                               ## !
                                                                               ## axis
                                                                               ## of
                                                                               ## symmetry.
                                                                               ## !
                                                                               ## If
                                                                               ## the
                                                                               ## location
                                                                               ## point
                                                                               ## of
                                                                               ## A2
                                                                               ## is
                                                                               ## the
                                                                               ## apex
                                                                               ## of
                                                                               ## the
                                                                               ## surface
                                                                               ## !
                                                                               ## Radius = 0 .
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
                                                                               ## !
                                                                               ## such
                                                                               ## that
                                                                               ## the
                                                                               ## normal
                                                                               ## Vector
                                                                               ## (N =
                                                                               ## D1U ^
                                                                               ## D1V)
                                                                               ## is
                                                                               ## oriented
                                                                               ## towards
                                                                               ## !
                                                                               ## the
                                                                               ## "outside
                                                                               ## region"
                                                                               ## of
                                                                               ## the
                                                                               ## surface.
                                                                               ## !
                                                                               ## Status
                                                                               ## is
                                                                               ## "NegativeRadius"
                                                                               ## if
                                                                               ## Radius <
                                                                               ## 0.0
                                                                               ## or
                                                                               ## "BadAngle"
                                                                               ## if
                                                                               ## !
                                                                               ## Ang <
                                                                               ## Resolution
                                                                               ## from
                                                                               ## gp
                                                                               ## or
                                                                               ## Ang
                                                                               ## >=
                                                                               ## PI/ -
                                                                               ## Resolution
type
  MakeCylindricalSurface* {.importcpp: "GC_MakeCylindricalSurface",
                           header: "GC_MakeCylindricalSurface.hxx", bycopy.} = object of Root ##
                                                                                       ## !
                                                                                       ## A2
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
                                                                                       ## A2
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
                                                                                       ## Status
                                                                                       ## is
                                                                                       ## "NegativeRadius"
                                                                                       ## if
                                                                                       ## Radius
                                                                                       ## <
                                                                                       ## 0.0
type
  MakeEllipse* {.importcpp: "GC_MakeEllipse", header: "GC_MakeEllipse.hxx", bycopy.} = object of Root ##
                                                                                            ## !
                                                                                            ## Creates
                                                                                            ## an
                                                                                            ## ellipse
                                                                                            ## from
                                                                                            ## a
                                                                                            ## non
                                                                                            ## persistent
                                                                                            ## ellipse
                                                                                            ## E
                                                                                            ## from
                                                                                            ## package
                                                                                            ## gp
                                                                                            ## by
                                                                                            ## its
                                                                                            ## conversion.
type
  MakeHyperbola* {.importcpp: "GC_MakeHyperbola", header: "GC_MakeHyperbola.hxx",
                  bycopy.} = object of Root ## ! Creates  an Hyperbola from a non persistent hyperbola  from package gp by conversion.
type
  MakeLine* {.importcpp: "GC_MakeLine", header: "GC_MakeLine.hxx", bycopy.} = object of Root ##
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
  MakeMirror* {.importcpp: "GC_MakeMirror", header: "GC_MakeMirror.hxx", bycopy.} = object
type
  MakePlane* {.importcpp: "GC_MakePlane", header: "GC_MakePlane.hxx", bycopy.} = object of Root ##
                                                                                      ## !
                                                                                      ## Creates
                                                                                      ## a
                                                                                      ## plane
                                                                                      ## from
                                                                                      ## a
                                                                                      ## non
                                                                                      ## persistent
                                                                                      ## plane
                                                                                      ## from
                                                                                      ## package
                                                                                      ## gp.
type
  MakeRotation* {.importcpp: "GC_MakeRotation", header: "GC_MakeRotation.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Constructs
                                                                                         ## a
                                                                                         ## rotation
                                                                                         ## through
                                                                                         ## angle
                                                                                         ## Angle
                                                                                         ## about
                                                                                         ## the
                                                                                         ## axis
                                                                                         ## defined
                                                                                         ## by
                                                                                         ## the
                                                                                         ## line
                                                                                         ## Line.
type
  MakeScale* {.importcpp: "GC_MakeScale", header: "GC_MakeScale.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Constructs
                                                                                ## a
                                                                                ## scaling
                                                                                ## transformation
                                                                                ## with
                                                                                ##
                                                                                ## !
                                                                                ## -
                                                                                ## Point
                                                                                ## as
                                                                                ## the
                                                                                ## center
                                                                                ## of
                                                                                ## the
                                                                                ## transformation,
                                                                                ## and
                                                                                ##
                                                                                ## !
                                                                                ## -
                                                                                ## Scale
                                                                                ## as
                                                                                ## the
                                                                                ## scale
                                                                                ## factor.
type
  MakeSegment* {.importcpp: "GC_MakeSegment", header: "GC_MakeSegment.hxx", bycopy.} = object of Root ##
                                                                                            ## !
                                                                                            ## Make
                                                                                            ## a
                                                                                            ## segment
                                                                                            ## of
                                                                                            ## Line
                                                                                            ## from
                                                                                            ## the
                                                                                            ## 2
                                                                                            ## points
                                                                                            ## <P1>
                                                                                            ## and
                                                                                            ## <P2>.
                                                                                            ##
                                                                                            ## !
                                                                                            ## It
                                                                                            ## returns
                                                                                            ## NullObject
                                                                                            ## if
                                                                                            ## <P1>
                                                                                            ## and
                                                                                            ## <P2>
                                                                                            ## are
                                                                                            ## confused.
type
  MakeTranslation* {.importcpp: "GC_MakeTranslation",
                    header: "GC_MakeTranslation.hxx", bycopy.} = object ## ! Constructs a translation along the vector " Vect "
type
  MakeTrimmedCone* {.importcpp: "GC_MakeTrimmedCone",
                    header: "GC_MakeTrimmedCone.hxx", bycopy.} = object of Root ## ! Make a
                                                                         ## RectangularTrimmedSurface
                                                                         ## <TheCone> from Geom
                                                                         ## ! It is trimmed by P3 and P4.
                                                                         ## ! Its axis is <P1P2> and the radius of its base is
                                                                         ## ! the
                                                                         ## distance between <P3> and <P1P2>.
                                                                         ## ! The
                                                                         ## distance between <P4> and <P1P2> is the radius of
                                                                         ## ! the section passing through <P4>.
                                                                         ## ! An error iss raised if
                                                                         ## <P1>,<P2>,<P3>,<P4> are
                                                                         ## !
                                                                         ## colinear or if <P3P4> is
                                                                         ## perpendicular to <P1P2> or
                                                                         ## ! <P3P4> is
                                                                         ## colinear to <P1P2>.
type
  MakeTrimmedCylinder* {.importcpp: "GC_MakeTrimmedCylinder",
                        header: "GC_MakeTrimmedCylinder.hxx", bycopy.} = object of Root ##
                                                                                 ## !
                                                                                 ## Make
                                                                                 ## a
                                                                                 ## cylindricalSurface
                                                                                 ## <Cyl>
                                                                                 ## from
                                                                                 ## Geom
                                                                                 ##
                                                                                 ## !
                                                                                 ## Its
                                                                                 ## axis
                                                                                 ## is
                                                                                 ## is
                                                                                 ## <P1P2>
                                                                                 ## and
                                                                                 ## its
                                                                                 ## radius
                                                                                 ## is
                                                                                 ## the
                                                                                 ## distance
                                                                                 ##
                                                                                 ## !
                                                                                 ## between
                                                                                 ## <P3>
                                                                                 ## and
                                                                                 ## <P1P2>.
                                                                                 ##
                                                                                 ## !
                                                                                 ## The
                                                                                 ## height
                                                                                 ## is
                                                                                 ## the
                                                                                 ## distance
                                                                                 ## between
                                                                                 ## P1
                                                                                 ## and
                                                                                 ## P2.
type
  Root* {.importcpp: "GC_Root", header: "GC_Root.hxx", bycopy.} = object of RootObj ## ! Returns true if the construction is successful.
