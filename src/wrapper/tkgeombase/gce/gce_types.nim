# PROVIDES: GceMakeMirror GceMakeMirror2d GceMakeRotation GceMakeRotation2d GceMakeScale GceMakeScale2d GceMakeTranslation GceMakeTranslation2d GceRoot GceMakeCirc GceMakeCirc2d GceMakeCone GceMakeCylinder GceMakeDir GceMakeDir2d GceMakeElips GceMakeElips2d GceMakeHypr GceMakeHypr2d GceMakeLin GceMakeLin2d GceMakeParab GceMakeParab2d GceMakePln
# DEPENDS:

type
  GceMakeMirror* {.importcpp: "gce_MakeMirror", header: "gce_MakeMirror.hxx", bycopy.} = object

type
  GceMakeMirror2d* {.importcpp: "gce_MakeMirror2d", header: "gce_MakeMirror2d.hxx",
                    bycopy.} = object

type
  GceMakeRotation* {.importcpp: "gce_MakeRotation", header: "gce_MakeRotation.hxx",
                    bycopy.} = object ## ! Constructs a rotation through angle Angle about the axis defined by the line Line.

type
  GceMakeRotation2d* {.importcpp: "gce_MakeRotation2d",
                      header: "gce_MakeRotation2d.hxx", bycopy.} = object ## ! Constructs a rotation through angle Angle about the center Point.

type
  GceMakeScale* {.importcpp: "gce_MakeScale", header: "gce_MakeScale.hxx", bycopy.} = object ##
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
  GceMakeScale2d* {.importcpp: "gce_MakeScale2d", header: "gce_MakeScale2d.hxx",
                   bycopy.} = object ## ! Constructs a scaling transformation with:
                                  ## ! -   Point as the center of the transformation, and
                                  ## ! -   Scale as the scale factor.

type
  GceMakeTranslation* {.importcpp: "gce_MakeTranslation",
                       header: "gce_MakeTranslation.hxx", bycopy.} = object ## !
                                                                       ## Constructs a
                                                                       ## translation along the vector " Vect"

type
  GceMakeTranslation2d* {.importcpp: "gce_MakeTranslation2d",
                         header: "gce_MakeTranslation2d.hxx", bycopy.} = object ## !
                                                                           ## Constructs a
                                                                           ## translation along the
                                                                           ## vector Vect.

                                                                           ## vector Vect.
type
  GceRoot* {.importcpp: "gce_Root", header: "gce_Root.hxx", bycopy.} = object of RootObj ## ! Returns true if the
                                                                      ## construction is
                                                                      ## successful.


type
  GceMakeCirc* {.importcpp: "gce_MakeCirc", header: "gce_MakeCirc.hxx", bycopy.} = object of GceRoot ##
                                                                                           ## !
                                                                                           ## A2
                                                                                           ## locates
                                                                                           ## the
                                                                                           ## circle
                                                                                           ## and
                                                                                           ## gives
                                                                                           ## its
                                                                                           ## orientation
                                                                                           ## in
                                                                                           ## 3D
                                                                                           ## space.
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
                                                                                           ## circle
                                                                                           ## with
                                                                                           ## Radius
                                                                                           ## =
                                                                                           ## 0.0
                                                                                           ##
                                                                                           ## !
                                                                                           ## The
                                                                                           ## status
                                                                                           ## is
                                                                                           ## "NegativeRadius"
                                                                                           ## if
                                                                                           ## Radius
                                                                                           ## <
                                                                                           ## 0.0

type
  GceMakeCirc2d* {.importcpp: "gce_MakeCirc2d", header: "gce_MakeCirc2d.hxx", bycopy.} = object of GceRoot ##
                                                                                                 ## !
                                                                                                 ## The
                                                                                                 ## location
                                                                                                 ## point
                                                                                                 ## of
                                                                                                 ## XAxis
                                                                                                 ## is
                                                                                                 ## the
                                                                                                 ## center
                                                                                                 ## of
                                                                                                 ## the
                                                                                                 ## circle.
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
                                                                                                 ## circle
                                                                                                 ## with
                                                                                                 ## Radius
                                                                                                 ## =
                                                                                                 ## 0.0
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## If
                                                                                                 ## Sense
                                                                                                 ## is
                                                                                                 ## true
                                                                                                 ## the
                                                                                                 ## local
                                                                                                 ## coordinate
                                                                                                 ## system
                                                                                                 ## of
                                                                                                 ## the
                                                                                                 ## solution
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## is
                                                                                                 ## direct
                                                                                                 ## and
                                                                                                 ## non
                                                                                                 ## direct
                                                                                                 ## in
                                                                                                 ## the
                                                                                                 ## other
                                                                                                 ## case.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## The
                                                                                                 ## status
                                                                                                 ## is
                                                                                                 ## "NegativeRadius"
                                                                                                 ## if
                                                                                                 ## Radius
                                                                                                 ## <
                                                                                                 ## 0.0.

type
  GceMakeCone* {.importcpp: "gce_MakeCone", header: "gce_MakeCone.hxx", bycopy.} = object of GceRoot ##
                                                                                           ## !
                                                                                           ## Creates
                                                                                           ## an
                                                                                           ## infinite
                                                                                           ## conical
                                                                                           ## surface.
                                                                                           ## A2
                                                                                           ## locates
                                                                                           ## the
                                                                                           ## cone
                                                                                           ##
                                                                                           ## !
                                                                                           ## in
                                                                                           ## the
                                                                                           ## space
                                                                                           ## and
                                                                                           ## defines
                                                                                           ## the
                                                                                           ## reference
                                                                                           ## plane
                                                                                           ## of
                                                                                           ## the
                                                                                           ## surface.
                                                                                           ##
                                                                                           ## !
                                                                                           ## Ang
                                                                                           ## is
                                                                                           ## the
                                                                                           ## conical
                                                                                           ## surface
                                                                                           ## semi-angle
                                                                                           ## between
                                                                                           ## 0
                                                                                           ## and
                                                                                           ## PI/2
                                                                                           ## radians.
                                                                                           ##
                                                                                           ## !
                                                                                           ## Radius
                                                                                           ## is
                                                                                           ## the
                                                                                           ## radius
                                                                                           ## of
                                                                                           ## the
                                                                                           ## circle
                                                                                           ## in
                                                                                           ## the
                                                                                           ## reference
                                                                                           ## plane
                                                                                           ## of
                                                                                           ##
                                                                                           ## !
                                                                                           ## the
                                                                                           ## cone.
                                                                                           ##
                                                                                           ## !
                                                                                           ## If
                                                                                           ## Radius
                                                                                           ## is
                                                                                           ## lower
                                                                                           ## than
                                                                                           ## 0.0
                                                                                           ## the
                                                                                           ## status
                                                                                           ## is
                                                                                           ## "
                                                                                           ##
                                                                                           ## !
                                                                                           ## If
                                                                                           ## Ang
                                                                                           ## <
                                                                                           ## Resolution
                                                                                           ## from
                                                                                           ## gp
                                                                                           ## or
                                                                                           ## Ang
                                                                                           ## >=
                                                                                           ## (PI/2)
                                                                                           ## -
                                                                                           ## Resolution.

type
  GceMakeCylinder* {.importcpp: "gce_MakeCylinder", header: "gce_MakeCylinder.hxx",
                    bycopy.} = object of GceRoot ## ! <A2> is the local cartesian coordinate system of <me>.
                                            ## ! The status is "NegativeRadius" if R < 0.0

type
  GceMakeDir* {.importcpp: "gce_MakeDir", header: "gce_MakeDir.hxx", bycopy.} = object of GceRoot ##
                                                                                        ## !
                                                                                        ## Normalizes
                                                                                        ## the
                                                                                        ## vector
                                                                                        ## V
                                                                                        ## and
                                                                                        ## creates
                                                                                        ## a
                                                                                        ## direction.
                                                                                        ##
                                                                                        ## !
                                                                                        ## Status
                                                                                        ## is
                                                                                        ## "NullVector"
                                                                                        ## if
                                                                                        ## V.Magnitude()
                                                                                        ## <=
                                                                                        ## Resolution.

type
  GceMakeDir2d* {.importcpp: "gce_MakeDir2d", header: "gce_MakeDir2d.hxx", bycopy.} = object of GceRoot ##
                                                                                              ## !
                                                                                              ## Normalizes
                                                                                              ## the
                                                                                              ## vector
                                                                                              ## V
                                                                                              ## and
                                                                                              ## creates
                                                                                              ## a
                                                                                              ## direction.
                                                                                              ##
                                                                                              ## !
                                                                                              ## Status
                                                                                              ## is
                                                                                              ## "NullVector"
                                                                                              ## if
                                                                                              ## V.Magnitude()
                                                                                              ## <=
                                                                                              ## Resolution.

type
  GceMakeElips* {.importcpp: "gce_MakeElips", header: "gce_MakeElips.hxx", bycopy.} = object of GceRoot ##
                                                                                              ## !
                                                                                              ## The
                                                                                              ## major
                                                                                              ## radius
                                                                                              ## of
                                                                                              ## the
                                                                                              ## ellipse
                                                                                              ## is
                                                                                              ## on
                                                                                              ## the
                                                                                              ## "XAxis"
                                                                                              ## and
                                                                                              ## the
                                                                                              ##
                                                                                              ## !
                                                                                              ## minor
                                                                                              ## radius
                                                                                              ## is
                                                                                              ## on
                                                                                              ## the
                                                                                              ## "YAxis"
                                                                                              ## of
                                                                                              ## the
                                                                                              ## ellipse.
                                                                                              ## The
                                                                                              ## "XAxis"
                                                                                              ##
                                                                                              ## !
                                                                                              ## is
                                                                                              ## defined
                                                                                              ## with
                                                                                              ## the
                                                                                              ## "XDirection"
                                                                                              ## of
                                                                                              ## A2
                                                                                              ## and
                                                                                              ## the
                                                                                              ## "YAxis"
                                                                                              ## is
                                                                                              ##
                                                                                              ## !
                                                                                              ## defined
                                                                                              ## with
                                                                                              ## the
                                                                                              ## "YDirection"
                                                                                              ## of
                                                                                              ## A2.
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
                                                                                              ## an
                                                                                              ## ellipse
                                                                                              ## with
                                                                                              ##
                                                                                              ## !
                                                                                              ## MajorRadius
                                                                                              ## =
                                                                                              ## MinorRadius.

type
  GceMakeElips2d* {.importcpp: "gce_MakeElips2d", header: "gce_MakeElips2d.hxx",
                   bycopy.} = object of GceRoot ## ! Creates an ellipse with the major axis, the major and the
                                           ## ! minor radius. The location of the MajorAxis is the center
                                           ## ! of the  ellipse.
                                           ## ! The sense of parametrization is given by Sense.
                                           ## ! It is possible to create an ellipse with MajorRadius = MinorRadius.
                                           ## ! the status is "InvertRadius" if MajorRadius < MinorRadius or
                                           ## ! "NegativeRadius" if MinorRadius < 0.0

type
  GceMakeHypr* {.importcpp: "gce_MakeHypr", header: "gce_MakeHypr.hxx", bycopy.} = object of GceRoot ##
                                                                                           ## !
                                                                                           ## A2
                                                                                           ## is
                                                                                           ## the
                                                                                           ## local
                                                                                           ## coordinate
                                                                                           ## system
                                                                                           ## of
                                                                                           ## the
                                                                                           ## hyperbola.
                                                                                           ##
                                                                                           ## !
                                                                                           ## In
                                                                                           ## the
                                                                                           ## local
                                                                                           ## coordinates
                                                                                           ## system
                                                                                           ## A2
                                                                                           ## the
                                                                                           ## equation
                                                                                           ## of
                                                                                           ## the
                                                                                           ##
                                                                                           ## !
                                                                                           ## hyperbola
                                                                                           ## is
                                                                                           ## :
                                                                                           ##
                                                                                           ## !
                                                                                           ## X*X
                                                                                           ## /
                                                                                           ## MajorRadius*MajorRadius
                                                                                           ## -
                                                                                           ## Y*Y
                                                                                           ## /
                                                                                           ## MinorRadius*MinorRadius
                                                                                           ## =
                                                                                           ## 1.0
                                                                                           ##
                                                                                           ## !
                                                                                           ## It
                                                                                           ## is
                                                                                           ## not
                                                                                           ## forbidden
                                                                                           ## to
                                                                                           ## create
                                                                                           ## an
                                                                                           ## Hyperbola
                                                                                           ## with
                                                                                           ## MajorRadius
                                                                                           ## =
                                                                                           ##
                                                                                           ## !
                                                                                           ## MinorRadius.
                                                                                           ##
                                                                                           ## !
                                                                                           ## For
                                                                                           ## the
                                                                                           ## hyperbola
                                                                                           ## the
                                                                                           ## MajorRadius
                                                                                           ## can
                                                                                           ## be
                                                                                           ## lower
                                                                                           ## than
                                                                                           ## the
                                                                                           ##
                                                                                           ## !
                                                                                           ## MinorRadius.
                                                                                           ##
                                                                                           ## !
                                                                                           ## The
                                                                                           ## status
                                                                                           ## is
                                                                                           ## "NegativeRadius"
                                                                                           ## if
                                                                                           ## MajorRadius
                                                                                           ## <
                                                                                           ## 0.0
                                                                                           ## and
                                                                                           ##
                                                                                           ## !
                                                                                           ## "InvertRadius"
                                                                                           ## if
                                                                                           ## MinorRadius
                                                                                           ## >
                                                                                           ## MajorRadius.

type
  GceMakeHypr2d* {.importcpp: "gce_MakeHypr2d", header: "gce_MakeHypr2d.hxx", bycopy.} = object of GceRoot ##
                                                                                                 ## !
                                                                                                 ## Constructs
                                                                                                 ## a
                                                                                                 ## hyperbola
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## centered
                                                                                                 ## on
                                                                                                 ## the
                                                                                                 ## point
                                                                                                 ## Center,
                                                                                                 ## where:
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## -
                                                                                                 ## the
                                                                                                 ## major
                                                                                                 ## axis
                                                                                                 ## of
                                                                                                 ## the
                                                                                                 ## hyperbola
                                                                                                 ## is
                                                                                                 ## defined
                                                                                                 ## by
                                                                                                 ## Center
                                                                                                 ## and
                                                                                                 ## point
                                                                                                 ## S1,
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## -
                                                                                                 ## the
                                                                                                 ## major
                                                                                                 ## radius
                                                                                                 ## is
                                                                                                 ## the
                                                                                                 ## distance
                                                                                                 ## between
                                                                                                 ## Center
                                                                                                 ## and
                                                                                                 ## S1,
                                                                                                 ## and
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## -
                                                                                                 ## the
                                                                                                 ## minor
                                                                                                 ## radius
                                                                                                 ## is
                                                                                                 ## the
                                                                                                 ## distance
                                                                                                 ## between
                                                                                                 ## point
                                                                                                 ## S2
                                                                                                 ## and
                                                                                                 ## the
                                                                                                 ## major
                                                                                                 ## axis.

type
  GceMakeLin* {.importcpp: "gce_MakeLin", header: "gce_MakeLin.hxx", bycopy.} = object of GceRoot ##
                                                                                        ## !
                                                                                        ## Creates
                                                                                        ## a
                                                                                        ## line
                                                                                        ## located
                                                                                        ## along
                                                                                        ## the
                                                                                        ## axis
                                                                                        ## A1.

type
  GceMakeLin2d* {.importcpp: "gce_MakeLin2d", header: "gce_MakeLin2d.hxx", bycopy.} = object of GceRoot ##
                                                                                              ## !
                                                                                              ## Creates
                                                                                              ## a
                                                                                              ## line
                                                                                              ## located
                                                                                              ## with
                                                                                              ## A.

type
  GceMakeParab* {.importcpp: "gce_MakeParab", header: "gce_MakeParab.hxx", bycopy.} = object of GceRoot ##
                                                                                              ## !
                                                                                              ## ---
                                                                                              ## Purpose
                                                                                              ## ;
                                                                                              ##
                                                                                              ## !
                                                                                              ## Creates
                                                                                              ## a
                                                                                              ## parabola
                                                                                              ## with
                                                                                              ## its
                                                                                              ## local
                                                                                              ## coordinate
                                                                                              ## system
                                                                                              ## "A2"
                                                                                              ##
                                                                                              ## !
                                                                                              ## and
                                                                                              ## it's
                                                                                              ## focal
                                                                                              ## length
                                                                                              ## "Focal".
                                                                                              ##
                                                                                              ## !
                                                                                              ## The
                                                                                              ## XDirection
                                                                                              ## of
                                                                                              ## A2
                                                                                              ## defines
                                                                                              ## the
                                                                                              ## axis
                                                                                              ## of
                                                                                              ## symmetry
                                                                                              ## of
                                                                                              ## the
                                                                                              ##
                                                                                              ## !
                                                                                              ## parabola.
                                                                                              ## The
                                                                                              ## YDirection
                                                                                              ## of
                                                                                              ## A2
                                                                                              ## is
                                                                                              ## parallel
                                                                                              ## to
                                                                                              ## the
                                                                                              ## directrix
                                                                                              ##
                                                                                              ## !
                                                                                              ## of
                                                                                              ## the
                                                                                              ## parabola.
                                                                                              ## The
                                                                                              ## Location
                                                                                              ## point
                                                                                              ## of
                                                                                              ## A2
                                                                                              ## is
                                                                                              ## the
                                                                                              ## vertex
                                                                                              ## of
                                                                                              ##
                                                                                              ## !
                                                                                              ## the
                                                                                              ## parabola
                                                                                              ##
                                                                                              ## !
                                                                                              ## The
                                                                                              ## status
                                                                                              ## is
                                                                                              ## "NullFocusLength"
                                                                                              ## if
                                                                                              ## Focal
                                                                                              ## <
                                                                                              ## 0.0

type
  GceMakeParab2d* {.importcpp: "gce_MakeParab2d", header: "gce_MakeParab2d.hxx",
                   bycopy.} = object of GceRoot ## ! Creates a parabola with its axis of symmetry ("MirrorAxis")
                                           ## ! and its focal length.
                                           ## ! Warnings : It is possible to have Focal = 0.
                                           ## ! The status is "NullFocalLength" Raised if Focal < 0.0

type
  GceMakePln* {.importcpp: "gce_MakePln", header: "gce_MakePln.hxx", bycopy.} = object of GceRoot ##
                                                                                        ## !
                                                                                        ## The
                                                                                        ## coordinate
                                                                                        ## system
                                                                                        ## of
                                                                                        ## the
                                                                                        ## plane
                                                                                        ## is
                                                                                        ## defined
                                                                                        ## with
                                                                                        ## the
                                                                                        ## axis
                                                                                        ##
                                                                                        ## !
                                                                                        ## placement
                                                                                        ## A2.
                                                                                        ##
                                                                                        ## !
                                                                                        ## The
                                                                                        ## "Direction"
                                                                                        ## of
                                                                                        ## A2
                                                                                        ## defines
                                                                                        ## the
                                                                                        ## normal
                                                                                        ## to
                                                                                        ## the
                                                                                        ## plane.
                                                                                        ##
                                                                                        ## !
                                                                                        ## The
                                                                                        ## "Location"
                                                                                        ## of
                                                                                        ## A2
                                                                                        ## defines
                                                                                        ## the
                                                                                        ## location
                                                                                        ## (origin)
                                                                                        ## of
                                                                                        ## the
                                                                                        ## plane.
                                                                                        ##
                                                                                        ## !
                                                                                        ## The
                                                                                        ## "XDirection"
                                                                                        ## and
                                                                                        ## "YDirection"
                                                                                        ## of
                                                                                        ## A2
                                                                                        ## define
                                                                                        ## the
                                                                                        ## "XAxis"
                                                                                        ## and
                                                                                        ##
                                                                                        ## !
                                                                                        ## the
                                                                                        ## "YAxis"
                                                                                        ## of
                                                                                        ## the
                                                                                        ## plane
                                                                                        ## used
                                                                                        ## to
                                                                                        ## parametrize
                                                                                        ## the
                                                                                        ## plane.

