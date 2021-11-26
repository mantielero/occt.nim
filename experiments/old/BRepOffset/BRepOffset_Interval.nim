##  Created on: 1995-10-20
##  Created by: Yves FRICAUD
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

type
  BRepOffsetInterval* {.importcpp: "BRepOffset_Interval",
                       header: "BRepOffset_Interval.hxx", bycopy.} = object


proc `new`*(this: var BRepOffsetInterval; theSize: csize_t): pointer {.
    importcpp: "BRepOffset_Interval::operator new",
    header: "BRepOffset_Interval.hxx".}
proc `delete`*(this: var BRepOffsetInterval; theAddress: pointer) {.
    importcpp: "BRepOffset_Interval::operator delete",
    header: "BRepOffset_Interval.hxx".}
proc `new[]`*(this: var BRepOffsetInterval; theSize: csize_t): pointer {.
    importcpp: "BRepOffset_Interval::operator new[]",
    header: "BRepOffset_Interval.hxx".}
proc `delete[]`*(this: var BRepOffsetInterval; theAddress: pointer) {.
    importcpp: "BRepOffset_Interval::operator delete[]",
    header: "BRepOffset_Interval.hxx".}
proc `new`*(this: var BRepOffsetInterval; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepOffset_Interval::operator new",
    header: "BRepOffset_Interval.hxx".}
proc `delete`*(this: var BRepOffsetInterval; a2: pointer; a3: pointer) {.
    importcpp: "BRepOffset_Interval::operator delete",
    header: "BRepOffset_Interval.hxx".}
proc constructBRepOffsetInterval*(): BRepOffsetInterval {.constructor,
    importcpp: "BRepOffset_Interval(@)", header: "BRepOffset_Interval.hxx".}
proc constructBRepOffsetInterval*(u1: StandardReal; u2: StandardReal;
                                 `type`: ChFiDS_TypeOfConcavity): BRepOffsetInterval {.
    constructor, importcpp: "BRepOffset_Interval(@)",
    header: "BRepOffset_Interval.hxx".}
proc first*(this: var BRepOffsetInterval; u: StandardReal) {.importcpp: "First",
    header: "BRepOffset_Interval.hxx".}
proc last*(this: var BRepOffsetInterval; u: StandardReal) {.importcpp: "Last",
    header: "BRepOffset_Interval.hxx".}
proc `type`*(this: var BRepOffsetInterval; t: ChFiDS_TypeOfConcavity) {.
    importcpp: "Type", header: "BRepOffset_Interval.hxx".}
proc first*(this: BRepOffsetInterval): StandardReal {.noSideEffect,
    importcpp: "First", header: "BRepOffset_Interval.hxx".}
proc last*(this: BRepOffsetInterval): StandardReal {.noSideEffect, importcpp: "Last",
    header: "BRepOffset_Interval.hxx".}
proc `type`*(this: BRepOffsetInterval): ChFiDS_TypeOfConcavity {.noSideEffect,
    importcpp: "Type", header: "BRepOffset_Interval.hxx".}