##  Created on: 2004-02-11
##  Created by: Sergey KUUL
##  Copyright (c) 2004-2014 OPEN CASCADE SAS
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

discard "forward decl of StepBasic_MassMeasureWithUnit"
discard "forward decl of StepBasic_MassMeasureWithUnit"
type
  Handle_StepBasic_MassMeasureWithUnit* = handle[StepBasic_MassMeasureWithUnit]
  StepBasic_MassMeasureWithUnit* {.importcpp: "StepBasic_MassMeasureWithUnit",
                                  header: "StepBasic_MassMeasureWithUnit.hxx",
                                  bycopy.} = object of StepBasic_MeasureWithUnit ## !
                                                                            ## Returns a
                                                                            ## MassMeasureWithUnit


proc constructStepBasic_MassMeasureWithUnit*(): StepBasic_MassMeasureWithUnit {.
    constructor, importcpp: "StepBasic_MassMeasureWithUnit(@)",
    header: "StepBasic_MassMeasureWithUnit.hxx".}
type
  StepBasic_MassMeasureWithUnitbase_type* = StepBasic_MeasureWithUnit

proc get_type_name*(): cstring {.importcpp: "StepBasic_MassMeasureWithUnit::get_type_name(@)",
                              header: "StepBasic_MassMeasureWithUnit.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_MassMeasureWithUnit::get_type_descriptor(@)",
    header: "StepBasic_MassMeasureWithUnit.hxx".}
proc DynamicType*(this: StepBasic_MassMeasureWithUnit): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_MassMeasureWithUnit.hxx".}