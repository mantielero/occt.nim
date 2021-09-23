##  Created on: 2015-07-16
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
  ../Standard/Standard, ../Standard/Standard_DefineHandle,
  ../Standard/Standard_Handle, ../Standard/Standard_Transient,
  ../Standard/Standard_Integer, ../StepBasic/StepBasic_LengthMeasureWithUnit,
  StepDimTol_DatumReferenceModifierType

discard "forward decl of StepDimTol_DatumReferenceModifierWithValue"
discard "forward decl of StepDimTol_DatumReferenceModifierWithValue"
type
  Handle_StepDimTol_DatumReferenceModifierWithValue* = handle[
      StepDimTol_DatumReferenceModifierWithValue]

## ! Representation of STEP entity DatumReferenceModifierWithValue

type
  StepDimTol_DatumReferenceModifierWithValue* {.
      importcpp: "StepDimTol_DatumReferenceModifierWithValue",
      header: "StepDimTol_DatumReferenceModifierWithValue.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                 ## !
                                                                                                 ## Empty
                                                                                                 ## constructor


proc constructStepDimTol_DatumReferenceModifierWithValue*(): StepDimTol_DatumReferenceModifierWithValue {.
    constructor, importcpp: "StepDimTol_DatumReferenceModifierWithValue(@)",
    header: "StepDimTol_DatumReferenceModifierWithValue.hxx".}
proc Init*(this: var StepDimTol_DatumReferenceModifierWithValue;
          theModifierType: StepDimTol_DatumReferenceModifierType;
          theModifierValue: handle[StepBasic_LengthMeasureWithUnit]) {.
    importcpp: "Init", header: "StepDimTol_DatumReferenceModifierWithValue.hxx".}
proc ModifierType*(this: StepDimTol_DatumReferenceModifierWithValue): StepDimTol_DatumReferenceModifierType {.
    noSideEffect, importcpp: "ModifierType",
    header: "StepDimTol_DatumReferenceModifierWithValue.hxx".}
proc SetModifierType*(this: var StepDimTol_DatumReferenceModifierWithValue;
                     theModifierType: StepDimTol_DatumReferenceModifierType) {.
    importcpp: "SetModifierType",
    header: "StepDimTol_DatumReferenceModifierWithValue.hxx".}
proc ModifierValue*(this: var StepDimTol_DatumReferenceModifierWithValue): handle[
    StepBasic_LengthMeasureWithUnit] {.importcpp: "ModifierValue", header: "StepDimTol_DatumReferenceModifierWithValue.hxx".}
proc SetModifierValue*(this: var StepDimTol_DatumReferenceModifierWithValue;
                      theModifierValue: handle[StepBasic_LengthMeasureWithUnit]) {.
    importcpp: "SetModifierValue",
    header: "StepDimTol_DatumReferenceModifierWithValue.hxx".}
type
  StepDimTol_DatumReferenceModifierWithValuebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepDimTol_DatumReferenceModifierWithValue::get_type_name(@)", header: "StepDimTol_DatumReferenceModifierWithValue.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepDimTol_DatumReferenceModifierWithValue::get_type_descriptor(@)",
    header: "StepDimTol_DatumReferenceModifierWithValue.hxx".}
proc DynamicType*(this: StepDimTol_DatumReferenceModifierWithValue): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepDimTol_DatumReferenceModifierWithValue.hxx".}