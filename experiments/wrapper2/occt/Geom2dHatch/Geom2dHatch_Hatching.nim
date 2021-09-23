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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Geom2dAdaptor/Geom2dAdaptor_Curve,
  ../Standard/Standard_Boolean, ../HatchGen/HatchGen_PointsOnHatching,
  ../HatchGen/HatchGen_ErrorStatus, ../HatchGen/HatchGen_Domains,
  ../Standard/Standard_Real, ../Standard/Standard_Integer

discard "forward decl of gp_Pnt2d"
when defined(Status):
  discard
type
  Geom2dHatch_Hatching* {.importcpp: "Geom2dHatch_Hatching",
                         header: "Geom2dHatch_Hatching.hxx", bycopy.} = object


proc constructGeom2dHatch_Hatching*(): Geom2dHatch_Hatching {.constructor,
    importcpp: "Geom2dHatch_Hatching(@)", header: "Geom2dHatch_Hatching.hxx".}
proc constructGeom2dHatch_Hatching*(Curve: Geom2dAdaptor_Curve): Geom2dHatch_Hatching {.
    constructor, importcpp: "Geom2dHatch_Hatching(@)",
    header: "Geom2dHatch_Hatching.hxx".}
proc Curve*(this: Geom2dHatch_Hatching): Geom2dAdaptor_Curve {.noSideEffect,
    importcpp: "Curve", header: "Geom2dHatch_Hatching.hxx".}
proc ChangeCurve*(this: var Geom2dHatch_Hatching): var Geom2dAdaptor_Curve {.
    importcpp: "ChangeCurve", header: "Geom2dHatch_Hatching.hxx".}
proc TrimDone*(this: var Geom2dHatch_Hatching; Flag: Standard_Boolean) {.
    importcpp: "TrimDone", header: "Geom2dHatch_Hatching.hxx".}
proc TrimDone*(this: Geom2dHatch_Hatching): Standard_Boolean {.noSideEffect,
    importcpp: "TrimDone", header: "Geom2dHatch_Hatching.hxx".}
proc TrimFailed*(this: var Geom2dHatch_Hatching; Flag: Standard_Boolean) {.
    importcpp: "TrimFailed", header: "Geom2dHatch_Hatching.hxx".}
proc TrimFailed*(this: Geom2dHatch_Hatching): Standard_Boolean {.noSideEffect,
    importcpp: "TrimFailed", header: "Geom2dHatch_Hatching.hxx".}
proc IsDone*(this: var Geom2dHatch_Hatching; Flag: Standard_Boolean) {.
    importcpp: "IsDone", header: "Geom2dHatch_Hatching.hxx".}
proc IsDone*(this: Geom2dHatch_Hatching): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Geom2dHatch_Hatching.hxx".}
proc Status*(this: var Geom2dHatch_Hatching; theStatus: HatchGen_ErrorStatus) {.
    importcpp: "Status", header: "Geom2dHatch_Hatching.hxx".}
proc Status*(this: Geom2dHatch_Hatching): HatchGen_ErrorStatus {.noSideEffect,
    importcpp: "Status", header: "Geom2dHatch_Hatching.hxx".}
proc AddPoint*(this: var Geom2dHatch_Hatching; Point: HatchGen_PointOnHatching;
              Confusion: Standard_Real) {.importcpp: "AddPoint",
                                        header: "Geom2dHatch_Hatching.hxx".}
proc NbPoints*(this: Geom2dHatch_Hatching): Standard_Integer {.noSideEffect,
    importcpp: "NbPoints", header: "Geom2dHatch_Hatching.hxx".}
proc Point*(this: Geom2dHatch_Hatching; Index: Standard_Integer): HatchGen_PointOnHatching {.
    noSideEffect, importcpp: "Point", header: "Geom2dHatch_Hatching.hxx".}
proc ChangePoint*(this: var Geom2dHatch_Hatching; Index: Standard_Integer): var HatchGen_PointOnHatching {.
    importcpp: "ChangePoint", header: "Geom2dHatch_Hatching.hxx".}
proc RemPoint*(this: var Geom2dHatch_Hatching; Index: Standard_Integer) {.
    importcpp: "RemPoint", header: "Geom2dHatch_Hatching.hxx".}
proc ClrPoints*(this: var Geom2dHatch_Hatching) {.importcpp: "ClrPoints",
    header: "Geom2dHatch_Hatching.hxx".}
proc AddDomain*(this: var Geom2dHatch_Hatching; Domain: HatchGen_Domain) {.
    importcpp: "AddDomain", header: "Geom2dHatch_Hatching.hxx".}
proc NbDomains*(this: Geom2dHatch_Hatching): Standard_Integer {.noSideEffect,
    importcpp: "NbDomains", header: "Geom2dHatch_Hatching.hxx".}
proc Domain*(this: Geom2dHatch_Hatching; Index: Standard_Integer): HatchGen_Domain {.
    noSideEffect, importcpp: "Domain", header: "Geom2dHatch_Hatching.hxx".}
proc RemDomain*(this: var Geom2dHatch_Hatching; Index: Standard_Integer) {.
    importcpp: "RemDomain", header: "Geom2dHatch_Hatching.hxx".}
proc ClrDomains*(this: var Geom2dHatch_Hatching) {.importcpp: "ClrDomains",
    header: "Geom2dHatch_Hatching.hxx".}
proc ClassificationPoint*(this: Geom2dHatch_Hatching): gp_Pnt2d {.noSideEffect,
    importcpp: "ClassificationPoint", header: "Geom2dHatch_Hatching.hxx".}