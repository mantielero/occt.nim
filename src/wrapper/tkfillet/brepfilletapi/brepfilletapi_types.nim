type
  BRepFilletAPI_LocalOperation* {.importcpp: "BRepFilletAPI_LocalOperation",
                                 header: "BRepFilletAPI_LocalOperation.hxx",
                                 bycopy.} = object of BRepBuilderAPI_MakeShape ## ! Adds a
                                                                          ## contour in  the
                                                                          ## builder
                                                                          ## (builds a
                                                                          ## !
                                                                          ## contour  of
                                                                          ## tangent
                                                                          ## edges).
type
  BRepFilletAPI_MakeChamfer* {.importcpp: "BRepFilletAPI_MakeChamfer",
                              header: "BRepFilletAPI_MakeChamfer.hxx", bycopy.} = object of BRepFilletAPI_LocalOperation ##
                                                                                                                  ## !
                                                                                                                  ## Initializes
                                                                                                                  ## an
                                                                                                                  ## algorithm
                                                                                                                  ## for
                                                                                                                  ## computing
                                                                                                                  ## chamfers
                                                                                                                  ## on
                                                                                                                  ## the
                                                                                                                  ## shape
                                                                                                                  ## S.
                                                                                                                  ##
                                                                                                                  ## !
                                                                                                                  ## The
                                                                                                                  ## edges
                                                                                                                  ## on
                                                                                                                  ## which
                                                                                                                  ## chamfers
                                                                                                                  ## are
                                                                                                                  ## built
                                                                                                                  ## are
                                                                                                                  ## defined
                                                                                                                  ## using
                                                                                                                  ## the
                                                                                                                  ## Add
                                                                                                                  ## function.
type
  BRepFilletAPI_MakeFillet* {.importcpp: "BRepFilletAPI_MakeFillet",
                             header: "BRepFilletAPI_MakeFillet.hxx", bycopy.} = object of BRepFilletAPI_LocalOperation ##
                                                                                                                ## !
                                                                                                                ## Initializes
                                                                                                                ## the
                                                                                                                ## computation
                                                                                                                ## of
                                                                                                                ## the
                                                                                                                ## fillets.
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## <FShape>
                                                                                                                ## sets
                                                                                                                ## the
                                                                                                                ## type
                                                                                                                ## of
                                                                                                                ## fillet
                                                                                                                ## surface.
                                                                                                                ## The
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## default
                                                                                                                ## value
                                                                                                                ## is
                                                                                                                ## ChFi3d_Rational
                                                                                                                ## (classical
                                                                                                                ## nurbs
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## representation
                                                                                                                ## of
                                                                                                                ## circles).
                                                                                                                ## ChFi3d_QuasiAngular
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## corresponds
                                                                                                                ## to
                                                                                                                ## a
                                                                                                                ## nurbs
                                                                                                                ## representation
                                                                                                                ## of
                                                                                                                ## circles
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## which
                                                                                                                ## parameterisation
                                                                                                                ## matches
                                                                                                                ## the
                                                                                                                ## circle
                                                                                                                ## one.
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## ChFi3d_Polynomial
                                                                                                                ## corresponds
                                                                                                                ## to
                                                                                                                ## a
                                                                                                                ## polynomial
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## representation
                                                                                                                ## of
                                                                                                                ## circles.
type
  BRepFilletAPI_MakeFillet2d* {.importcpp: "BRepFilletAPI_MakeFillet2d",
                               header: "BRepFilletAPI_MakeFillet2d.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape ##
                                                                                                                ## !
                                                                                                                ## Initializes
                                                                                                                ## an
                                                                                                                ## empty
                                                                                                                ## algorithm
                                                                                                                ## for
                                                                                                                ## computing
                                                                                                                ## fillets
                                                                                                                ## and
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## chamfers.
                                                                                                                ## The
                                                                                                                ## face
                                                                                                                ## on
                                                                                                                ## which
                                                                                                                ## the
                                                                                                                ## fillets
                                                                                                                ## and
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## chamfers
                                                                                                                ## are
                                                                                                                ## built
                                                                                                                ## is
                                                                                                                ## defined
                                                                                                                ## using
                                                                                                                ## the
                                                                                                                ## Init
                                                                                                                ## function.
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## The
                                                                                                                ## vertices
                                                                                                                ## on
                                                                                                                ## which
                                                                                                                ## fillets
                                                                                                                ## or
                                                                                                                ## chamfers
                                                                                                                ## are
                                                                                                                ## built
                                                                                                                ## are
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## defined
                                                                                                                ## using
                                                                                                                ## the
                                                                                                                ## AddFillet
                                                                                                                ## or
                                                                                                                ## AddChamfer
                                                                                                                ## function.
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## Warning
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## The
                                                                                                                ## status
                                                                                                                ## of
                                                                                                                ## the
                                                                                                                ## initialization,
                                                                                                                ## as
                                                                                                                ## given
                                                                                                                ## by
                                                                                                                ## the
                                                                                                                ## Status
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## function,
                                                                                                                ## can
                                                                                                                ## be
                                                                                                                ## one
                                                                                                                ## of
                                                                                                                ## the
                                                                                                                ## following:
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## -
                                                                                                                ## ChFi2d_Ready
                                                                                                                ## if
                                                                                                                ## the
                                                                                                                ## initialization
                                                                                                                ## is
                                                                                                                ## correct,
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## -
                                                                                                                ## ChFi2d_NotPlanar
                                                                                                                ## if
                                                                                                                ## F
                                                                                                                ## is
                                                                                                                ## not
                                                                                                                ## planar,
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## -
                                                                                                                ## ChFi2d_NoFace
                                                                                                                ## if
                                                                                                                ## F
                                                                                                                ## is
                                                                                                                ## a
                                                                                                                ## null
                                                                                                                ## face.
