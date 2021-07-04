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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean

## ! Storage of  a curve  and its 2 faces or surfaces of  support.

type
  ChFiDS_Regul* {.importcpp: "ChFiDS_Regul", header: "ChFiDS_Regul.hxx", bycopy.} = object


proc constructChFiDS_Regul*(): ChFiDS_Regul {.constructor,
    importcpp: "ChFiDS_Regul(@)", header: "ChFiDS_Regul.hxx".}
proc SetCurve*(this: var ChFiDS_Regul; IC: Standard_Integer) {.importcpp: "SetCurve",
    header: "ChFiDS_Regul.hxx".}
proc SetS1*(this: var ChFiDS_Regul; IS1: Standard_Integer;
           IsFace: Standard_Boolean = Standard_True) {.importcpp: "SetS1",
    header: "ChFiDS_Regul.hxx".}
proc SetS2*(this: var ChFiDS_Regul; IS2: Standard_Integer;
           IsFace: Standard_Boolean = Standard_True) {.importcpp: "SetS2",
    header: "ChFiDS_Regul.hxx".}
proc IsSurface1*(this: ChFiDS_Regul): Standard_Boolean {.noSideEffect,
    importcpp: "IsSurface1", header: "ChFiDS_Regul.hxx".}
proc IsSurface2*(this: ChFiDS_Regul): Standard_Boolean {.noSideEffect,
    importcpp: "IsSurface2", header: "ChFiDS_Regul.hxx".}
proc Curve*(this: ChFiDS_Regul): Standard_Integer {.noSideEffect, importcpp: "Curve",
    header: "ChFiDS_Regul.hxx".}
proc S1*(this: ChFiDS_Regul): Standard_Integer {.noSideEffect, importcpp: "S1",
    header: "ChFiDS_Regul.hxx".}
proc S2*(this: ChFiDS_Regul): Standard_Integer {.noSideEffect, importcpp: "S2",
    header: "ChFiDS_Regul.hxx".}