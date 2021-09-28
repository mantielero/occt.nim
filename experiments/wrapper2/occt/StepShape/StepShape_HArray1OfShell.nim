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
  StepShapeHArray1OfShell* {.importcpp: "StepShape_HArray1OfShell",
                            header: "StepShape_HArray1OfShell.hxx", bycopy.} = object of StepShapeArray1OfShell


proc constructStepShapeHArray1OfShell*(theLower: int; theUpper: int): StepShapeHArray1OfShell {.
    constructor, importcpp: "StepShape_HArray1OfShell(@)",
    header: "StepShape_HArray1OfShell.hxx".}
proc constructStepShapeHArray1OfShell*(theLower: int; theUpper: int;
                                      theValue: ValueType): StepShapeHArray1OfShell {.
    constructor, importcpp: "StepShape_HArray1OfShell(@)",
    header: "StepShape_HArray1OfShell.hxx".}
proc constructStepShapeHArray1OfShell*(theOther: StepShapeArray1OfShell): StepShapeHArray1OfShell {.
    constructor, importcpp: "StepShape_HArray1OfShell(@)",
    header: "StepShape_HArray1OfShell.hxx".}
proc array1*(this: StepShapeHArray1OfShell): StepShapeArray1OfShell {.noSideEffect,
    importcpp: "Array1", header: "StepShape_HArray1OfShell.hxx".}
proc changeArray1*(this: var StepShapeHArray1OfShell): var StepShapeArray1OfShell {.
    importcpp: "ChangeArray1", header: "StepShape_HArray1OfShell.hxx".}
type
  StepShapeHArray1OfShellbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "StepShape_HArray1OfShell::get_type_name(@)",
                            header: "StepShape_HArray1OfShell.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_HArray1OfShell::get_type_descriptor(@)",
    header: "StepShape_HArray1OfShell.hxx".}
proc dynamicType*(this: StepShapeHArray1OfShell): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepShape_HArray1OfShell.hxx".}














































