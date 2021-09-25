##  Created on: 2001-04-24
##  Created by: Christian CAILLET
##  Copyright (c) 2001-2014 OPEN CASCADE SAS
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

discard "forward decl of StepShape_PrecisionQualifier"
discard "forward decl of StepShape_PrecisionQualifier"
type
  HandleStepShapePrecisionQualifier* = Handle[StepShapePrecisionQualifier]

## ! Added for Dimensional Tolerances

type
  StepShapePrecisionQualifier* {.importcpp: "StepShape_PrecisionQualifier",
                                header: "StepShape_PrecisionQualifier.hxx", bycopy.} = object of StandardTransient


proc constructStepShapePrecisionQualifier*(): StepShapePrecisionQualifier {.
    constructor, importcpp: "StepShape_PrecisionQualifier(@)",
    header: "StepShape_PrecisionQualifier.hxx".}
proc init*(this: var StepShapePrecisionQualifier; precisionValue: int) {.
    importcpp: "Init", header: "StepShape_PrecisionQualifier.hxx".}
proc precisionValue*(this: StepShapePrecisionQualifier): int {.noSideEffect,
    importcpp: "PrecisionValue", header: "StepShape_PrecisionQualifier.hxx".}
proc setPrecisionValue*(this: var StepShapePrecisionQualifier; precisionValue: int) {.
    importcpp: "SetPrecisionValue", header: "StepShape_PrecisionQualifier.hxx".}
type
  StepShapePrecisionQualifierbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepShape_PrecisionQualifier::get_type_name(@)",
                            header: "StepShape_PrecisionQualifier.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_PrecisionQualifier::get_type_descriptor(@)",
    header: "StepShape_PrecisionQualifier.hxx".}
proc dynamicType*(this: StepShapePrecisionQualifier): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_PrecisionQualifier.hxx".}
