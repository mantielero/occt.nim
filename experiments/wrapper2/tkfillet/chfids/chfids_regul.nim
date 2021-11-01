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


proc newChFiDS_Regul*(): ChFiDS_Regul {.cdecl, constructor,
                                     importcpp: "ChFiDS_Regul(@)",
                                     dynlib: tkfillet.}
proc setCurve*(this: var ChFiDS_Regul; ic: cint) {.cdecl, importcpp: "SetCurve",
    dynlib: tkfillet.}
proc setS1*(this: var ChFiDS_Regul; is1: cint; isFace: bool = true) {.cdecl,
    importcpp: "SetS1", dynlib: tkfillet.}
proc setS2*(this: var ChFiDS_Regul; is2: cint; isFace: bool = true) {.cdecl,
    importcpp: "SetS2", dynlib: tkfillet.}
proc isSurface1*(this: ChFiDS_Regul): bool {.noSideEffect, cdecl,
    importcpp: "IsSurface1", dynlib: tkfillet.}
proc isSurface2*(this: ChFiDS_Regul): bool {.noSideEffect, cdecl,
    importcpp: "IsSurface2", dynlib: tkfillet.}
proc curve*(this: ChFiDS_Regul): cint {.noSideEffect, cdecl, importcpp: "Curve",
                                    dynlib: tkfillet.}
proc s1*(this: ChFiDS_Regul): cint {.noSideEffect, cdecl, importcpp: "S1",
                                 dynlib: tkfillet.}
proc s2*(this: ChFiDS_Regul): cint {.noSideEffect, cdecl, importcpp: "S2",
                                 dynlib: tkfillet.}