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

import
  ../Standard/Standard, ../Standard/Standard_Type, StepRepr_DerivedShapeAspect,
  ../StepData/StepData_Logical

discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_ProductDefinitionShape"
discard "forward decl of StepRepr_ParallelOffset"
discard "forward decl of StepRepr_ParallelOffset"
type
  Handle_StepRepr_ParallelOffset* = handle[StepRepr_ParallelOffset]

## ! Added for Dimensional Tolerances

type
  StepRepr_ParallelOffset* {.importcpp: "StepRepr_ParallelOffset",
                            header: "StepRepr_ParallelOffset.hxx", bycopy.} = object of StepRepr_DerivedShapeAspect


proc constructStepRepr_ParallelOffset*(): StepRepr_ParallelOffset {.constructor,
    importcpp: "StepRepr_ParallelOffset(@)", header: "StepRepr_ParallelOffset.hxx".}
proc Init*(this: var StepRepr_ParallelOffset;
          theName: handle[TCollection_HAsciiString];
          theDescription: handle[TCollection_HAsciiString];
          theOfShape: handle[StepRepr_ProductDefinitionShape];
          theProductDefinitional: StepData_Logical;
          theOffset: handle[StepBasic_MeasureWithUnit]) {.importcpp: "Init",
    header: "StepRepr_ParallelOffset.hxx".}
proc Offset*(this: StepRepr_ParallelOffset): handle[StepBasic_MeasureWithUnit] {.
    noSideEffect, importcpp: "Offset", header: "StepRepr_ParallelOffset.hxx".}
proc SetOffset*(this: var StepRepr_ParallelOffset;
               theOffset: handle[StepBasic_MeasureWithUnit]) {.
    importcpp: "SetOffset", header: "StepRepr_ParallelOffset.hxx".}
type
  StepRepr_ParallelOffsetbase_type* = StepRepr_DerivedShapeAspect

proc get_type_name*(): cstring {.importcpp: "StepRepr_ParallelOffset::get_type_name(@)",
                              header: "StepRepr_ParallelOffset.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepRepr_ParallelOffset::get_type_descriptor(@)",
    header: "StepRepr_ParallelOffset.hxx".}
proc DynamicType*(this: StepRepr_ParallelOffset): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepRepr_ParallelOffset.hxx".}