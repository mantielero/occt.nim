##  Created on: 1993-10-29
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

discard "forward decl of IntRes2d_IntersectionPoint"
type
  HatchGenPointOnElement* {.importcpp: "HatchGen_PointOnElement",
                           header: "HatchGen_PointOnElement.hxx", bycopy.} = object of HatchGenIntersectionPoint ##
                                                                                                          ## !
                                                                                                          ## ---Purpose;
                                                                                                          ## Creates
                                                                                                          ## an
                                                                                                          ## empty
                                                                                                          ## point
                                                                                                          ## on
                                                                                                          ## element


proc constructHatchGenPointOnElement*(): HatchGenPointOnElement {.constructor,
    importcpp: "HatchGen_PointOnElement(@)", header: "HatchGen_PointOnElement.hxx".}
proc constructHatchGenPointOnElement*(point: IntRes2dIntersectionPoint): HatchGenPointOnElement {.
    constructor, importcpp: "HatchGen_PointOnElement(@)",
    header: "HatchGen_PointOnElement.hxx".}
proc setIntersectionType*(this: var HatchGenPointOnElement;
                         `type`: HatchGenIntersectionType) {.
    importcpp: "SetIntersectionType", header: "HatchGen_PointOnElement.hxx".}
proc intersectionType*(this: HatchGenPointOnElement): HatchGenIntersectionType {.
    noSideEffect, importcpp: "IntersectionType",
    header: "HatchGen_PointOnElement.hxx".}
proc isIdentical*(this: HatchGenPointOnElement; point: HatchGenPointOnElement;
                 confusion: cfloat): bool {.noSideEffect, importcpp: "IsIdentical",
    header: "HatchGen_PointOnElement.hxx".}
proc isDifferent*(this: HatchGenPointOnElement; point: HatchGenPointOnElement;
                 confusion: cfloat): bool {.noSideEffect, importcpp: "IsDifferent",
    header: "HatchGen_PointOnElement.hxx".}
proc dump*(this: HatchGenPointOnElement; index: cint = 0) {.noSideEffect,
    importcpp: "Dump", header: "HatchGen_PointOnElement.hxx".}

























