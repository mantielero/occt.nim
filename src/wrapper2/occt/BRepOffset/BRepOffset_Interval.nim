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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../ChFiDS/ChFiDS_TypeOfConcavity

type
  BRepOffset_Interval* {.importcpp: "BRepOffset_Interval",
                        header: "BRepOffset_Interval.hxx", bycopy.} = object


proc constructBRepOffset_Interval*(): BRepOffset_Interval {.constructor,
    importcpp: "BRepOffset_Interval(@)", header: "BRepOffset_Interval.hxx".}
proc constructBRepOffset_Interval*(U1: Standard_Real; U2: Standard_Real;
                                  Type: ChFiDS_TypeOfConcavity): BRepOffset_Interval {.
    constructor, importcpp: "BRepOffset_Interval(@)",
    header: "BRepOffset_Interval.hxx".}
proc First*(this: var BRepOffset_Interval; U: Standard_Real) {.importcpp: "First",
    header: "BRepOffset_Interval.hxx".}
proc Last*(this: var BRepOffset_Interval; U: Standard_Real) {.importcpp: "Last",
    header: "BRepOffset_Interval.hxx".}
proc Type*(this: var BRepOffset_Interval; T: ChFiDS_TypeOfConcavity) {.
    importcpp: "Type", header: "BRepOffset_Interval.hxx".}
proc First*(this: BRepOffset_Interval): Standard_Real {.noSideEffect,
    importcpp: "First", header: "BRepOffset_Interval.hxx".}
proc Last*(this: BRepOffset_Interval): Standard_Real {.noSideEffect,
    importcpp: "Last", header: "BRepOffset_Interval.hxx".}
proc Type*(this: BRepOffset_Interval): ChFiDS_TypeOfConcavity {.noSideEffect,
    importcpp: "Type", header: "BRepOffset_Interval.hxx".}