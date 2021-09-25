##  Created on: 1993-10-25
##  Created by: Jean Marc LACHAUME
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of HatchGen_PointOnHatching"
discard "forward decl of HatchGen_Domain"
# when defined(Status):
#   discard
type
  Geom2dHatchHatcher* {.importcpp: "Geom2dHatch_Hatcher",
                       header: "Geom2dHatch_Hatcher.hxx", bycopy.} = object ## ! Returns an empty hatcher.
                                                                       ## ! Returns the IndE-th element.
                                                                       ## ! Trims the IndH-th hatching of the hatcher by the
                                                                       ## ! IndE-th element.


proc constructGeom2dHatchHatcher*(intersector: Geom2dHatchIntersector;
                                 confusion2d: float; confusion3d: float;
                                 keepPnt: bool = false; keepSeg: bool = false): Geom2dHatchHatcher {.
    constructor, importcpp: "Geom2dHatch_Hatcher(@)",
    header: "Geom2dHatch_Hatcher.hxx".}
proc intersector*(this: var Geom2dHatchHatcher; intersector: Geom2dHatchIntersector) {.
    importcpp: "Intersector", header: "Geom2dHatch_Hatcher.hxx".}
proc intersector*(this: var Geom2dHatchHatcher): Geom2dHatchIntersector {.
    importcpp: "Intersector", header: "Geom2dHatch_Hatcher.hxx".}
proc changeIntersector*(this: var Geom2dHatchHatcher): var Geom2dHatchIntersector {.
    importcpp: "ChangeIntersector", header: "Geom2dHatch_Hatcher.hxx".}
proc confusion2d*(this: var Geom2dHatchHatcher; confusion: float) {.
    importcpp: "Confusion2d", header: "Geom2dHatch_Hatcher.hxx".}
proc confusion2d*(this: Geom2dHatchHatcher): float {.noSideEffect,
    importcpp: "Confusion2d", header: "Geom2dHatch_Hatcher.hxx".}
proc confusion3d*(this: var Geom2dHatchHatcher; confusion: float) {.
    importcpp: "Confusion3d", header: "Geom2dHatch_Hatcher.hxx".}
proc confusion3d*(this: Geom2dHatchHatcher): float {.noSideEffect,
    importcpp: "Confusion3d", header: "Geom2dHatch_Hatcher.hxx".}
proc keepPoints*(this: var Geom2dHatchHatcher; keep: bool) {.importcpp: "KeepPoints",
    header: "Geom2dHatch_Hatcher.hxx".}
proc keepPoints*(this: Geom2dHatchHatcher): bool {.noSideEffect,
    importcpp: "KeepPoints", header: "Geom2dHatch_Hatcher.hxx".}
proc keepSegments*(this: var Geom2dHatchHatcher; keep: bool) {.
    importcpp: "KeepSegments", header: "Geom2dHatch_Hatcher.hxx".}
proc keepSegments*(this: Geom2dHatchHatcher): bool {.noSideEffect,
    importcpp: "KeepSegments", header: "Geom2dHatch_Hatcher.hxx".}
proc clear*(this: var Geom2dHatchHatcher) {.importcpp: "Clear",
                                        header: "Geom2dHatch_Hatcher.hxx".}
proc elementCurve*(this: Geom2dHatchHatcher; indE: int): Geom2dAdaptorCurve {.
    noSideEffect, importcpp: "ElementCurve", header: "Geom2dHatch_Hatcher.hxx".}
proc addElement*(this: var Geom2dHatchHatcher; curve: Geom2dAdaptorCurve;
                orientation: TopAbsOrientation = topAbsFORWARD): int {.
    importcpp: "AddElement", header: "Geom2dHatch_Hatcher.hxx".}
proc addElement*(this: var Geom2dHatchHatcher; curve: Handle[Geom2dCurve];
                orientation: TopAbsOrientation = topAbsFORWARD): int {.
    importcpp: "AddElement", header: "Geom2dHatch_Hatcher.hxx".}
proc remElement*(this: var Geom2dHatchHatcher; indE: int) {.importcpp: "RemElement",
    header: "Geom2dHatch_Hatcher.hxx".}
proc clrElements*(this: var Geom2dHatchHatcher) {.importcpp: "ClrElements",
    header: "Geom2dHatch_Hatcher.hxx".}
proc hatchingCurve*(this: Geom2dHatchHatcher; indH: int): Geom2dAdaptorCurve {.
    noSideEffect, importcpp: "HatchingCurve", header: "Geom2dHatch_Hatcher.hxx".}
proc addHatching*(this: var Geom2dHatchHatcher; curve: Geom2dAdaptorCurve): int {.
    importcpp: "AddHatching", header: "Geom2dHatch_Hatcher.hxx".}
proc remHatching*(this: var Geom2dHatchHatcher; indH: int) {.importcpp: "RemHatching",
    header: "Geom2dHatch_Hatcher.hxx".}
proc clrHatchings*(this: var Geom2dHatchHatcher) {.importcpp: "ClrHatchings",
    header: "Geom2dHatch_Hatcher.hxx".}
proc nbPoints*(this: Geom2dHatchHatcher; indH: int): int {.noSideEffect,
    importcpp: "NbPoints", header: "Geom2dHatch_Hatcher.hxx".}
proc point*(this: Geom2dHatchHatcher; indH: int; indP: int): HatchGenPointOnHatching {.
    noSideEffect, importcpp: "Point", header: "Geom2dHatch_Hatcher.hxx".}
proc trim*(this: var Geom2dHatchHatcher) {.importcpp: "Trim",
                                       header: "Geom2dHatch_Hatcher.hxx".}
proc trim*(this: var Geom2dHatchHatcher; curve: Geom2dAdaptorCurve): int {.
    importcpp: "Trim", header: "Geom2dHatch_Hatcher.hxx".}
proc trim*(this: var Geom2dHatchHatcher; indH: int) {.importcpp: "Trim",
    header: "Geom2dHatch_Hatcher.hxx".}
proc computeDomains*(this: var Geom2dHatchHatcher) {.importcpp: "ComputeDomains",
    header: "Geom2dHatch_Hatcher.hxx".}
proc computeDomains*(this: var Geom2dHatchHatcher; indH: int) {.
    importcpp: "ComputeDomains", header: "Geom2dHatch_Hatcher.hxx".}
proc trimDone*(this: Geom2dHatchHatcher; indH: int): bool {.noSideEffect,
    importcpp: "TrimDone", header: "Geom2dHatch_Hatcher.hxx".}
proc trimFailed*(this: Geom2dHatchHatcher; indH: int): bool {.noSideEffect,
    importcpp: "TrimFailed", header: "Geom2dHatch_Hatcher.hxx".}
proc isDone*(this: Geom2dHatchHatcher): bool {.noSideEffect, importcpp: "IsDone",
    header: "Geom2dHatch_Hatcher.hxx".}
proc isDone*(this: Geom2dHatchHatcher; indH: int): bool {.noSideEffect,
    importcpp: "IsDone", header: "Geom2dHatch_Hatcher.hxx".}
proc status*(this: Geom2dHatchHatcher; indH: int): HatchGenErrorStatus {.noSideEffect,
    importcpp: "Status", header: "Geom2dHatch_Hatcher.hxx".}
proc nbDomains*(this: Geom2dHatchHatcher; indH: int): int {.noSideEffect,
    importcpp: "NbDomains", header: "Geom2dHatch_Hatcher.hxx".}
proc domain*(this: Geom2dHatchHatcher; indH: int; iDom: int): HatchGenDomain {.
    noSideEffect, importcpp: "Domain", header: "Geom2dHatch_Hatcher.hxx".}
proc dump*(this: Geom2dHatchHatcher) {.noSideEffect, importcpp: "Dump",
                                    header: "Geom2dHatch_Hatcher.hxx".}
