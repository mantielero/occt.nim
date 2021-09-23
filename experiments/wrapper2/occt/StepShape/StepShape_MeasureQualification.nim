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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  StepShape_HArray1OfValueQualifier, ../Standard/Standard_Transient,
  ../Standard/Standard_Integer

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of StepShape_ValueQualifier"
discard "forward decl of StepShape_MeasureQualification"
discard "forward decl of StepShape_MeasureQualification"
type
  Handle_StepShape_MeasureQualification* = handle[StepShape_MeasureQualification]

## ! Added for Dimensional Tolerances

type
  StepShape_MeasureQualification* {.importcpp: "StepShape_MeasureQualification", header: "StepShape_MeasureQualification.hxx",
                                   bycopy.} = object of Standard_Transient


proc constructStepShape_MeasureQualification*(): StepShape_MeasureQualification {.
    constructor, importcpp: "StepShape_MeasureQualification(@)",
    header: "StepShape_MeasureQualification.hxx".}
proc Init*(this: var StepShape_MeasureQualification;
          name: handle[TCollection_HAsciiString];
          description: handle[TCollection_HAsciiString];
          qualified_measure: handle[StepBasic_MeasureWithUnit];
          qualifiers: handle[StepShape_HArray1OfValueQualifier]) {.
    importcpp: "Init", header: "StepShape_MeasureQualification.hxx".}
proc Name*(this: StepShape_MeasureQualification): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepShape_MeasureQualification.hxx".}
proc SetName*(this: var StepShape_MeasureQualification;
             name: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "StepShape_MeasureQualification.hxx".}
proc Description*(this: StepShape_MeasureQualification): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Description",
                               header: "StepShape_MeasureQualification.hxx".}
proc SetDescription*(this: var StepShape_MeasureQualification;
                    description: handle[TCollection_HAsciiString]) {.
    importcpp: "SetDescription", header: "StepShape_MeasureQualification.hxx".}
proc QualifiedMeasure*(this: StepShape_MeasureQualification): handle[
    StepBasic_MeasureWithUnit] {.noSideEffect, importcpp: "QualifiedMeasure",
                                header: "StepShape_MeasureQualification.hxx".}
proc SetQualifiedMeasure*(this: var StepShape_MeasureQualification;
                         qualified_measure: handle[StepBasic_MeasureWithUnit]) {.
    importcpp: "SetQualifiedMeasure", header: "StepShape_MeasureQualification.hxx".}
proc Qualifiers*(this: StepShape_MeasureQualification): handle[
    StepShape_HArray1OfValueQualifier] {.noSideEffect, importcpp: "Qualifiers", header: "StepShape_MeasureQualification.hxx".}
proc NbQualifiers*(this: StepShape_MeasureQualification): Standard_Integer {.
    noSideEffect, importcpp: "NbQualifiers",
    header: "StepShape_MeasureQualification.hxx".}
proc SetQualifiers*(this: var StepShape_MeasureQualification;
                   qualifiers: handle[StepShape_HArray1OfValueQualifier]) {.
    importcpp: "SetQualifiers", header: "StepShape_MeasureQualification.hxx".}
proc QualifiersValue*(this: StepShape_MeasureQualification; num: Standard_Integer): StepShape_ValueQualifier {.
    noSideEffect, importcpp: "QualifiersValue",
    header: "StepShape_MeasureQualification.hxx".}
proc SetQualifiersValue*(this: var StepShape_MeasureQualification;
                        num: Standard_Integer;
                        aqualifier: StepShape_ValueQualifier) {.
    importcpp: "SetQualifiersValue", header: "StepShape_MeasureQualification.hxx".}
type
  StepShape_MeasureQualificationbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepShape_MeasureQualification::get_type_name(@)",
                              header: "StepShape_MeasureQualification.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_MeasureQualification::get_type_descriptor(@)",
    header: "StepShape_MeasureQualification.hxx".}
proc DynamicType*(this: StepShape_MeasureQualification): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_MeasureQualification.hxx".}