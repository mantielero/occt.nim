##  Created on: 1993-11-10
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

discard "forward decl of gp_Pnt2d"
# when defined(Status):
#   discard
type
  Geom2dHatchHatching* {.importcpp: "Geom2dHatch_Hatching",
                        header: "Geom2dHatch_Hatching.hxx", bycopy.} = object


proc constructGeom2dHatchHatching*(): Geom2dHatchHatching {.constructor,
    importcpp: "Geom2dHatch_Hatching(@)", header: "Geom2dHatch_Hatching.hxx".}
proc constructGeom2dHatchHatching*(curve: Geom2dAdaptorCurve): Geom2dHatchHatching {.
    constructor, importcpp: "Geom2dHatch_Hatching(@)",
    header: "Geom2dHatch_Hatching.hxx".}
proc curve*(this: Geom2dHatchHatching): Geom2dAdaptorCurve {.noSideEffect,
    importcpp: "Curve", header: "Geom2dHatch_Hatching.hxx".}
proc changeCurve*(this: var Geom2dHatchHatching): var Geom2dAdaptorCurve {.
    importcpp: "ChangeCurve", header: "Geom2dHatch_Hatching.hxx".}
proc trimDone*(this: var Geom2dHatchHatching; flag: StandardBoolean) {.
    importcpp: "TrimDone", header: "Geom2dHatch_Hatching.hxx".}
proc trimDone*(this: Geom2dHatchHatching): StandardBoolean {.noSideEffect,
    importcpp: "TrimDone", header: "Geom2dHatch_Hatching.hxx".}
proc trimFailed*(this: var Geom2dHatchHatching; flag: StandardBoolean) {.
    importcpp: "TrimFailed", header: "Geom2dHatch_Hatching.hxx".}
proc trimFailed*(this: Geom2dHatchHatching): StandardBoolean {.noSideEffect,
    importcpp: "TrimFailed", header: "Geom2dHatch_Hatching.hxx".}
proc isDone*(this: var Geom2dHatchHatching; flag: StandardBoolean) {.
    importcpp: "IsDone", header: "Geom2dHatch_Hatching.hxx".}
proc isDone*(this: Geom2dHatchHatching): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "Geom2dHatch_Hatching.hxx".}
proc status*(this: var Geom2dHatchHatching; theStatus: HatchGenErrorStatus) {.
    importcpp: "Status", header: "Geom2dHatch_Hatching.hxx".}
proc status*(this: Geom2dHatchHatching): HatchGenErrorStatus {.noSideEffect,
    importcpp: "Status", header: "Geom2dHatch_Hatching.hxx".}
proc addPoint*(this: var Geom2dHatchHatching; point: HatchGenPointOnHatching;
              confusion: StandardReal) {.importcpp: "AddPoint",
                                       header: "Geom2dHatch_Hatching.hxx".}
proc nbPoints*(this: Geom2dHatchHatching): StandardInteger {.noSideEffect,
    importcpp: "NbPoints", header: "Geom2dHatch_Hatching.hxx".}
proc point*(this: Geom2dHatchHatching; index: StandardInteger): HatchGenPointOnHatching {.
    noSideEffect, importcpp: "Point", header: "Geom2dHatch_Hatching.hxx".}
proc changePoint*(this: var Geom2dHatchHatching; index: StandardInteger): var HatchGenPointOnHatching {.
    importcpp: "ChangePoint", header: "Geom2dHatch_Hatching.hxx".}
proc remPoint*(this: var Geom2dHatchHatching; index: StandardInteger) {.
    importcpp: "RemPoint", header: "Geom2dHatch_Hatching.hxx".}
proc clrPoints*(this: var Geom2dHatchHatching) {.importcpp: "ClrPoints",
    header: "Geom2dHatch_Hatching.hxx".}
proc addDomain*(this: var Geom2dHatchHatching; domain: HatchGenDomain) {.
    importcpp: "AddDomain", header: "Geom2dHatch_Hatching.hxx".}
proc nbDomains*(this: Geom2dHatchHatching): StandardInteger {.noSideEffect,
    importcpp: "NbDomains", header: "Geom2dHatch_Hatching.hxx".}
proc domain*(this: Geom2dHatchHatching; index: StandardInteger): HatchGenDomain {.
    noSideEffect, importcpp: "Domain", header: "Geom2dHatch_Hatching.hxx".}
proc remDomain*(this: var Geom2dHatchHatching; index: StandardInteger) {.
    importcpp: "RemDomain", header: "Geom2dHatch_Hatching.hxx".}
proc clrDomains*(this: var Geom2dHatchHatching) {.importcpp: "ClrDomains",
    header: "Geom2dHatch_Hatching.hxx".}
proc classificationPoint*(this: Geom2dHatchHatching): GpPnt2d {.noSideEffect,
    importcpp: "ClassificationPoint", header: "Geom2dHatch_Hatching.hxx".}

