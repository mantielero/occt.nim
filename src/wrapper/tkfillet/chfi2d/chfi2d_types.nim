# PROVIDES: ChFi2dAnaFilletAlgo ChFi2dBuilder ChFi2dChamferAPI ChFi2dFilletAlgo FilletPoint ChFi2dFilletAPI
# DEPENDS:

type
  ChFi2dAnaFilletAlgo* {.importcpp: "ChFi2d_AnaFilletAlgo",
                        header: "ChFi2d_AnaFilletAlgo.hxx", bycopy.} = object ## ! An empty
                                                                         ## constructor.
                                                                         ## ! Use the method Init() to
                                                                         ## initialize the class.
                                                                         ##  WW5 method to compute fillet.
                                                                         ##  It returns a
                                                                         ## constructed fillet
                                                                         ## definition:
                                                                         ##      center point (xc, yc)
                                                                         ##      point on the 1st segment
                                                                         ## (xstart, ystart)
                                                                         ##      point on the 2nd segment (xend, yend)
                                                                         ##      is the arc of fillet
                                                                         ## clockwise (cw = true) or
                                                                         ## counterclockwise (cw = false).
    ##  Left neighbour.
    ##  Right neighbour.
    ##  Fillet (result).

type
  ChFi2dBuilder* {.importcpp: "ChFi2d_Builder", header: "ChFi2d_Builder.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Is
                                                                                        ## internaly
                                                                                        ## used
                                                                                        ## by
                                                                                        ## <AddFillet>.
                                                                                        ##
                                                                                        ## !
                                                                                        ## Warning:
                                                                                        ## <TrimE1>,
                                                                                        ## <TrimE2>,
                                                                                        ## <Fillet>
                                                                                        ## has
                                                                                        ## sense
                                                                                        ## only
                                                                                        ## if
                                                                                        ## the
                                                                                        ##
                                                                                        ## !
                                                                                        ## status
                                                                                        ## <status>
                                                                                        ## is
                                                                                        ## equal
                                                                                        ## to
                                                                                        ## <IsDone>

type
  ChFi2dChamferAPI* {.importcpp: "ChFi2d_ChamferAPI",
                     header: "ChFi2d_ChamferAPI.hxx", bycopy.} = object ## ! An empty constructor.

type
  ChFi2dFilletAlgo* {.importcpp: "ChFi2d_FilletAlgo",
                     header: "ChFi2d_FilletAlgo.hxx", bycopy.} = object ## ! An empty constructor of the fillet algorithm.
                                                                   ## ! Call a method Init() to initialize the algorithm
                                                                   ## ! before calling of a Perform() method.
                                                                   ## ! Computes the value the function in the current point.
                                                                   ## ! <theLimit> is end parameter of the segment
    ## ! Plane where fillet arc must be created.
    ## ! Underlying curves of the initial edges
    ## ! Start and end parameters of curves of initial edges.
    ## ! List of params where roots were found.
    ## ! sequence of 0 or 1: position of the fillet relatively to the first curve
    ## ! position of the fillet relatively to the first curve
    ## ! are initial edges where exchanged in the beginning: to make first edge
    ## ! more simple and minimize number of iterations
    ## ! Number to avoid infinity recursion: indicates how deep the recursion is performed.

type
  FilletPoint* {.importcpp: "FilletPoint", header: "ChFi2d_FilletAlgo.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## Creates
                                                                                      ## a
                                                                                      ## point
                                                                                      ## on
                                                                                      ## a
                                                                                      ## first
                                                                                      ## curve
                                                                                      ## by
                                                                                      ## parameter
                                                                                      ## on
                                                                                      ## this
                                                                                      ## curve.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Parameter
                                                                                      ## on
                                                                                      ## the
                                                                                      ## first
                                                                                      ## curve
                                                                                      ## (start
                                                                                      ## fillet
                                                                                      ## point).
    ## ! Parameter on the second curve (end fillet point).
    ## ! Values and derivative values of the fillet function.
    ## ! May be several if there are many projections on the second curve.
    ## ! Center of the fillet arc.
    ## ! Flags for storage the validity of solutions. Indexes corresponds to indexes
    ## ! in sequences myV, myD.

    ## ! in sequences myV, myD.
type
  ChFi2dFilletAPI* {.importcpp: "ChFi2d_FilletAPI", header: "ChFi2d_FilletAPI.hxx",
                    bycopy.} = object ## ! An empty constructor of the fillet algorithm.
                                   ## ! Call a method Init() to initialize the algorithm
                                   ## ! before calling of a Perform() method.
                                   ##  Decides whether the input parameters may use an analytical algorithm
                                   ##  for calculation of the fillets, or an iteration-recursive method is needed.
                                   ##  The analytical solution is applicable for linear and circular edges
                                   ##  having a common point.


