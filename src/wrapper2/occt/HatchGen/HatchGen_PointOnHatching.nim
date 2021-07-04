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
  ../Standard/Standard_Handle, HatchGen_PointsOnElement,
  HatchGen_IntersectionPoint, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean

discard "forward decl of Standard_OutOfRange"
discard "forward decl of IntRes2d_IntersectionPoint"
discard "forward decl of HatchGen_PointOnElement"
type
  HatchGen_PointOnHatching* {.importcpp: "HatchGen_PointOnHatching",
                             header: "HatchGen_PointOnHatching.hxx", bycopy.} = object of HatchGen_IntersectionPoint ##
                                                                                                              ## !
                                                                                                              ## Creates
                                                                                                              ## an
                                                                                                              ## empty
                                                                                                              ## point.


proc constructHatchGen_PointOnHatching*(): HatchGen_PointOnHatching {.constructor,
    importcpp: "HatchGen_PointOnHatching(@)",
    header: "HatchGen_PointOnHatching.hxx".}
proc constructHatchGen_PointOnHatching*(Point: IntRes2d_IntersectionPoint): HatchGen_PointOnHatching {.
    constructor, importcpp: "HatchGen_PointOnHatching(@)",
    header: "HatchGen_PointOnHatching.hxx".}
proc AddPoint*(this: var HatchGen_PointOnHatching; Point: HatchGen_PointOnElement;
              Confusion: Standard_Real) {.importcpp: "AddPoint",
                                        header: "HatchGen_PointOnHatching.hxx".}
proc NbPoints*(this: HatchGen_PointOnHatching): Standard_Integer {.noSideEffect,
    importcpp: "NbPoints", header: "HatchGen_PointOnHatching.hxx".}
proc Point*(this: HatchGen_PointOnHatching; Index: Standard_Integer): HatchGen_PointOnElement {.
    noSideEffect, importcpp: "Point", header: "HatchGen_PointOnHatching.hxx".}
proc RemPoint*(this: var HatchGen_PointOnHatching; Index: Standard_Integer) {.
    importcpp: "RemPoint", header: "HatchGen_PointOnHatching.hxx".}
proc ClrPoints*(this: var HatchGen_PointOnHatching) {.importcpp: "ClrPoints",
    header: "HatchGen_PointOnHatching.hxx".}
proc IsLower*(this: HatchGen_PointOnHatching; Point: HatchGen_PointOnHatching;
             Confusion: Standard_Real): Standard_Boolean {.noSideEffect,
    importcpp: "IsLower", header: "HatchGen_PointOnHatching.hxx".}
proc IsEqual*(this: HatchGen_PointOnHatching; Point: HatchGen_PointOnHatching;
             Confusion: Standard_Real): Standard_Boolean {.noSideEffect,
    importcpp: "IsEqual", header: "HatchGen_PointOnHatching.hxx".}
proc IsGreater*(this: HatchGen_PointOnHatching; Point: HatchGen_PointOnHatching;
               Confusion: Standard_Real): Standard_Boolean {.noSideEffect,
    importcpp: "IsGreater", header: "HatchGen_PointOnHatching.hxx".}
proc Dump*(this: HatchGen_PointOnHatching; Index: Standard_Integer = 0) {.noSideEffect,
    importcpp: "Dump", header: "HatchGen_PointOnHatching.hxx".}