##  Created on: 1995-12-08
##  Created by: Laurent BOURESCHE
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean

## ! Class  (should    be  a  structure)   storing  the
## ! informations         about     continuity, normals
## ! parallelism,  coons conditions and bounds tangents
## ! angle on the corner of contour to be filled.

type
  GeomFill_CornerState* {.importcpp: "GeomFill_CornerState",
                         header: "GeomFill_CornerState.hxx", bycopy.} = object


proc constructGeomFill_CornerState*(): GeomFill_CornerState {.constructor,
    importcpp: "GeomFill_CornerState(@)", header: "GeomFill_CornerState.hxx".}
proc Gap*(this: GeomFill_CornerState): Standard_Real {.noSideEffect,
    importcpp: "Gap", header: "GeomFill_CornerState.hxx".}
proc Gap*(this: var GeomFill_CornerState; G: Standard_Real) {.importcpp: "Gap",
    header: "GeomFill_CornerState.hxx".}
proc TgtAng*(this: GeomFill_CornerState): Standard_Real {.noSideEffect,
    importcpp: "TgtAng", header: "GeomFill_CornerState.hxx".}
proc TgtAng*(this: var GeomFill_CornerState; Ang: Standard_Real) {.
    importcpp: "TgtAng", header: "GeomFill_CornerState.hxx".}
proc HasConstraint*(this: GeomFill_CornerState): Standard_Boolean {.noSideEffect,
    importcpp: "HasConstraint", header: "GeomFill_CornerState.hxx".}
proc Constraint*(this: var GeomFill_CornerState) {.importcpp: "Constraint",
    header: "GeomFill_CornerState.hxx".}
proc NorAng*(this: GeomFill_CornerState): Standard_Real {.noSideEffect,
    importcpp: "NorAng", header: "GeomFill_CornerState.hxx".}
proc NorAng*(this: var GeomFill_CornerState; Ang: Standard_Real) {.
    importcpp: "NorAng", header: "GeomFill_CornerState.hxx".}
proc IsToKill*(this: GeomFill_CornerState; Scal: var Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "IsToKill", header: "GeomFill_CornerState.hxx".}
proc DoKill*(this: var GeomFill_CornerState; Scal: Standard_Real) {.
    importcpp: "DoKill", header: "GeomFill_CornerState.hxx".}