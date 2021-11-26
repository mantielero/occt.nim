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

discard "forward decl of StepDimTol_DatumReferenceModifierWithValue"
discard "forward decl of StepDimTol_DatumReferenceModifierWithValue"
type
  HandleC1C1* = Handle[StepDimTolDatumReferenceModifierWithValue]

## ! Representation of STEP entity DatumReferenceModifierWithValue

type
  StepDimTolDatumReferenceModifierWithValue* {.
      importcpp: "StepDimTol_DatumReferenceModifierWithValue",
      header: "StepDimTol_DatumReferenceModifierWithValue.hxx", bycopy.} = object of StandardTransient ##
                                                                                                ## !
                                                                                                ## Empty
                                                                                                ## constructor


proc constructStepDimTolDatumReferenceModifierWithValue*(): StepDimTolDatumReferenceModifierWithValue {.
    constructor, importcpp: "StepDimTol_DatumReferenceModifierWithValue(@)",
    header: "StepDimTol_DatumReferenceModifierWithValue.hxx".}
proc init*(this: var StepDimTolDatumReferenceModifierWithValue;
          theModifierType: StepDimTolDatumReferenceModifierType;
          theModifierValue: Handle[StepBasicLengthMeasureWithUnit]) {.
    importcpp: "Init", header: "StepDimTol_DatumReferenceModifierWithValue.hxx".}
proc modifierType*(this: StepDimTolDatumReferenceModifierWithValue): StepDimTolDatumReferenceModifierType {.
    noSideEffect, importcpp: "ModifierType",
    header: "StepDimTol_DatumReferenceModifierWithValue.hxx".}
proc setModifierType*(this: var StepDimTolDatumReferenceModifierWithValue;
                     theModifierType: StepDimTolDatumReferenceModifierType) {.
    importcpp: "SetModifierType",
    header: "StepDimTol_DatumReferenceModifierWithValue.hxx".}
proc modifierValue*(this: var StepDimTolDatumReferenceModifierWithValue): Handle[
    StepBasicLengthMeasureWithUnit] {.importcpp: "ModifierValue", header: "StepDimTol_DatumReferenceModifierWithValue.hxx".}
proc setModifierValue*(this: var StepDimTolDatumReferenceModifierWithValue;
                      theModifierValue: Handle[StepBasicLengthMeasureWithUnit]) {.
    importcpp: "SetModifierValue",
    header: "StepDimTol_DatumReferenceModifierWithValue.hxx".}
type
  StepDimTolDatumReferenceModifierWithValuebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepDimTol_DatumReferenceModifierWithValue::get_type_name(@)", header: "StepDimTol_DatumReferenceModifierWithValue.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepDimTol_DatumReferenceModifierWithValue::get_type_descriptor(@)",
    header: "StepDimTol_DatumReferenceModifierWithValue.hxx".}
proc dynamicType*(this: StepDimTolDatumReferenceModifierWithValue): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepDimTol_DatumReferenceModifierWithValue.hxx".}