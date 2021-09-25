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

discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_MeasureValueMember"
discard "forward decl of StepBasic_Unit"
discard "forward decl of StepShape_ValueQualifier"
discard "forward decl of StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem"
discard "forward decl of StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem"
type
  HandleStepShapeMeasureRepresentationItemAndQualifiedRepresentationItem* = Handle[
      StepShapeMeasureRepresentationItemAndQualifiedRepresentationItem]

## ! Added for Dimensional Tolerances
## ! Complex Type between MeasureRepresentationItem and
## ! QualifiedRepresentationItem

type
  StepShapeMeasureRepresentationItemAndQualifiedRepresentationItem* {.importcpp: "StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem", header: "StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem.hxx",
      bycopy.} = object of StepReprRepresentationItem


proc constructStepShapeMeasureRepresentationItemAndQualifiedRepresentationItem*(): StepShapeMeasureRepresentationItemAndQualifiedRepresentationItem {.
    constructor, importcpp: "StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem(@)", header: "StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem.hxx".}
proc init*(this: var StepShapeMeasureRepresentationItemAndQualifiedRepresentationItem;
          aName: Handle[TCollectionHAsciiString];
          aValueComponent: Handle[StepBasicMeasureValueMember];
          aUnitComponent: StepBasicUnit;
          qualifiers: Handle[StepShapeHArray1OfValueQualifier]) {.
    importcpp: "Init", header: "StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem.hxx".}
proc setMeasure*(this: var StepShapeMeasureRepresentationItemAndQualifiedRepresentationItem;
                measure: Handle[StepBasicMeasureWithUnit]) {.
    importcpp: "SetMeasure", header: "StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem.hxx".}
proc measure*(this: StepShapeMeasureRepresentationItemAndQualifiedRepresentationItem): Handle[
    StepBasicMeasureWithUnit] {.noSideEffect, importcpp: "Measure", header: "StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem.hxx".}
proc qualifiers*(this: StepShapeMeasureRepresentationItemAndQualifiedRepresentationItem): Handle[
    StepShapeHArray1OfValueQualifier] {.noSideEffect, importcpp: "Qualifiers", header: "StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem.hxx".}
proc nbQualifiers*(this: StepShapeMeasureRepresentationItemAndQualifiedRepresentationItem): int {.
    noSideEffect, importcpp: "NbQualifiers", header: "StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem.hxx".}
proc setQualifiers*(this: var StepShapeMeasureRepresentationItemAndQualifiedRepresentationItem;
                   qualifiers: Handle[StepShapeHArray1OfValueQualifier]) {.
    importcpp: "SetQualifiers", header: "StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem.hxx".}
proc qualifiersValue*(this: StepShapeMeasureRepresentationItemAndQualifiedRepresentationItem;
                     num: int): StepShapeValueQualifier {.noSideEffect,
    importcpp: "QualifiersValue", header: "StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem.hxx".}
proc setQualifiersValue*(this: var StepShapeMeasureRepresentationItemAndQualifiedRepresentationItem;
                        num: int; aqualifier: StepShapeValueQualifier) {.
    importcpp: "SetQualifiersValue", header: "StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem.hxx".}
type
  StepShapeMeasureRepresentationItemAndQualifiedRepresentationItembaseType* = StepReprRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem::get_type_name(@)", header: "StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem::get_type_descriptor(@)", header: "StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem.hxx".}
proc dynamicType*(this: StepShapeMeasureRepresentationItemAndQualifiedRepresentationItem): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType", header: "StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem.hxx".}
