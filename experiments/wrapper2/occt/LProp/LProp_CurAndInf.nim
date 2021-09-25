##  Created on: 1994-09-02
##  Created by: Yves FRICAUD
##  Copyright (c) 1994-1999 Matra Datavision
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
type
  LPropCurAndInf* {.importcpp: "LProp_CurAndInf", header: "LProp_CurAndInf.hxx",
                   bycopy.} = object


proc constructLPropCurAndInf*(): LPropCurAndInf {.constructor,
    importcpp: "LProp_CurAndInf(@)", header: "LProp_CurAndInf.hxx".}
proc addInflection*(this: var LPropCurAndInf; param: float) {.
    importcpp: "AddInflection", header: "LProp_CurAndInf.hxx".}
proc addExtCur*(this: var LPropCurAndInf; param: float; isMin: bool) {.
    importcpp: "AddExtCur", header: "LProp_CurAndInf.hxx".}
proc clear*(this: var LPropCurAndInf) {.importcpp: "Clear",
                                    header: "LProp_CurAndInf.hxx".}
proc isEmpty*(this: LPropCurAndInf): bool {.noSideEffect, importcpp: "IsEmpty",
                                        header: "LProp_CurAndInf.hxx".}
proc nbPoints*(this: LPropCurAndInf): int {.noSideEffect, importcpp: "NbPoints",
                                        header: "LProp_CurAndInf.hxx".}
proc parameter*(this: LPropCurAndInf; n: int): float {.noSideEffect,
    importcpp: "Parameter", header: "LProp_CurAndInf.hxx".}
proc `type`*(this: LPropCurAndInf; n: int): LPropCIType {.noSideEffect,
    importcpp: "Type", header: "LProp_CurAndInf.hxx".}
