##  Created on: 2015-07-10
##  Created by: Irina KRYLOVA
##  Copyright (c) 2015 OPEN CASCADE SAS
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

discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_ProductDefinitionShape"
discard "forward decl of StepRepr_ParallelOffset"
discard "forward decl of StepRepr_ParallelOffset"
type
  HandleStepReprParallelOffset* = Handle[StepReprParallelOffset]

## ! Added for Dimensional Tolerances

type
  StepReprParallelOffset* {.importcpp: "StepRepr_ParallelOffset",
                           header: "StepRepr_ParallelOffset.hxx", bycopy.} = object of StepReprDerivedShapeAspect


proc constructStepReprParallelOffset*(): StepReprParallelOffset {.constructor,
    importcpp: "StepRepr_ParallelOffset(@)", header: "StepRepr_ParallelOffset.hxx".}
proc init*(this: var StepReprParallelOffset;
          theName: Handle[TCollectionHAsciiString];
          theDescription: Handle[TCollectionHAsciiString];
          theOfShape: Handle[StepReprProductDefinitionShape];
          theProductDefinitional: StepDataLogical;
          theOffset: Handle[StepBasicMeasureWithUnit]) {.importcpp: "Init",
    header: "StepRepr_ParallelOffset.hxx".}
proc offset*(this: StepReprParallelOffset): Handle[StepBasicMeasureWithUnit] {.
    noSideEffect, importcpp: "Offset", header: "StepRepr_ParallelOffset.hxx".}
proc setOffset*(this: var StepReprParallelOffset;
               theOffset: Handle[StepBasicMeasureWithUnit]) {.
    importcpp: "SetOffset", header: "StepRepr_ParallelOffset.hxx".}
type
  StepReprParallelOffsetbaseType* = StepReprDerivedShapeAspect

proc getTypeName*(): cstring {.importcpp: "StepRepr_ParallelOffset::get_type_name(@)",
                            header: "StepRepr_ParallelOffset.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepRepr_ParallelOffset::get_type_descriptor(@)",
    header: "StepRepr_ParallelOffset.hxx".}
proc dynamicType*(this: StepReprParallelOffset): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepRepr_ParallelOffset.hxx".}
