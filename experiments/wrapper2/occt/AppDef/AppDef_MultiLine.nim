##  Created on: 1991-12-02
##  Created by: Laurent PAINNOT
##  Copyright (c) 1991-1999 Matra Datavision
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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_DimensionError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of AppDef_MultiPointConstraint"
type
  AppDefMultiLine* {.importcpp: "AppDef_MultiLine", header: "AppDef_MultiLine.hxx",
                    bycopy.} = object ## ! creates an undefined MultiLine.


proc constructAppDefMultiLine*(): AppDefMultiLine {.constructor,
    importcpp: "AppDef_MultiLine(@)", header: "AppDef_MultiLine.hxx".}
proc constructAppDefMultiLine*(nbMult: int): AppDefMultiLine {.constructor,
    importcpp: "AppDef_MultiLine(@)", header: "AppDef_MultiLine.hxx".}
proc constructAppDefMultiLine*(tabMultiP: AppDefArray1OfMultiPointConstraint): AppDefMultiLine {.
    constructor, importcpp: "AppDef_MultiLine(@)", header: "AppDef_MultiLine.hxx".}
proc constructAppDefMultiLine*(tabP3d: TColgpArray1OfPnt): AppDefMultiLine {.
    constructor, importcpp: "AppDef_MultiLine(@)", header: "AppDef_MultiLine.hxx".}
proc constructAppDefMultiLine*(tabP2d: TColgpArray1OfPnt2d): AppDefMultiLine {.
    constructor, importcpp: "AppDef_MultiLine(@)", header: "AppDef_MultiLine.hxx".}
proc nbMultiPoints*(this: AppDefMultiLine): int {.noSideEffect,
    importcpp: "NbMultiPoints", header: "AppDef_MultiLine.hxx".}
proc nbPoints*(this: AppDefMultiLine): int {.noSideEffect, importcpp: "NbPoints",
    header: "AppDef_MultiLine.hxx".}
proc setParameter*(this: var AppDefMultiLine; index: int; u: float) {.
    importcpp: "SetParameter", header: "AppDef_MultiLine.hxx".}
proc setValue*(this: var AppDefMultiLine; index: int;
              mPoint: AppDefMultiPointConstraint) {.importcpp: "SetValue",
    header: "AppDef_MultiLine.hxx".}
proc value*(this: AppDefMultiLine; index: int): AppDefMultiPointConstraint {.
    noSideEffect, importcpp: "Value", header: "AppDef_MultiLine.hxx".}
proc dump*(this: AppDefMultiLine; o: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "AppDef_MultiLine.hxx".}
