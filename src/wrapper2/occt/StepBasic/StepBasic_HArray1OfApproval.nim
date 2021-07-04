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
  StepBasic_Approval, StepBasic_Array1OfApproval,
  ../NCollection/NCollection_DefineHArray1

type
  StepBasic_HArray1OfApproval* {.importcpp: "StepBasic_HArray1OfApproval",
                                header: "StepBasic_HArray1OfApproval.hxx", bycopy.} = object of StepBasic_Array1OfApproval


proc constructStepBasic_HArray1OfApproval*(theLower: Standard_Integer;
    theUpper: Standard_Integer): StepBasic_HArray1OfApproval {.constructor,
    importcpp: "StepBasic_HArray1OfApproval(@)",
    header: "StepBasic_HArray1OfApproval.hxx".}
proc constructStepBasic_HArray1OfApproval*(theLower: Standard_Integer;
    theUpper: Standard_Integer; theValue: value_type): StepBasic_HArray1OfApproval {.
    constructor, importcpp: "StepBasic_HArray1OfApproval(@)",
    header: "StepBasic_HArray1OfApproval.hxx".}
proc constructStepBasic_HArray1OfApproval*(theOther: StepBasic_Array1OfApproval): StepBasic_HArray1OfApproval {.
    constructor, importcpp: "StepBasic_HArray1OfApproval(@)",
    header: "StepBasic_HArray1OfApproval.hxx".}
proc Array1*(this: StepBasic_HArray1OfApproval): StepBasic_Array1OfApproval {.
    noSideEffect, importcpp: "Array1", header: "StepBasic_HArray1OfApproval.hxx".}
proc ChangeArray1*(this: var StepBasic_HArray1OfApproval): var StepBasic_Array1OfApproval {.
    importcpp: "ChangeArray1", header: "StepBasic_HArray1OfApproval.hxx".}
type
  StepBasic_HArray1OfApprovalbase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "StepBasic_HArray1OfApproval::get_type_name(@)",
                              header: "StepBasic_HArray1OfApproval.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_HArray1OfApproval::get_type_descriptor(@)",
    header: "StepBasic_HArray1OfApproval.hxx".}
proc DynamicType*(this: StepBasic_HArray1OfApproval): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_HArray1OfApproval.hxx".}