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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of StepShape_ValueQualifier"
discard "forward decl of StepShape_MeasureQualification"
discard "forward decl of StepShape_MeasureQualification"
type
  HandleStepShapeMeasureQualification* = Handle[StepShapeMeasureQualification]

## ! Added for Dimensional Tolerances

type
  StepShapeMeasureQualification* {.importcpp: "StepShape_MeasureQualification",
                                  header: "StepShape_MeasureQualification.hxx",
                                  bycopy.} = object of StandardTransient


proc constructStepShapeMeasureQualification*(): StepShapeMeasureQualification {.
    constructor, importcpp: "StepShape_MeasureQualification(@)",
    header: "StepShape_MeasureQualification.hxx".}
proc init*(this: var StepShapeMeasureQualification;
          name: Handle[TCollectionHAsciiString];
          description: Handle[TCollectionHAsciiString];
          qualifiedMeasure: Handle[StepBasicMeasureWithUnit];
          qualifiers: Handle[StepShapeHArray1OfValueQualifier]) {.
    importcpp: "Init", header: "StepShape_MeasureQualification.hxx".}
proc name*(this: StepShapeMeasureQualification): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepShape_MeasureQualification.hxx".}
proc setName*(this: var StepShapeMeasureQualification;
             name: Handle[TCollectionHAsciiString]) {.importcpp: "SetName",
    header: "StepShape_MeasureQualification.hxx".}
proc description*(this: StepShapeMeasureQualification): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Description",
                              header: "StepShape_MeasureQualification.hxx".}
proc setDescription*(this: var StepShapeMeasureQualification;
                    description: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDescription", header: "StepShape_MeasureQualification.hxx".}
proc qualifiedMeasure*(this: StepShapeMeasureQualification): Handle[
    StepBasicMeasureWithUnit] {.noSideEffect, importcpp: "QualifiedMeasure",
                               header: "StepShape_MeasureQualification.hxx".}
proc setQualifiedMeasure*(this: var StepShapeMeasureQualification;
                         qualifiedMeasure: Handle[StepBasicMeasureWithUnit]) {.
    importcpp: "SetQualifiedMeasure", header: "StepShape_MeasureQualification.hxx".}
proc qualifiers*(this: StepShapeMeasureQualification): Handle[
    StepShapeHArray1OfValueQualifier] {.noSideEffect, importcpp: "Qualifiers", header: "StepShape_MeasureQualification.hxx".}
proc nbQualifiers*(this: StepShapeMeasureQualification): int {.noSideEffect,
    importcpp: "NbQualifiers", header: "StepShape_MeasureQualification.hxx".}
proc setQualifiers*(this: var StepShapeMeasureQualification;
                   qualifiers: Handle[StepShapeHArray1OfValueQualifier]) {.
    importcpp: "SetQualifiers", header: "StepShape_MeasureQualification.hxx".}
proc qualifiersValue*(this: StepShapeMeasureQualification; num: int): StepShapeValueQualifier {.
    noSideEffect, importcpp: "QualifiersValue",
    header: "StepShape_MeasureQualification.hxx".}
proc setQualifiersValue*(this: var StepShapeMeasureQualification; num: int;
                        aqualifier: StepShapeValueQualifier) {.
    importcpp: "SetQualifiersValue", header: "StepShape_MeasureQualification.hxx".}
type
  StepShapeMeasureQualificationbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepShape_MeasureQualification::get_type_name(@)",
                            header: "StepShape_MeasureQualification.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_MeasureQualification::get_type_descriptor(@)",
    header: "StepShape_MeasureQualification.hxx".}
proc dynamicType*(this: StepShapeMeasureQualification): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_MeasureQualification.hxx".}
