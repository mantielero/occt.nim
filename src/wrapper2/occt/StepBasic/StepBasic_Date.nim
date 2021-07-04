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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../Standard/Standard_Transient

discard "forward decl of StepBasic_Date"
discard "forward decl of StepBasic_Date"
type
  Handle_StepBasic_Date* = handle[StepBasic_Date]
  StepBasic_Date* {.importcpp: "StepBasic_Date", header: "StepBasic_Date.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                             ## !
                                                                                                             ## Returns
                                                                                                             ## a
                                                                                                             ## Date


proc constructStepBasic_Date*(): StepBasic_Date {.constructor,
    importcpp: "StepBasic_Date(@)", header: "StepBasic_Date.hxx".}
proc Init*(this: var StepBasic_Date; aYearComponent: Standard_Integer) {.
    importcpp: "Init", header: "StepBasic_Date.hxx".}
proc SetYearComponent*(this: var StepBasic_Date; aYearComponent: Standard_Integer) {.
    importcpp: "SetYearComponent", header: "StepBasic_Date.hxx".}
proc YearComponent*(this: StepBasic_Date): Standard_Integer {.noSideEffect,
    importcpp: "YearComponent", header: "StepBasic_Date.hxx".}
type
  StepBasic_Datebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_Date::get_type_name(@)",
                              header: "StepBasic_Date.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_Date::get_type_descriptor(@)",
    header: "StepBasic_Date.hxx".}
proc DynamicType*(this: StepBasic_Date): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepBasic_Date.hxx".}