# PROVIDES: IntSurf IntSurfCouple IntSurfInteriorPoint IntSurfInteriorPointTool IntSurfPathPoint IntSurfPathPointTool IntSurfPntOn2S IntSurfQuadric IntSurfQuadricTool IntSurfTransition
# DEPENDS: StandardTransient

type
  IntSurf* {.importcpp: "IntSurf", header: "IntSurf.hxx", bycopy.} = object ## ! Computes the transition of the intersection point
                                                                    ## ! between the two lines.
                                                                    ## ! TgFirst is the tangent vector of the first line.
                                                                    ## ! TgSecond is the tangent vector of the second line.
                                                                    ## ! Normal is the direction used to orientate the cross
                                                                    ## ! product
                                                                    ## TgFirst^TgSecond.
                                                                    ## ! TFirst is the transition of the point on the first line.
                                                                    ## ! TSecond is the transition of the point on the second line.

type
  IntSurfCouple* {.importcpp: "IntSurf_Couple", header: "IntSurf_Couple.hxx", bycopy.} = object

type
  IntSurfInteriorPoint* {.importcpp: "IntSurf_InteriorPoint",
                         header: "IntSurf_InteriorPoint.hxx", bycopy.} = object

type
  IntSurfInteriorPointTool* {.importcpp: "IntSurf_InteriorPointTool",
                             header: "IntSurf_InteriorPointTool.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## Returns
                                                                                   ## the
                                                                                   ## 3d
                                                                                   ## coordinates
                                                                                   ## of
                                                                                   ## the
                                                                                   ## starting
                                                                                   ## point.

type
  IntSurfPathPoint* {.importcpp: "IntSurf_PathPoint",
                     header: "IntSurf_PathPoint.hxx", bycopy.} = object

type
  IntSurfPathPointTool* {.importcpp: "IntSurf_PathPointTool",
                         header: "IntSurf_PathPointTool.hxx", bycopy.} = object ## !
                                                                           ## Returns the 3d
                                                                           ## coordinates of the
                                                                           ## starting
                                                                           ## point.

type
  IntSurfPntOn2S* {.importcpp: "IntSurf_PntOn2S", header: "IntSurf_PntOn2S.hxx",
                   bycopy.} = object ## ! Empty constructor.

type
  IntSurfQuadric* {.importcpp: "IntSurf_Quadric", header: "IntSurf_Quadric.hxx",
                   bycopy.} = object

type
  IntSurfQuadricTool* {.importcpp: "IntSurf_QuadricTool",
                       header: "IntSurf_QuadricTool.hxx", bycopy.} = object ## ! Returns the value of the function.

                       header: "IntSurf_QuadricTool.hxx", bycopy.} = object ## ! Returns the value of the function.
type
  IntSurfTransition* {.importcpp: "IntSurf_Transition",
                      header: "IntSurf_Transition.hxx", bycopy.} = object ## ! Empty
                                                                     ## constructor. Creates an UNDECIDED transition.


type
  HandleIntSurfLineOn2S* = Handle[IntSurfLineOn2S]
  IntSurfLineOn2S* {.importcpp: "IntSurf_LineOn2S", header: "IntSurf_LineOn2S.hxx",
                    bycopy.} = object of StandardTransient

