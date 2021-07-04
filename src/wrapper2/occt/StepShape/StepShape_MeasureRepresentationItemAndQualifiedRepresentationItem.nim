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
  StepShape_HArray1OfValueQualifier, ../StepRepr/StepRepr_RepresentationItem,
  ../Standard/Standard_Integer

discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_MeasureValueMember"
discard "forward decl of StepBasic_Unit"
discard "forward decl of StepShape_ValueQualifier"
discard "forward decl of StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem"
discard "forward decl of StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem"
type
  Handle_StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem* = handle[
      StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem]

## ! Added for Dimensional Tolerances
## ! Complex Type between MeasureRepresentationItem and
## ! QualifiedRepresentationItem

type
  StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem* {.importcpp: "StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem", header: "StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem.hxx",
      bycopy.} = object of StepRepr_RepresentationItem


proc constructStepShape_MeasureRepresentationItemAndQualifiedRepresentationItem*(): StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem {.
    constructor, importcpp: "StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem(@)", header: "StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem.hxx".}
proc Init*(this: var StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem;
          aName: handle[TCollection_HAsciiString];
          aValueComponent: handle[StepBasic_MeasureValueMember];
          aUnitComponent: StepBasic_Unit;
          qualifiers: handle[StepShape_HArray1OfValueQualifier]) {.
    importcpp: "Init", header: "StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem.hxx".}
proc SetMeasure*(this: var StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem;
                Measure: handle[StepBasic_MeasureWithUnit]) {.
    importcpp: "SetMeasure", header: "StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem.hxx".}
proc Measure*(this: StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem): handle[
    StepBasic_MeasureWithUnit] {.noSideEffect, importcpp: "Measure", header: "StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem.hxx".}
proc Qualifiers*(this: StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem): handle[
    StepShape_HArray1OfValueQualifier] {.noSideEffect, importcpp: "Qualifiers", header: "StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem.hxx".}
proc NbQualifiers*(this: StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem): Standard_Integer {.
    noSideEffect, importcpp: "NbQualifiers", header: "StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem.hxx".}
proc SetQualifiers*(this: var StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem;
                   qualifiers: handle[StepShape_HArray1OfValueQualifier]) {.
    importcpp: "SetQualifiers", header: "StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem.hxx".}
proc QualifiersValue*(this: StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem;
                     num: Standard_Integer): StepShape_ValueQualifier {.
    noSideEffect, importcpp: "QualifiersValue", header: "StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem.hxx".}
proc SetQualifiersValue*(this: var StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem;
                        num: Standard_Integer;
                        aqualifier: StepShape_ValueQualifier) {.
    importcpp: "SetQualifiersValue", header: "StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem.hxx".}
type
  StepShape_MeasureRepresentationItemAndQualifiedRepresentationItembase_type* = StepRepr_RepresentationItem

proc get_type_name*(): cstring {.importcpp: "StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem::get_type_name(@)", header: "StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem::get_type_descriptor(@)", header: "StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem.hxx".}
proc DynamicType*(this: StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem.hxx".}