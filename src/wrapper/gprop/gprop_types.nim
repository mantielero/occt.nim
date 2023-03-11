import ../standard/standard_types

type
  GProp_UndefinedAxis* = object # FIXME

type
  GProp_GProps* {.importcpp: "GProp_GProps", header: "GProp_GProps.hxx", 
                  bycopy, pure, inheritable.} = object ##
                                                                                   ## !
                                                                                   ## The
                                                                                   ## origin
                                                                                   ## (0,
                                                                                   ## 0,
                                                                                   ## 0)
                                                                                   ## of
                                                                                   ## the
                                                                                   ## absolute
                                                                                   ## cartesian
                                                                                   ## coordinate
                                                                                   ## system
                                                                                   ##
                                                                                   ## !
                                                                                   ## is
                                                                                   ## used
                                                                                   ## to
                                                                                   ## compute
                                                                                   ## the
                                                                                   ## global
                                                                                   ## properties.


type
  GProp_CelGProps* {.importcpp: "GProp_CelGProps", header: "GProp_CelGProps.hxx",
                    bycopy.} = object of GProp_GProps

type
  GProp_EquaType* {.size: sizeof(cint), importcpp: "GProp_EquaType",
                   header: "GProp_EquaType.hxx".} = enum
    GProp_Plane, GProp_Line, GProp_Point, GProp_Space, GProp_None



type
  GProp_PEquation* {.importcpp: "GProp_PEquation", header: "GProp_PEquation.hxx",
                    bycopy.} = object ## ! Constructs a framework to analyze the
                                   ## ! collection of points Pnts and computes:
                                   ## ! -   the mean point if the points in question are
                                   ## ! considered to be coincident within the precision Tol, or
                                   ## ! -   the mean line if they are considered to be
                                   ## ! collinear within the precision Tol, or
                                   ## ! -   the mean plane if they are considered to be
                                   ## ! coplanar within the precision Tol, or
                                   ## ! -   the minimal box which contains all the points. Use :
                                   ## ! -   the functions IsPoint, IsLinear, IsPlanar
                                   ## ! and IsSpace to find the result of the analysis, and
                                   ## ! -   the function Point, Line, Plane or Box to
                                   ## ! access the computed result.


type
  GProp_PGProps* {.importcpp: "GProp_PGProps", header: "GProp_PGProps.hxx", bycopy.} = object of GProp_GProps ##
                                                                                                    ## !
                                                                                                    ## Initializes
                                                                                                    ## a
                                                                                                    ## framework
                                                                                                    ## to
                                                                                                    ## compute
                                                                                                    ## global
                                                                                                    ## properties
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## on
                                                                                                    ## a
                                                                                                    ## set
                                                                                                    ## of
                                                                                                    ## points.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## The
                                                                                                    ## point
                                                                                                    ## relative
                                                                                                    ## to
                                                                                                    ## which
                                                                                                    ## the
                                                                                                    ## inertia
                                                                                                    ## of
                                                                                                    ## the
                                                                                                    ## system
                                                                                                    ## is
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## computed
                                                                                                    ## will
                                                                                                    ## be
                                                                                                    ## the
                                                                                                    ## origin
                                                                                                    ## (0,
                                                                                                    ## 0,
                                                                                                    ## 0)
                                                                                                    ## of
                                                                                                    ## the
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## absolute
                                                                                                    ## Cartesian
                                                                                                    ## coordinate
                                                                                                    ## system.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## At
                                                                                                    ## initialization,
                                                                                                    ## the
                                                                                                    ## framework
                                                                                                    ## is
                                                                                                    ## empty,
                                                                                                    ## i.e.
                                                                                                    ## it
                                                                                                    ## retains
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## no
                                                                                                    ## dimensional
                                                                                                    ## information
                                                                                                    ## such
                                                                                                    ## as
                                                                                                    ## mass
                                                                                                    ## and
                                                                                                    ## inertia.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## It
                                                                                                    ## is,
                                                                                                    ## however,
                                                                                                    ## now
                                                                                                    ## able
                                                                                                    ## to
                                                                                                    ## keep
                                                                                                    ## global
                                                                                                    ## properties
                                                                                                    ## of
                                                                                                    ## a
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## set
                                                                                                    ## of
                                                                                                    ## points
                                                                                                    ## while
                                                                                                    ## new
                                                                                                    ## points
                                                                                                    ## are
                                                                                                    ## added
                                                                                                    ## using
                                                                                                    ## the
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## AddPoint
                                                                                                    ## function.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## The
                                                                                                    ## set
                                                                                                    ## of
                                                                                                    ## points
                                                                                                    ## whose
                                                                                                    ## global
                                                                                                    ## properties
                                                                                                    ## are
                                                                                                    ## brought
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## together
                                                                                                    ## by
                                                                                                    ## this
                                                                                                    ## framework
                                                                                                    ## will
                                                                                                    ## then
                                                                                                    ## be
                                                                                                    ## referred
                                                                                                    ## to
                                                                                                    ## as
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## the
                                                                                                    ## current
                                                                                                    ## system.
                                                                                                    ## The
                                                                                                    ## current
                                                                                                    ## system
                                                                                                    ## is,
                                                                                                    ## however,
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## not
                                                                                                    ## kept
                                                                                                    ## by
                                                                                                    ## this
                                                                                                    ## framework,
                                                                                                    ## which
                                                                                                    ## only
                                                                                                    ## keeps
                                                                                                    ## that
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## system's
                                                                                                    ## global
                                                                                                    ## properties.
                                                                                                    ## Note
                                                                                                    ## that
                                                                                                    ## the
                                                                                                    ## current
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## system
                                                                                                    ## may
                                                                                                    ## be
                                                                                                    ## more
                                                                                                    ## complex
                                                                                                    ## than
                                                                                                    ## a
                                                                                                    ## set
                                                                                                    ## of
                                                                                                    ## points.


type
  GProp_PrincipalProps* {.importcpp: "GProp_PrincipalProps",
                         header: "GProp_PrincipalProps.hxx", bycopy.} = object ## !
                                                                          ## creates an
                                                                          ## undefined
                                                                          ## PrincipalProps.


type
  GProp_SelGProps* {.importcpp: "GProp_SelGProps", header: "GProp_SelGProps.hxx",
                    bycopy.} = object of GProp_GProps


type
  Handle_GProp_UndefinedAxis* = Handle[GProp_UndefinedAxis]

type
  GProp_ValueType* {.size: sizeof(cint), importcpp: "GProp_ValueType",
                    header: "GProp_ValueType.hxx".} = enum
    GProp_Mass, GProp_CenterMassX, GProp_CenterMassY, GProp_CenterMassZ,
    GProp_InertiaXX, GProp_InertiaYY, GProp_InertiaZZ, GProp_InertiaXY,
    GProp_InertiaXZ, GProp_InertiaYZ, GProp_Unknown


type
  GProp_VelGProps* {.importcpp: "GProp_VelGProps", header: "GProp_VelGProps.hxx",
                    bycopy.} = object of GProp_GProps

type
  GProp* {.importcpp: "GProp", header: "GProp.hxx", bycopy.} = object ## ! methods of package
                                                              ## ! Computes the matrix Operator, referred to as the
                                                              ## ! "Huyghens Operator" of a geometric system at the
                                                              ## ! point Q of the space, using the following data :
                                                              ## ! - Mass, i.e. the mass of the system,
                                                              ## ! - G, the center of mass of the system.
                                                              ## ! The "Huyghens Operator" is used to compute
                                                              ## ! Inertia/Q, the matrix of inertia of the system at
                                                              ## ! the point Q using Huyghens' theorem :
                                                              ## ! Inertia/Q = Inertia/G + HOperator (Q, G, Mass)
                                                              ## ! where Inertia/G is the matrix of inertia of the
                                                              ## ! system relative to its center of mass as returned by
                                                              ## ! the function MatrixOfInertia on any GProp_GProps object.

