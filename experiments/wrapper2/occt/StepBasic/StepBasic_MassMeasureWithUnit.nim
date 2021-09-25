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

discard "forward decl of StepBasic_MassMeasureWithUnit"
discard "forward decl of StepBasic_MassMeasureWithUnit"
type
  HandleStepBasicMassMeasureWithUnit* = Handle[StepBasicMassMeasureWithUnit]
  StepBasicMassMeasureWithUnit* {.importcpp: "StepBasic_MassMeasureWithUnit",
                                 header: "StepBasic_MassMeasureWithUnit.hxx",
                                 bycopy.} = object of StepBasicMeasureWithUnit ## !
                                                                          ## Returns a
                                                                          ## MassMeasureWithUnit


proc constructStepBasicMassMeasureWithUnit*(): StepBasicMassMeasureWithUnit {.
    constructor, importcpp: "StepBasic_MassMeasureWithUnit(@)",
    header: "StepBasic_MassMeasureWithUnit.hxx".}
type
  StepBasicMassMeasureWithUnitbaseType* = StepBasicMeasureWithUnit

proc getTypeName*(): cstring {.importcpp: "StepBasic_MassMeasureWithUnit::get_type_name(@)",
                            header: "StepBasic_MassMeasureWithUnit.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_MassMeasureWithUnit::get_type_descriptor(@)",
    header: "StepBasic_MassMeasureWithUnit.hxx".}
proc dynamicType*(this: StepBasicMassMeasureWithUnit): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_MassMeasureWithUnit.hxx".}
