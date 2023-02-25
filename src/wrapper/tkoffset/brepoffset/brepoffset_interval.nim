import brepoffset_types
import ../../tkfillet/chfids/chfids_types

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



proc newBRepOffset_Interval*(): BRepOffset_Interval {.cdecl, constructor,
    importcpp: "BRepOffset_Interval(@)".}
proc newBRepOffset_Interval*(U1: cfloat; U2: cfloat; Type: ChFiDS_TypeOfConcavity): BRepOffset_Interval {.
    cdecl, constructor, importcpp: "BRepOffset_Interval(@)".}
proc First*(this: var BRepOffset_Interval; U: cfloat) {.cdecl, importcpp: "First",
    .}
proc Last*(this: var BRepOffset_Interval; U: cfloat) {.cdecl, importcpp: "Last",
    .}
proc Type*(this: var BRepOffset_Interval; T: ChFiDS_TypeOfConcavity) {.cdecl,
    importcpp: "Type".}
proc First*(this: BRepOffset_Interval): cfloat {.noSideEffect, cdecl,
    importcpp: "First".}
proc Last*(this: BRepOffset_Interval): cfloat {.noSideEffect, cdecl,
    importcpp: "Last".}
proc Type*(this: BRepOffset_Interval): ChFiDS_TypeOfConcavity {.noSideEffect, cdecl,
    importcpp: "Type".}