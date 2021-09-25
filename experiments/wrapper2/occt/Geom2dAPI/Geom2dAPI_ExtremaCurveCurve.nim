##  Created on: 1994-03-23
##  Created by: Bruno DUMORTIER
##  Copyright (c) 1994-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

discard "forward decl of Standard_OutOfRange"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Geom2d_Curve"
discard "forward decl of gp_Pnt2d"
discard "forward decl of Extrema_ExtCC2d"
type
  Geom2dAPI_ExtremaCurveCurve* {.importcpp: "Geom2dAPI_ExtremaCurveCurve",
                                header: "Geom2dAPI_ExtremaCurveCurve.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Computes
                                                                                        ## the
                                                                                        ## extrema
                                                                                        ## between
                                                                                        ##
                                                                                        ## !
                                                                                        ## -
                                                                                        ## the
                                                                                        ## portion
                                                                                        ## of
                                                                                        ## the
                                                                                        ## curve
                                                                                        ## C1
                                                                                        ## limited
                                                                                        ## by
                                                                                        ## the
                                                                                        ## two
                                                                                        ##
                                                                                        ## !
                                                                                        ## points
                                                                                        ## of
                                                                                        ## parameter
                                                                                        ## (U1min,U1max),
                                                                                        ## and
                                                                                        ##
                                                                                        ## !
                                                                                        ## -
                                                                                        ## the
                                                                                        ## portion
                                                                                        ## of
                                                                                        ## the
                                                                                        ## curve
                                                                                        ## C2
                                                                                        ## limited
                                                                                        ## by
                                                                                        ## the
                                                                                        ## two
                                                                                        ##
                                                                                        ## !
                                                                                        ## points
                                                                                        ## of
                                                                                        ## parameter
                                                                                        ## (U2min,U2max).
                                                                                        ##
                                                                                        ## !
                                                                                        ## Warning
                                                                                        ##
                                                                                        ## !
                                                                                        ## Use
                                                                                        ## the
                                                                                        ## function
                                                                                        ## NbExtrema
                                                                                        ## to
                                                                                        ## obtain
                                                                                        ## the
                                                                                        ## number
                                                                                        ##
                                                                                        ## !
                                                                                        ## of
                                                                                        ## solutions.
                                                                                        ## If
                                                                                        ## this
                                                                                        ## algorithm
                                                                                        ## fails,
                                                                                        ## NbExtrema
                                                                                        ## returns
                                                                                        ## 0.


proc constructGeom2dAPI_ExtremaCurveCurve*(c1: Handle[Geom2dCurve];
    c2: Handle[Geom2dCurve]; u1min: float; u1max: float; u2min: float; u2max: float): Geom2dAPI_ExtremaCurveCurve {.
    constructor, importcpp: "Geom2dAPI_ExtremaCurveCurve(@)",
    header: "Geom2dAPI_ExtremaCurveCurve.hxx".}
proc nbExtrema*(this: Geom2dAPI_ExtremaCurveCurve): int {.noSideEffect,
    importcpp: "NbExtrema", header: "Geom2dAPI_ExtremaCurveCurve.hxx".}
converter `int`*(this: Geom2dAPI_ExtremaCurveCurve): int {.noSideEffect,
    importcpp: "Geom2dAPI_ExtremaCurveCurve::operator Standard_Integer",
    header: "Geom2dAPI_ExtremaCurveCurve.hxx".}
proc points*(this: Geom2dAPI_ExtremaCurveCurve; index: int; p1: var Pnt2d; p2: var Pnt2d) {.
    noSideEffect, importcpp: "Points", header: "Geom2dAPI_ExtremaCurveCurve.hxx".}
proc parameters*(this: Geom2dAPI_ExtremaCurveCurve; index: int; u1: var float;
                u2: var float) {.noSideEffect, importcpp: "Parameters",
                              header: "Geom2dAPI_ExtremaCurveCurve.hxx".}
proc distance*(this: Geom2dAPI_ExtremaCurveCurve; index: int): float {.noSideEffect,
    importcpp: "Distance", header: "Geom2dAPI_ExtremaCurveCurve.hxx".}
proc nearestPoints*(this: Geom2dAPI_ExtremaCurveCurve; p1: var Pnt2d; p2: var Pnt2d) {.
    noSideEffect, importcpp: "NearestPoints",
    header: "Geom2dAPI_ExtremaCurveCurve.hxx".}
proc lowerDistanceParameters*(this: Geom2dAPI_ExtremaCurveCurve; u1: var float;
                             u2: var float) {.noSideEffect,
    importcpp: "LowerDistanceParameters",
    header: "Geom2dAPI_ExtremaCurveCurve.hxx".}
proc lowerDistance*(this: Geom2dAPI_ExtremaCurveCurve): float {.noSideEffect,
    importcpp: "LowerDistance", header: "Geom2dAPI_ExtremaCurveCurve.hxx".}
converter `float`*(this: Geom2dAPI_ExtremaCurveCurve): float {.noSideEffect,
    importcpp: "Geom2dAPI_ExtremaCurveCurve::operator Standard_Real",
    header: "Geom2dAPI_ExtremaCurveCurve.hxx".}
proc extrema*(this: Geom2dAPI_ExtremaCurveCurve): ExtremaExtCC2d {.noSideEffect,
    importcpp: "Extrema", header: "Geom2dAPI_ExtremaCurveCurve.hxx".}
