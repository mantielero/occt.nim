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

import
  ../Standard/Standard, ../Geom2dAdaptor/Geom2dAdaptor_Curve,
  Geom2dHatch_Intersector, Geom2dHatch_Elements, Geom2dHatch_Hatchings,
  ../TopAbs/TopAbs_Orientation, ../HatchGen/HatchGen_ErrorStatus

discard "forward decl of HatchGen_PointOnHatching"
discard "forward decl of HatchGen_Domain"
when defined(Status):
  discard
type
  Geom2dHatch_Hatcher* {.importcpp: "Geom2dHatch_Hatcher",
                        header: "Geom2dHatch_Hatcher.hxx", bycopy.} = object ## ! Returns an empty hatcher.
                                                                        ## ! Returns the IndE-th element.
                                                                        ## ! Trims the IndH-th hatching of the hatcher by the
                                                                        ## ! IndE-th element.


proc constructGeom2dHatch_Hatcher*(Intersector: Geom2dHatch_Intersector;
                                  Confusion2d: Standard_Real;
                                  Confusion3d: Standard_Real;
                                  KeepPnt: Standard_Boolean = Standard_False;
                                  KeepSeg: Standard_Boolean = Standard_False): Geom2dHatch_Hatcher {.
    constructor, importcpp: "Geom2dHatch_Hatcher(@)",
    header: "Geom2dHatch_Hatcher.hxx".}
proc Intersector*(this: var Geom2dHatch_Hatcher;
                 Intersector: Geom2dHatch_Intersector) {.importcpp: "Intersector",
    header: "Geom2dHatch_Hatcher.hxx".}
proc Intersector*(this: var Geom2dHatch_Hatcher): Geom2dHatch_Intersector {.
    importcpp: "Intersector", header: "Geom2dHatch_Hatcher.hxx".}
proc ChangeIntersector*(this: var Geom2dHatch_Hatcher): var Geom2dHatch_Intersector {.
    importcpp: "ChangeIntersector", header: "Geom2dHatch_Hatcher.hxx".}
proc Confusion2d*(this: var Geom2dHatch_Hatcher; Confusion: Standard_Real) {.
    importcpp: "Confusion2d", header: "Geom2dHatch_Hatcher.hxx".}
proc Confusion2d*(this: Geom2dHatch_Hatcher): Standard_Real {.noSideEffect,
    importcpp: "Confusion2d", header: "Geom2dHatch_Hatcher.hxx".}
proc Confusion3d*(this: var Geom2dHatch_Hatcher; Confusion: Standard_Real) {.
    importcpp: "Confusion3d", header: "Geom2dHatch_Hatcher.hxx".}
proc Confusion3d*(this: Geom2dHatch_Hatcher): Standard_Real {.noSideEffect,
    importcpp: "Confusion3d", header: "Geom2dHatch_Hatcher.hxx".}
proc KeepPoints*(this: var Geom2dHatch_Hatcher; Keep: Standard_Boolean) {.
    importcpp: "KeepPoints", header: "Geom2dHatch_Hatcher.hxx".}
proc KeepPoints*(this: Geom2dHatch_Hatcher): Standard_Boolean {.noSideEffect,
    importcpp: "KeepPoints", header: "Geom2dHatch_Hatcher.hxx".}
proc KeepSegments*(this: var Geom2dHatch_Hatcher; Keep: Standard_Boolean) {.
    importcpp: "KeepSegments", header: "Geom2dHatch_Hatcher.hxx".}
proc KeepSegments*(this: Geom2dHatch_Hatcher): Standard_Boolean {.noSideEffect,
    importcpp: "KeepSegments", header: "Geom2dHatch_Hatcher.hxx".}
proc Clear*(this: var Geom2dHatch_Hatcher) {.importcpp: "Clear",
    header: "Geom2dHatch_Hatcher.hxx".}
proc ElementCurve*(this: Geom2dHatch_Hatcher; IndE: Standard_Integer): Geom2dAdaptor_Curve {.
    noSideEffect, importcpp: "ElementCurve", header: "Geom2dHatch_Hatcher.hxx".}
proc AddElement*(this: var Geom2dHatch_Hatcher; Curve: Geom2dAdaptor_Curve;
                Orientation: TopAbs_Orientation = TopAbs_FORWARD): Standard_Integer {.
    importcpp: "AddElement", header: "Geom2dHatch_Hatcher.hxx".}
proc AddElement*(this: var Geom2dHatch_Hatcher; Curve: handle[Geom2d_Curve];
                Orientation: TopAbs_Orientation = TopAbs_FORWARD): Standard_Integer {.
    importcpp: "AddElement", header: "Geom2dHatch_Hatcher.hxx".}
proc RemElement*(this: var Geom2dHatch_Hatcher; IndE: Standard_Integer) {.
    importcpp: "RemElement", header: "Geom2dHatch_Hatcher.hxx".}
proc ClrElements*(this: var Geom2dHatch_Hatcher) {.importcpp: "ClrElements",
    header: "Geom2dHatch_Hatcher.hxx".}
proc HatchingCurve*(this: Geom2dHatch_Hatcher; IndH: Standard_Integer): Geom2dAdaptor_Curve {.
    noSideEffect, importcpp: "HatchingCurve", header: "Geom2dHatch_Hatcher.hxx".}
proc AddHatching*(this: var Geom2dHatch_Hatcher; Curve: Geom2dAdaptor_Curve): Standard_Integer {.
    importcpp: "AddHatching", header: "Geom2dHatch_Hatcher.hxx".}
proc RemHatching*(this: var Geom2dHatch_Hatcher; IndH: Standard_Integer) {.
    importcpp: "RemHatching", header: "Geom2dHatch_Hatcher.hxx".}
proc ClrHatchings*(this: var Geom2dHatch_Hatcher) {.importcpp: "ClrHatchings",
    header: "Geom2dHatch_Hatcher.hxx".}
proc NbPoints*(this: Geom2dHatch_Hatcher; IndH: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "NbPoints", header: "Geom2dHatch_Hatcher.hxx".}
proc Point*(this: Geom2dHatch_Hatcher; IndH: Standard_Integer; IndP: Standard_Integer): HatchGen_PointOnHatching {.
    noSideEffect, importcpp: "Point", header: "Geom2dHatch_Hatcher.hxx".}
proc Trim*(this: var Geom2dHatch_Hatcher) {.importcpp: "Trim",
                                        header: "Geom2dHatch_Hatcher.hxx".}
proc Trim*(this: var Geom2dHatch_Hatcher; Curve: Geom2dAdaptor_Curve): Standard_Integer {.
    importcpp: "Trim", header: "Geom2dHatch_Hatcher.hxx".}
proc Trim*(this: var Geom2dHatch_Hatcher; IndH: Standard_Integer) {.importcpp: "Trim",
    header: "Geom2dHatch_Hatcher.hxx".}
proc ComputeDomains*(this: var Geom2dHatch_Hatcher) {.importcpp: "ComputeDomains",
    header: "Geom2dHatch_Hatcher.hxx".}
proc ComputeDomains*(this: var Geom2dHatch_Hatcher; IndH: Standard_Integer) {.
    importcpp: "ComputeDomains", header: "Geom2dHatch_Hatcher.hxx".}
proc TrimDone*(this: Geom2dHatch_Hatcher; IndH: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "TrimDone", header: "Geom2dHatch_Hatcher.hxx".}
proc TrimFailed*(this: Geom2dHatch_Hatcher; IndH: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "TrimFailed", header: "Geom2dHatch_Hatcher.hxx".}
proc IsDone*(this: Geom2dHatch_Hatcher): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Geom2dHatch_Hatcher.hxx".}
proc IsDone*(this: Geom2dHatch_Hatcher; IndH: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsDone", header: "Geom2dHatch_Hatcher.hxx".}
proc Status*(this: Geom2dHatch_Hatcher; IndH: Standard_Integer): HatchGen_ErrorStatus {.
    noSideEffect, importcpp: "Status", header: "Geom2dHatch_Hatcher.hxx".}
proc NbDomains*(this: Geom2dHatch_Hatcher; IndH: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "NbDomains", header: "Geom2dHatch_Hatcher.hxx".}
proc Domain*(this: Geom2dHatch_Hatcher; IndH: Standard_Integer;
            IDom: Standard_Integer): HatchGen_Domain {.noSideEffect,
    importcpp: "Domain", header: "Geom2dHatch_Hatcher.hxx".}
proc Dump*(this: Geom2dHatch_Hatcher) {.noSideEffect, importcpp: "Dump",
                                     header: "Geom2dHatch_Hatcher.hxx".}