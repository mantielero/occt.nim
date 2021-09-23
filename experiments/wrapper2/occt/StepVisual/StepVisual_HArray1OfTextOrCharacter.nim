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
  StepVisual_TextOrCharacter, StepVisual_Array1OfTextOrCharacter,
  ../NCollection/NCollection_DefineHArray1

type
  StepVisual_HArray1OfTextOrCharacter* {.importcpp: "StepVisual_HArray1OfTextOrCharacter", header: "StepVisual_HArray1OfTextOrCharacter.hxx",
                                        bycopy.} = object of StepVisual_Array1OfTextOrCharacter


proc constructStepVisual_HArray1OfTextOrCharacter*(theLower: Standard_Integer;
    theUpper: Standard_Integer): StepVisual_HArray1OfTextOrCharacter {.constructor,
    importcpp: "StepVisual_HArray1OfTextOrCharacter(@)",
    header: "StepVisual_HArray1OfTextOrCharacter.hxx".}
proc constructStepVisual_HArray1OfTextOrCharacter*(theLower: Standard_Integer;
    theUpper: Standard_Integer; theValue: value_type): StepVisual_HArray1OfTextOrCharacter {.
    constructor, importcpp: "StepVisual_HArray1OfTextOrCharacter(@)",
    header: "StepVisual_HArray1OfTextOrCharacter.hxx".}
proc constructStepVisual_HArray1OfTextOrCharacter*(
    theOther: StepVisual_Array1OfTextOrCharacter): StepVisual_HArray1OfTextOrCharacter {.
    constructor, importcpp: "StepVisual_HArray1OfTextOrCharacter(@)",
    header: "StepVisual_HArray1OfTextOrCharacter.hxx".}
proc Array1*(this: StepVisual_HArray1OfTextOrCharacter): StepVisual_Array1OfTextOrCharacter {.
    noSideEffect, importcpp: "Array1",
    header: "StepVisual_HArray1OfTextOrCharacter.hxx".}
proc ChangeArray1*(this: var StepVisual_HArray1OfTextOrCharacter): var StepVisual_Array1OfTextOrCharacter {.
    importcpp: "ChangeArray1", header: "StepVisual_HArray1OfTextOrCharacter.hxx".}
type
  StepVisual_HArray1OfTextOrCharacterbase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "StepVisual_HArray1OfTextOrCharacter::get_type_name(@)",
                              header: "StepVisual_HArray1OfTextOrCharacter.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_HArray1OfTextOrCharacter::get_type_descriptor(@)",
    header: "StepVisual_HArray1OfTextOrCharacter.hxx".}
proc DynamicType*(this: StepVisual_HArray1OfTextOrCharacter): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_HArray1OfTextOrCharacter.hxx".}