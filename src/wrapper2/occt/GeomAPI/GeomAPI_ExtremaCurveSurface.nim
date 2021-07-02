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
discard "forward decl of Geom_Surface"
discard "forward decl of gp_Pnt"
discard "forward decl of Extrema_ExtCS"
type
  GeomAPI_ExtremaCurveSurface* {.importcpp: "GeomAPI_ExtremaCurveSurface",
                                header: "GeomAPI_ExtremaCurveSurface.hxx", bycopy.} = object ##
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
                                                                                        ## a
                                                                                        ## curve
                                                                                        ## and
                                                                                        ## a
                                                                                        ## surface.
                                                                                        ## Use
                                                                                        ## an
                                                                                        ##
                                                                                        ## !
                                                                                        ## Init
                                                                                        ## function
                                                                                        ## to
                                                                                        ## define
                                                                                        ## the
                                                                                        ## curve
                                                                                        ## and
                                                                                        ## the
                                                                                        ## surface
                                                                                        ## on
                                                                                        ##
                                                                                        ## !
                                                                                        ## which
                                                                                        ## it
                                                                                        ## is
                                                                                        ## going
                                                                                        ## to
                                                                                        ## work.


proc constructGeomAPI_ExtremaCurveSurface*(): GeomAPI_ExtremaCurveSurface {.
    constructor, importcpp: "GeomAPI_ExtremaCurveSurface(@)",
    header: "GeomAPI_ExtremaCurveSurface.hxx".}
proc constructGeomAPI_ExtremaCurveSurface*(curve: Handle[GeomCurve];
    surface: Handle[GeomSurface]): GeomAPI_ExtremaCurveSurface {.constructor,
    importcpp: "GeomAPI_ExtremaCurveSurface(@)",
    header: "GeomAPI_ExtremaCurveSurface.hxx".}
proc constructGeomAPI_ExtremaCurveSurface*(curve: Handle[GeomCurve];
    surface: Handle[GeomSurface]; wmin: StandardReal; wmax: StandardReal;
    umin: StandardReal; umax: StandardReal; vmin: StandardReal; vmax: StandardReal): GeomAPI_ExtremaCurveSurface {.
    constructor, importcpp: "GeomAPI_ExtremaCurveSurface(@)",
    header: "GeomAPI_ExtremaCurveSurface.hxx".}
proc init*(this: var GeomAPI_ExtremaCurveSurface; curve: Handle[GeomCurve];
          surface: Handle[GeomSurface]) {.importcpp: "Init", header: "GeomAPI_ExtremaCurveSurface.hxx".}
proc init*(this: var GeomAPI_ExtremaCurveSurface; curve: Handle[GeomCurve];
          surface: Handle[GeomSurface]; wmin: StandardReal; wmax: StandardReal;
          umin: StandardReal; umax: StandardReal; vmin: StandardReal;
          vmax: StandardReal) {.importcpp: "Init",
                              header: "GeomAPI_ExtremaCurveSurface.hxx".}
proc nbExtrema*(this: GeomAPI_ExtremaCurveSurface): StandardInteger {.noSideEffect,
    importcpp: "NbExtrema", header: "GeomAPI_ExtremaCurveSurface.hxx".}
converter `standardInteger`*(this: GeomAPI_ExtremaCurveSurface): StandardInteger {.
    noSideEffect,
    importcpp: "GeomAPI_ExtremaCurveSurface::operator Standard_Integer",
    header: "GeomAPI_ExtremaCurveSurface.hxx".}
proc points*(this: GeomAPI_ExtremaCurveSurface; index: StandardInteger;
            p1: var GpPnt; p2: var GpPnt) {.noSideEffect, importcpp: "Points",
                                      header: "GeomAPI_ExtremaCurveSurface.hxx".}
proc parameters*(this: GeomAPI_ExtremaCurveSurface; index: StandardInteger;
                w: var StandardReal; u: var StandardReal; v: var StandardReal) {.
    noSideEffect, importcpp: "Parameters",
    header: "GeomAPI_ExtremaCurveSurface.hxx".}
proc distance*(this: GeomAPI_ExtremaCurveSurface; index: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "Distance", header: "GeomAPI_ExtremaCurveSurface.hxx".}
proc nearestPoints*(this: GeomAPI_ExtremaCurveSurface; pc: var GpPnt; ps: var GpPnt) {.
    noSideEffect, importcpp: "NearestPoints",
    header: "GeomAPI_ExtremaCurveSurface.hxx".}
proc lowerDistanceParameters*(this: GeomAPI_ExtremaCurveSurface;
                             w: var StandardReal; u: var StandardReal;
                             v: var StandardReal) {.noSideEffect,
    importcpp: "LowerDistanceParameters",
    header: "GeomAPI_ExtremaCurveSurface.hxx".}
proc lowerDistance*(this: GeomAPI_ExtremaCurveSurface): StandardReal {.noSideEffect,
    importcpp: "LowerDistance", header: "GeomAPI_ExtremaCurveSurface.hxx".}
converter `standardReal`*(this: GeomAPI_ExtremaCurveSurface): StandardReal {.
    noSideEffect,
    importcpp: "GeomAPI_ExtremaCurveSurface::operator Standard_Real",
    header: "GeomAPI_ExtremaCurveSurface.hxx".}
proc extrema*(this: GeomAPI_ExtremaCurveSurface): ExtremaExtCS {.noSideEffect,
    importcpp: "Extrema", header: "GeomAPI_ExtremaCurveSurface.hxx".}

