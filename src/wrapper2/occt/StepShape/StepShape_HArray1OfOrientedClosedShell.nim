##  Created on: 1995-12-01
##  Created by: EXPRESS->CDL V0.2 Translator
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
  StepShape_OrientedClosedShell, StepShape_Array1OfOrientedClosedShell,
  ../NCollection/NCollection_DefineHArray1

type
  StepShape_HArray1OfOrientedClosedShell* {.
      importcpp: "StepShape_HArray1OfOrientedClosedShell",
      header: "StepShape_HArray1OfOrientedClosedShell.hxx", bycopy.} = object of StepShape_Array1OfOrientedClosedShell


proc constructStepShape_HArray1OfOrientedClosedShell*(theLower: Standard_Integer;
    theUpper: Standard_Integer): StepShape_HArray1OfOrientedClosedShell {.
    constructor, importcpp: "StepShape_HArray1OfOrientedClosedShell(@)",
    header: "StepShape_HArray1OfOrientedClosedShell.hxx".}
proc constructStepShape_HArray1OfOrientedClosedShell*(theLower: Standard_Integer;
    theUpper: Standard_Integer; theValue: value_type): StepShape_HArray1OfOrientedClosedShell {.
    constructor, importcpp: "StepShape_HArray1OfOrientedClosedShell(@)",
    header: "StepShape_HArray1OfOrientedClosedShell.hxx".}
proc constructStepShape_HArray1OfOrientedClosedShell*(
    theOther: StepShape_Array1OfOrientedClosedShell): StepShape_HArray1OfOrientedClosedShell {.
    constructor, importcpp: "StepShape_HArray1OfOrientedClosedShell(@)",
    header: "StepShape_HArray1OfOrientedClosedShell.hxx".}
proc Array1*(this: StepShape_HArray1OfOrientedClosedShell): StepShape_Array1OfOrientedClosedShell {.
    noSideEffect, importcpp: "Array1",
    header: "StepShape_HArray1OfOrientedClosedShell.hxx".}
proc ChangeArray1*(this: var StepShape_HArray1OfOrientedClosedShell): var StepShape_Array1OfOrientedClosedShell {.
    importcpp: "ChangeArray1",
    header: "StepShape_HArray1OfOrientedClosedShell.hxx".}
type
  StepShape_HArray1OfOrientedClosedShellbase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "StepShape_HArray1OfOrientedClosedShell::get_type_name(@)", header: "StepShape_HArray1OfOrientedClosedShell.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepShape_HArray1OfOrientedClosedShell::get_type_descriptor(@)",
    header: "StepShape_HArray1OfOrientedClosedShell.hxx".}
proc DynamicType*(this: StepShape_HArray1OfOrientedClosedShell): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepShape_HArray1OfOrientedClosedShell.hxx".}