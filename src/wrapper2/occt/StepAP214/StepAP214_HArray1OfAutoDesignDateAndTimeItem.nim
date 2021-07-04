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
  StepAP214_AutoDesignDateAndTimeItem,
  StepAP214_Array1OfAutoDesignDateAndTimeItem,
  ../NCollection/NCollection_DefineHArray1

type
  StepAP214_HArray1OfAutoDesignDateAndTimeItem* {.
      importcpp: "StepAP214_HArray1OfAutoDesignDateAndTimeItem",
      header: "StepAP214_HArray1OfAutoDesignDateAndTimeItem.hxx", bycopy.} = object of StepAP214_Array1OfAutoDesignDateAndTimeItem


proc constructStepAP214_HArray1OfAutoDesignDateAndTimeItem*(
    theLower: Standard_Integer; theUpper: Standard_Integer): StepAP214_HArray1OfAutoDesignDateAndTimeItem {.
    constructor, importcpp: "StepAP214_HArray1OfAutoDesignDateAndTimeItem(@)",
    header: "StepAP214_HArray1OfAutoDesignDateAndTimeItem.hxx".}
proc constructStepAP214_HArray1OfAutoDesignDateAndTimeItem*(
    theLower: Standard_Integer; theUpper: Standard_Integer; theValue: value_type): StepAP214_HArray1OfAutoDesignDateAndTimeItem {.
    constructor, importcpp: "StepAP214_HArray1OfAutoDesignDateAndTimeItem(@)",
    header: "StepAP214_HArray1OfAutoDesignDateAndTimeItem.hxx".}
proc constructStepAP214_HArray1OfAutoDesignDateAndTimeItem*(
    theOther: StepAP214_Array1OfAutoDesignDateAndTimeItem): StepAP214_HArray1OfAutoDesignDateAndTimeItem {.
    constructor, importcpp: "StepAP214_HArray1OfAutoDesignDateAndTimeItem(@)",
    header: "StepAP214_HArray1OfAutoDesignDateAndTimeItem.hxx".}
proc Array1*(this: StepAP214_HArray1OfAutoDesignDateAndTimeItem): StepAP214_Array1OfAutoDesignDateAndTimeItem {.
    noSideEffect, importcpp: "Array1",
    header: "StepAP214_HArray1OfAutoDesignDateAndTimeItem.hxx".}
proc ChangeArray1*(this: var StepAP214_HArray1OfAutoDesignDateAndTimeItem): var StepAP214_Array1OfAutoDesignDateAndTimeItem {.
    importcpp: "ChangeArray1",
    header: "StepAP214_HArray1OfAutoDesignDateAndTimeItem.hxx".}
type
  StepAP214_HArray1OfAutoDesignDateAndTimeItembase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "StepAP214_HArray1OfAutoDesignDateAndTimeItem::get_type_name(@)", header: "StepAP214_HArray1OfAutoDesignDateAndTimeItem.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepAP214_HArray1OfAutoDesignDateAndTimeItem::get_type_descriptor(@)",
    header: "StepAP214_HArray1OfAutoDesignDateAndTimeItem.hxx".}
proc DynamicType*(this: StepAP214_HArray1OfAutoDesignDateAndTimeItem): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepAP214_HArray1OfAutoDesignDateAndTimeItem.hxx".}