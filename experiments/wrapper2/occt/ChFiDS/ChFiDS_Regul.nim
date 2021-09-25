##  Created on: 1995-03-21
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

## ! Storage of  a curve  and its 2 faces or surfaces of  support.

type
  ChFiDS_Regul* {.importcpp: "ChFiDS_Regul", header: "ChFiDS_Regul.hxx", bycopy.} = object


proc constructChFiDS_Regul*(): ChFiDS_Regul {.constructor,
    importcpp: "ChFiDS_Regul(@)", header: "ChFiDS_Regul.hxx".}
proc setCurve*(this: var ChFiDS_Regul; ic: int) {.importcpp: "SetCurve",
    header: "ChFiDS_Regul.hxx".}
proc setS1*(this: var ChFiDS_Regul; is1: int; isFace: bool = true) {.importcpp: "SetS1",
    header: "ChFiDS_Regul.hxx".}
proc setS2*(this: var ChFiDS_Regul; is2: int; isFace: bool = true) {.importcpp: "SetS2",
    header: "ChFiDS_Regul.hxx".}
proc isSurface1*(this: ChFiDS_Regul): bool {.noSideEffect, importcpp: "IsSurface1",
    header: "ChFiDS_Regul.hxx".}
proc isSurface2*(this: ChFiDS_Regul): bool {.noSideEffect, importcpp: "IsSurface2",
    header: "ChFiDS_Regul.hxx".}
proc curve*(this: ChFiDS_Regul): int {.noSideEffect, importcpp: "Curve",
                                   header: "ChFiDS_Regul.hxx".}
proc s1*(this: ChFiDS_Regul): int {.noSideEffect, importcpp: "S1",
                                header: "ChFiDS_Regul.hxx".}
proc s2*(this: ChFiDS_Regul): int {.noSideEffect, importcpp: "S2",
                                header: "ChFiDS_Regul.hxx".}
