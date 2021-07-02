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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of IntRes2d_IntersectionPoint"
discard "forward decl of HatchGen_PointOnElement"
type
  HatchGenPointOnHatching* {.importcpp: "HatchGen_PointOnHatching",
                            header: "HatchGen_PointOnHatching.hxx", bycopy.} = object of HatchGenIntersectionPoint ##
                                                                                                            ## !
                                                                                                            ## Creates
                                                                                                            ## an
                                                                                                            ## empty
                                                                                                            ## point.


proc constructHatchGenPointOnHatching*(): HatchGenPointOnHatching {.constructor,
    importcpp: "HatchGen_PointOnHatching(@)",
    header: "HatchGen_PointOnHatching.hxx".}
proc constructHatchGenPointOnHatching*(point: IntRes2dIntersectionPoint): HatchGenPointOnHatching {.
    constructor, importcpp: "HatchGen_PointOnHatching(@)",
    header: "HatchGen_PointOnHatching.hxx".}
proc addPoint*(this: var HatchGenPointOnHatching; point: HatchGenPointOnElement;
              confusion: StandardReal) {.importcpp: "AddPoint",
                                       header: "HatchGen_PointOnHatching.hxx".}
proc nbPoints*(this: HatchGenPointOnHatching): StandardInteger {.noSideEffect,
    importcpp: "NbPoints", header: "HatchGen_PointOnHatching.hxx".}
proc point*(this: HatchGenPointOnHatching; index: StandardInteger): HatchGenPointOnElement {.
    noSideEffect, importcpp: "Point", header: "HatchGen_PointOnHatching.hxx".}
proc remPoint*(this: var HatchGenPointOnHatching; index: StandardInteger) {.
    importcpp: "RemPoint", header: "HatchGen_PointOnHatching.hxx".}
proc clrPoints*(this: var HatchGenPointOnHatching) {.importcpp: "ClrPoints",
    header: "HatchGen_PointOnHatching.hxx".}
proc isLower*(this: HatchGenPointOnHatching; point: HatchGenPointOnHatching;
             confusion: StandardReal): StandardBoolean {.noSideEffect,
    importcpp: "IsLower", header: "HatchGen_PointOnHatching.hxx".}
proc isEqual*(this: HatchGenPointOnHatching; point: HatchGenPointOnHatching;
             confusion: StandardReal): StandardBoolean {.noSideEffect,
    importcpp: "IsEqual", header: "HatchGen_PointOnHatching.hxx".}
proc isGreater*(this: HatchGenPointOnHatching; point: HatchGenPointOnHatching;
               confusion: StandardReal): StandardBoolean {.noSideEffect,
    importcpp: "IsGreater", header: "HatchGen_PointOnHatching.hxx".}
proc dump*(this: HatchGenPointOnHatching; index: StandardInteger = 0) {.noSideEffect,
    importcpp: "Dump", header: "HatchGen_PointOnHatching.hxx".}

