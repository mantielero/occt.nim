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
  ../Standard/Standard, ../Standard/Standard_Type, StepBasic_MeasureWithUnit

discard "forward decl of StepBasic_TimeMeasureWithUnit"
discard "forward decl of StepBasic_TimeMeasureWithUnit"
type
  Handle_StepBasic_TimeMeasureWithUnit* = handle[StepBasic_TimeMeasureWithUnit]
  StepBasic_TimeMeasureWithUnit* {.importcpp: "StepBasic_TimeMeasureWithUnit",
                                  header: "StepBasic_TimeMeasureWithUnit.hxx",
                                  bycopy.} = object of StepBasic_MeasureWithUnit ## !
                                                                            ## Returns a
                                                                            ## TimeMeasureWithUnit


proc constructStepBasic_TimeMeasureWithUnit*(): StepBasic_TimeMeasureWithUnit {.
    constructor, importcpp: "StepBasic_TimeMeasureWithUnit(@)",
    header: "StepBasic_TimeMeasureWithUnit.hxx".}
type
  StepBasic_TimeMeasureWithUnitbase_type* = StepBasic_MeasureWithUnit

proc get_type_name*(): cstring {.importcpp: "StepBasic_TimeMeasureWithUnit::get_type_name(@)",
                              header: "StepBasic_TimeMeasureWithUnit.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_TimeMeasureWithUnit::get_type_descriptor(@)",
    header: "StepBasic_TimeMeasureWithUnit.hxx".}
proc DynamicType*(this: StepBasic_TimeMeasureWithUnit): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_TimeMeasureWithUnit.hxx".}