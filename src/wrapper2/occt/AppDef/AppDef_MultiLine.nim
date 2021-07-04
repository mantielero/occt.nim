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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, AppDef_HArray1OfMultiPointConstraint,
  ../Standard/Standard_Integer, AppDef_Array1OfMultiPointConstraint,
  ../TColgp/TColgp_Array1OfPnt, ../TColgp/TColgp_Array1OfPnt2d,
  ../Standard/Standard_Real, ../Standard/Standard_OStream

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_DimensionError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of AppDef_MultiPointConstraint"
type
  AppDef_MultiLine* {.importcpp: "AppDef_MultiLine",
                     header: "AppDef_MultiLine.hxx", bycopy.} = object ## ! creates an undefined MultiLine.


proc constructAppDef_MultiLine*(): AppDef_MultiLine {.constructor,
    importcpp: "AppDef_MultiLine(@)", header: "AppDef_MultiLine.hxx".}
proc constructAppDef_MultiLine*(NbMult: Standard_Integer): AppDef_MultiLine {.
    constructor, importcpp: "AppDef_MultiLine(@)", header: "AppDef_MultiLine.hxx".}
proc constructAppDef_MultiLine*(tabMultiP: AppDef_Array1OfMultiPointConstraint): AppDef_MultiLine {.
    constructor, importcpp: "AppDef_MultiLine(@)", header: "AppDef_MultiLine.hxx".}
proc constructAppDef_MultiLine*(tabP3d: TColgp_Array1OfPnt): AppDef_MultiLine {.
    constructor, importcpp: "AppDef_MultiLine(@)", header: "AppDef_MultiLine.hxx".}
proc constructAppDef_MultiLine*(tabP2d: TColgp_Array1OfPnt2d): AppDef_MultiLine {.
    constructor, importcpp: "AppDef_MultiLine(@)", header: "AppDef_MultiLine.hxx".}
proc NbMultiPoints*(this: AppDef_MultiLine): Standard_Integer {.noSideEffect,
    importcpp: "NbMultiPoints", header: "AppDef_MultiLine.hxx".}
proc NbPoints*(this: AppDef_MultiLine): Standard_Integer {.noSideEffect,
    importcpp: "NbPoints", header: "AppDef_MultiLine.hxx".}
proc SetParameter*(this: var AppDef_MultiLine; Index: Standard_Integer;
                  U: Standard_Real) {.importcpp: "SetParameter",
                                    header: "AppDef_MultiLine.hxx".}
proc SetValue*(this: var AppDef_MultiLine; Index: Standard_Integer;
              MPoint: AppDef_MultiPointConstraint) {.importcpp: "SetValue",
    header: "AppDef_MultiLine.hxx".}
proc Value*(this: AppDef_MultiLine; Index: Standard_Integer): AppDef_MultiPointConstraint {.
    noSideEffect, importcpp: "Value", header: "AppDef_MultiLine.hxx".}
proc Dump*(this: AppDef_MultiLine; o: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "AppDef_MultiLine.hxx".}