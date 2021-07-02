##  Created on: 1994-03-18
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
discard "forward decl of Geom_Curve"
discard "forward decl of gp_Pnt"
discard "forward decl of Extrema_ExtCC"
type
  GeomAPI_ExtremaCurveCurve* {.importcpp: "GeomAPI_ExtremaCurveCurve",
                              header: "GeomAPI_ExtremaCurveCurve.hxx", bycopy.} = object ##
                                                                                    ## !
                                                                                    ## Constructs
                                                                                    ## an
                                                                                    ## empty
                                                                                    ## algorithm
                                                                                    ## for
                                                                                    ## computing
                                                                                    ##
                                                                                    ## !
                                                                                    ## extrema
                                                                                    ## between
                                                                                    ## two
                                                                                    ## curves.
                                                                                    ## Use
                                                                                    ## an
                                                                                    ## Init
                                                                                    ## function
                                                                                    ##
                                                                                    ## !
                                                                                    ## to
                                                                                    ## define
                                                                                    ## the
                                                                                    ## curves
                                                                                    ## on
                                                                                    ## which
                                                                                    ## it
                                                                                    ## is
                                                                                    ## going
                                                                                    ## to
                                                                                    ## work.


proc constructGeomAPI_ExtremaCurveCurve*(): GeomAPI_ExtremaCurveCurve {.
    constructor, importcpp: "GeomAPI_ExtremaCurveCurve(@)",
    header: "GeomAPI_ExtremaCurveCurve.hxx".}
proc constructGeomAPI_ExtremaCurveCurve*(c1: Handle[GeomCurve];
                                        c2: Handle[GeomCurve]): GeomAPI_ExtremaCurveCurve {.
    constructor, importcpp: "GeomAPI_ExtremaCurveCurve(@)",
    header: "GeomAPI_ExtremaCurveCurve.hxx".}
proc constructGeomAPI_ExtremaCurveCurve*(c1: Handle[GeomCurve];
                                        c2: Handle[GeomCurve];
                                        u1min: StandardReal; u1max: StandardReal;
                                        u2min: StandardReal; u2max: StandardReal): GeomAPI_ExtremaCurveCurve {.
    constructor, importcpp: "GeomAPI_ExtremaCurveCurve(@)",
    header: "GeomAPI_ExtremaCurveCurve.hxx".}
proc init*(this: var GeomAPI_ExtremaCurveCurve; c1: Handle[GeomCurve];
          c2: Handle[GeomCurve]) {.importcpp: "Init",
                                 header: "GeomAPI_ExtremaCurveCurve.hxx".}
proc init*(this: var GeomAPI_ExtremaCurveCurve; c1: Handle[GeomCurve];
          c2: Handle[GeomCurve]; u1min: StandardReal; u1max: StandardReal;
          u2min: StandardReal; u2max: StandardReal) {.importcpp: "Init",
    header: "GeomAPI_ExtremaCurveCurve.hxx".}
proc nbExtrema*(this: GeomAPI_ExtremaCurveCurve): StandardInteger {.noSideEffect,
    importcpp: "NbExtrema", header: "GeomAPI_ExtremaCurveCurve.hxx".}
converter `standardInteger`*(this: GeomAPI_ExtremaCurveCurve): StandardInteger {.
    noSideEffect,
    importcpp: "GeomAPI_ExtremaCurveCurve::operator Standard_Integer",
    header: "GeomAPI_ExtremaCurveCurve.hxx".}
proc points*(this: GeomAPI_ExtremaCurveCurve; index: StandardInteger; p1: var GpPnt;
            p2: var GpPnt) {.noSideEffect, importcpp: "Points",
                          header: "GeomAPI_ExtremaCurveCurve.hxx".}
proc parameters*(this: GeomAPI_ExtremaCurveCurve; index: StandardInteger;
                u1: var StandardReal; u2: var StandardReal) {.noSideEffect,
    importcpp: "Parameters", header: "GeomAPI_ExtremaCurveCurve.hxx".}
proc distance*(this: GeomAPI_ExtremaCurveCurve; index: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "Distance", header: "GeomAPI_ExtremaCurveCurve.hxx".}
proc nearestPoints*(this: GeomAPI_ExtremaCurveCurve; p1: var GpPnt; p2: var GpPnt) {.
    noSideEffect, importcpp: "NearestPoints",
    header: "GeomAPI_ExtremaCurveCurve.hxx".}
proc lowerDistanceParameters*(this: GeomAPI_ExtremaCurveCurve;
                             u1: var StandardReal; u2: var StandardReal) {.
    noSideEffect, importcpp: "LowerDistanceParameters",
    header: "GeomAPI_ExtremaCurveCurve.hxx".}
proc lowerDistance*(this: GeomAPI_ExtremaCurveCurve): StandardReal {.noSideEffect,
    importcpp: "LowerDistance", header: "GeomAPI_ExtremaCurveCurve.hxx".}
converter `standardReal`*(this: GeomAPI_ExtremaCurveCurve): StandardReal {.
    noSideEffect, importcpp: "GeomAPI_ExtremaCurveCurve::operator Standard_Real",
    header: "GeomAPI_ExtremaCurveCurve.hxx".}
proc extrema*(this: GeomAPI_ExtremaCurveCurve): ExtremaExtCC {.noSideEffect,
    importcpp: "Extrema", header: "GeomAPI_ExtremaCurveCurve.hxx".}
proc totalNearestPoints*(this: var GeomAPI_ExtremaCurveCurve; p1: var GpPnt;
                        p2: var GpPnt): StandardBoolean {.
    importcpp: "TotalNearestPoints", header: "GeomAPI_ExtremaCurveCurve.hxx".}
proc totalLowerDistanceParameters*(this: var GeomAPI_ExtremaCurveCurve;
                                  u1: var StandardReal; u2: var StandardReal): StandardBoolean {.
    importcpp: "TotalLowerDistanceParameters",
    header: "GeomAPI_ExtremaCurveCurve.hxx".}
proc totalLowerDistance*(this: var GeomAPI_ExtremaCurveCurve): StandardReal {.
    importcpp: "TotalLowerDistance", header: "GeomAPI_ExtremaCurveCurve.hxx".}

