##  Created on: 1994-03-17
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
discard "forward decl of gp_Pnt"
discard "forward decl of Geom_Surface"
discard "forward decl of Extrema_ExtPS"
type
  GeomAPI_ProjectPointOnSurf* {.importcpp: "GeomAPI_ProjectPointOnSurf",
                               header: "GeomAPI_ProjectPointOnSurf.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## Creates
                                                                                      ## an
                                                                                      ## empty
                                                                                      ## object.
                                                                                      ## Use
                                                                                      ## the
                                                                                      ##
                                                                                      ## !
                                                                                      ## Init
                                                                                      ## function
                                                                                      ## for
                                                                                      ## further
                                                                                      ## initialization.


proc constructGeomAPI_ProjectPointOnSurf*(): GeomAPI_ProjectPointOnSurf {.
    constructor, importcpp: "GeomAPI_ProjectPointOnSurf(@)",
    header: "GeomAPI_ProjectPointOnSurf.hxx".}
proc constructGeomAPI_ProjectPointOnSurf*(p: Pnt; surface: Handle[GeomSurface];
    algo: ExtremaExtAlgo = extremaExtAlgoGrad): GeomAPI_ProjectPointOnSurf {.
    constructor, importcpp: "GeomAPI_ProjectPointOnSurf(@)",
    header: "GeomAPI_ProjectPointOnSurf.hxx".}
proc constructGeomAPI_ProjectPointOnSurf*(p: Pnt; surface: Handle[GeomSurface];
    tolerance: float; algo: ExtremaExtAlgo = extremaExtAlgoGrad): GeomAPI_ProjectPointOnSurf {.
    constructor, importcpp: "GeomAPI_ProjectPointOnSurf(@)",
    header: "GeomAPI_ProjectPointOnSurf.hxx".}
proc constructGeomAPI_ProjectPointOnSurf*(p: Pnt; surface: Handle[GeomSurface];
    umin: float; usup: float; vmin: float; vsup: float; tolerance: float;
    algo: ExtremaExtAlgo = extremaExtAlgoGrad): GeomAPI_ProjectPointOnSurf {.
    constructor, importcpp: "GeomAPI_ProjectPointOnSurf(@)",
    header: "GeomAPI_ProjectPointOnSurf.hxx".}
proc constructGeomAPI_ProjectPointOnSurf*(p: Pnt; surface: Handle[GeomSurface];
    umin: float; usup: float; vmin: float; vsup: float;
    algo: ExtremaExtAlgo = extremaExtAlgoGrad): GeomAPI_ProjectPointOnSurf {.
    constructor, importcpp: "GeomAPI_ProjectPointOnSurf(@)",
    header: "GeomAPI_ProjectPointOnSurf.hxx".}
proc init*(this: var GeomAPI_ProjectPointOnSurf; p: Pnt; surface: Handle[GeomSurface];
          tolerance: float; algo: ExtremaExtAlgo = extremaExtAlgoGrad) {.
    importcpp: "Init", header: "GeomAPI_ProjectPointOnSurf.hxx".}
proc init*(this: var GeomAPI_ProjectPointOnSurf; p: Pnt; surface: Handle[GeomSurface];
          algo: ExtremaExtAlgo = extremaExtAlgoGrad) {.importcpp: "Init",
    header: "GeomAPI_ProjectPointOnSurf.hxx".}
proc init*(this: var GeomAPI_ProjectPointOnSurf; p: Pnt; surface: Handle[GeomSurface];
          umin: float; usup: float; vmin: float; vsup: float; tolerance: float;
          algo: ExtremaExtAlgo = extremaExtAlgoGrad) {.importcpp: "Init",
    header: "GeomAPI_ProjectPointOnSurf.hxx".}
proc init*(this: var GeomAPI_ProjectPointOnSurf; p: Pnt; surface: Handle[GeomSurface];
          umin: float; usup: float; vmin: float; vsup: float;
          algo: ExtremaExtAlgo = extremaExtAlgoGrad) {.importcpp: "Init",
    header: "GeomAPI_ProjectPointOnSurf.hxx".}
proc init*(this: var GeomAPI_ProjectPointOnSurf; surface: Handle[GeomSurface];
          umin: float; usup: float; vmin: float; vsup: float; tolerance: float;
          algo: ExtremaExtAlgo = extremaExtAlgoGrad) {.importcpp: "Init",
    header: "GeomAPI_ProjectPointOnSurf.hxx".}
proc init*(this: var GeomAPI_ProjectPointOnSurf; surface: Handle[GeomSurface];
          umin: float; usup: float; vmin: float; vsup: float;
          algo: ExtremaExtAlgo = extremaExtAlgoGrad) {.importcpp: "Init",
    header: "GeomAPI_ProjectPointOnSurf.hxx".}
proc setExtremaAlgo*(this: var GeomAPI_ProjectPointOnSurf; theAlgo: ExtremaExtAlgo) {.
    importcpp: "SetExtremaAlgo", header: "GeomAPI_ProjectPointOnSurf.hxx".}
proc setExtremaFlag*(this: var GeomAPI_ProjectPointOnSurf;
                    theExtFlag: ExtremaExtFlag) {.importcpp: "SetExtremaFlag",
    header: "GeomAPI_ProjectPointOnSurf.hxx".}
proc perform*(this: var GeomAPI_ProjectPointOnSurf; p: Pnt) {.importcpp: "Perform",
    header: "GeomAPI_ProjectPointOnSurf.hxx".}
proc isDone*(this: GeomAPI_ProjectPointOnSurf): bool {.noSideEffect,
    importcpp: "IsDone", header: "GeomAPI_ProjectPointOnSurf.hxx".}
proc nbPoints*(this: GeomAPI_ProjectPointOnSurf): int {.noSideEffect,
    importcpp: "NbPoints", header: "GeomAPI_ProjectPointOnSurf.hxx".}
converter `int`*(this: GeomAPI_ProjectPointOnSurf): int {.noSideEffect,
    importcpp: "GeomAPI_ProjectPointOnSurf::operator Standard_Integer",
    header: "GeomAPI_ProjectPointOnSurf.hxx".}
proc point*(this: GeomAPI_ProjectPointOnSurf; index: int): Pnt {.noSideEffect,
    importcpp: "Point", header: "GeomAPI_ProjectPointOnSurf.hxx".}
proc parameters*(this: GeomAPI_ProjectPointOnSurf; index: int; u: var float;
                v: var float) {.noSideEffect, importcpp: "Parameters",
                             header: "GeomAPI_ProjectPointOnSurf.hxx".}
proc distance*(this: GeomAPI_ProjectPointOnSurf; index: int): float {.noSideEffect,
    importcpp: "Distance", header: "GeomAPI_ProjectPointOnSurf.hxx".}
proc nearestPoint*(this: GeomAPI_ProjectPointOnSurf): Pnt {.noSideEffect,
    importcpp: "NearestPoint", header: "GeomAPI_ProjectPointOnSurf.hxx".}
converter `pnt`*(this: GeomAPI_ProjectPointOnSurf): Pnt {.noSideEffect,
    importcpp: "GeomAPI_ProjectPointOnSurf::operator gp_Pnt",
    header: "GeomAPI_ProjectPointOnSurf.hxx".}
proc lowerDistanceParameters*(this: GeomAPI_ProjectPointOnSurf; u: var float;
                             v: var float) {.noSideEffect,
    importcpp: "LowerDistanceParameters", header: "GeomAPI_ProjectPointOnSurf.hxx".}
proc lowerDistance*(this: GeomAPI_ProjectPointOnSurf): float {.noSideEffect,
    importcpp: "LowerDistance", header: "GeomAPI_ProjectPointOnSurf.hxx".}
converter `float`*(this: GeomAPI_ProjectPointOnSurf): float {.noSideEffect,
    importcpp: "GeomAPI_ProjectPointOnSurf::operator Standard_Real",
    header: "GeomAPI_ProjectPointOnSurf.hxx".}
proc extrema*(this: GeomAPI_ProjectPointOnSurf): ExtremaExtPS {.noSideEffect,
    importcpp: "Extrema", header: "GeomAPI_ProjectPointOnSurf.hxx".}
