##  Created on: 1992-02-11
##  Created by: Christian CAILLET
##  Copyright (c) 1992-1999 Matra Datavision
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
  StepData_Field, StepData_Array1OfField, ../NCollection/NCollection_DefineHArray1

type
  StepData_HArray1OfField* {.importcpp: "StepData_HArray1OfField",
                            header: "StepData_HArray1OfField.hxx", bycopy.} = object of StepData_Array1OfField


proc constructStepData_HArray1OfField*(theLower: Standard_Integer;
                                      theUpper: Standard_Integer): StepData_HArray1OfField {.
    constructor, importcpp: "StepData_HArray1OfField(@)",
    header: "StepData_HArray1OfField.hxx".}
proc constructStepData_HArray1OfField*(theLower: Standard_Integer;
                                      theUpper: Standard_Integer;
                                      theValue: value_type): StepData_HArray1OfField {.
    constructor, importcpp: "StepData_HArray1OfField(@)",
    header: "StepData_HArray1OfField.hxx".}
proc constructStepData_HArray1OfField*(theOther: StepData_Array1OfField): StepData_HArray1OfField {.
    constructor, importcpp: "StepData_HArray1OfField(@)",
    header: "StepData_HArray1OfField.hxx".}
proc Array1*(this: StepData_HArray1OfField): StepData_Array1OfField {.noSideEffect,
    importcpp: "Array1", header: "StepData_HArray1OfField.hxx".}
proc ChangeArray1*(this: var StepData_HArray1OfField): var StepData_Array1OfField {.
    importcpp: "ChangeArray1", header: "StepData_HArray1OfField.hxx".}
type
  StepData_HArray1OfFieldbase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "StepData_HArray1OfField::get_type_name(@)",
                              header: "StepData_HArray1OfField.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepData_HArray1OfField::get_type_descriptor(@)",
    header: "StepData_HArray1OfField.hxx".}
proc DynamicType*(this: StepData_HArray1OfField): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepData_HArray1OfField.hxx".}