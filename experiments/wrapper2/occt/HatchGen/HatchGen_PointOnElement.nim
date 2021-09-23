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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, HatchGen_IntersectionType,
  HatchGen_IntersectionPoint, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real, ../Standard/Standard_Integer

discard "forward decl of IntRes2d_IntersectionPoint"
type
  HatchGen_PointOnElement* {.importcpp: "HatchGen_PointOnElement",
                            header: "HatchGen_PointOnElement.hxx", bycopy.} = object of HatchGen_IntersectionPoint ##
                                                                                                            ## !
                                                                                                            ## ---Purpose;
                                                                                                            ## Creates
                                                                                                            ## an
                                                                                                            ## empty
                                                                                                            ## point
                                                                                                            ## on
                                                                                                            ## element


proc constructHatchGen_PointOnElement*(): HatchGen_PointOnElement {.constructor,
    importcpp: "HatchGen_PointOnElement(@)", header: "HatchGen_PointOnElement.hxx".}
proc constructHatchGen_PointOnElement*(Point: IntRes2d_IntersectionPoint): HatchGen_PointOnElement {.
    constructor, importcpp: "HatchGen_PointOnElement(@)",
    header: "HatchGen_PointOnElement.hxx".}
proc SetIntersectionType*(this: var HatchGen_PointOnElement;
                         Type: HatchGen_IntersectionType) {.
    importcpp: "SetIntersectionType", header: "HatchGen_PointOnElement.hxx".}
proc IntersectionType*(this: HatchGen_PointOnElement): HatchGen_IntersectionType {.
    noSideEffect, importcpp: "IntersectionType",
    header: "HatchGen_PointOnElement.hxx".}
proc IsIdentical*(this: HatchGen_PointOnElement; Point: HatchGen_PointOnElement;
                 Confusion: Standard_Real): Standard_Boolean {.noSideEffect,
    importcpp: "IsIdentical", header: "HatchGen_PointOnElement.hxx".}
proc IsDifferent*(this: HatchGen_PointOnElement; Point: HatchGen_PointOnElement;
                 Confusion: Standard_Real): Standard_Boolean {.noSideEffect,
    importcpp: "IsDifferent", header: "HatchGen_PointOnElement.hxx".}
proc Dump*(this: HatchGen_PointOnElement; Index: Standard_Integer = 0) {.noSideEffect,
    importcpp: "Dump", header: "HatchGen_PointOnElement.hxx".}