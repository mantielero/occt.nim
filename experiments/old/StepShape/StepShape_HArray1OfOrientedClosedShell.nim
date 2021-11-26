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

type
  StepShapeHArray1OfOrientedClosedShell* {.
      importcpp: "StepShape_HArray1OfOrientedClosedShell",
      header: "StepShape_HArray1OfOrientedClosedShell.hxx", bycopy.} = object of StepShapeArray1OfOrientedClosedShell


proc constructStepShapeHArray1OfOrientedClosedShell*(theLower: int; theUpper: int): StepShapeHArray1OfOrientedClosedShell {.
    constructor, importcpp: "StepShape_HArray1OfOrientedClosedShell(@)",
    header: "StepShape_HArray1OfOrientedClosedShell.hxx".}
proc constructStepShapeHArray1OfOrientedClosedShell*(theLower: int; theUpper: int;
    theValue: ValueType): StepShapeHArray1OfOrientedClosedShell {.constructor,
    importcpp: "StepShape_HArray1OfOrientedClosedShell(@)",
    header: "StepShape_HArray1OfOrientedClosedShell.hxx".}
proc constructStepShapeHArray1OfOrientedClosedShell*(
    theOther: StepShapeArray1OfOrientedClosedShell): StepShapeHArray1OfOrientedClosedShell {.
    constructor, importcpp: "StepShape_HArray1OfOrientedClosedShell(@)",
    header: "StepShape_HArray1OfOrientedClosedShell.hxx".}
proc array1*(this: StepShapeHArray1OfOrientedClosedShell): StepShapeArray1OfOrientedClosedShell {.
    noSideEffect, importcpp: "Array1",
    header: "StepShape_HArray1OfOrientedClosedShell.hxx".}
proc changeArray1*(this: var StepShapeHArray1OfOrientedClosedShell): var StepShapeArray1OfOrientedClosedShell {.
    importcpp: "ChangeArray1",
    header: "StepShape_HArray1OfOrientedClosedShell.hxx".}
type
  StepShapeHArray1OfOrientedClosedShellbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "StepShape_HArray1OfOrientedClosedShell::get_type_name(@)", header: "StepShape_HArray1OfOrientedClosedShell.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepShape_HArray1OfOrientedClosedShell::get_type_descriptor(@)",
    header: "StepShape_HArray1OfOrientedClosedShell.hxx".}
proc dynamicType*(this: StepShapeHArray1OfOrientedClosedShell): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_HArray1OfOrientedClosedShell.hxx".}














































