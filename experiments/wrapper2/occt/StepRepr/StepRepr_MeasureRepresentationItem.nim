##  Created on: 1999-09-08
##  Created by: Andrey BETENEV
##  Copyright (c) 1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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
discard "forward decl of StepRepr_MeasureRepresentationItem"
discard "forward decl of StepRepr_MeasureRepresentationItem"
type
  HandleStepReprMeasureRepresentationItem* = Handle[
      StepReprMeasureRepresentationItem]

## ! Implements a measure_representation_item entity
## ! which is used for storing validation properties
## ! (e.g. area) for shapes

type
  StepReprMeasureRepresentationItem* {.importcpp: "StepRepr_MeasureRepresentationItem", header: "StepRepr_MeasureRepresentationItem.hxx",
                                      bycopy.} = object of StepReprRepresentationItem ##
                                                                                 ## !
                                                                                 ## Creates
                                                                                 ## empty
                                                                                 ## object


proc constructStepReprMeasureRepresentationItem*(): StepReprMeasureRepresentationItem {.
    constructor, importcpp: "StepRepr_MeasureRepresentationItem(@)",
    header: "StepRepr_MeasureRepresentationItem.hxx".}
proc init*(this: var StepReprMeasureRepresentationItem;
          aName: Handle[TCollectionHAsciiString];
          aValueComponent: Handle[StepBasicMeasureValueMember];
          aUnitComponent: StepBasicUnit) {.importcpp: "Init",
    header: "StepRepr_MeasureRepresentationItem.hxx".}
proc setMeasure*(this: var StepReprMeasureRepresentationItem;
                measure: Handle[StepBasicMeasureWithUnit]) {.
    importcpp: "SetMeasure", header: "StepRepr_MeasureRepresentationItem.hxx".}
proc measure*(this: StepReprMeasureRepresentationItem): Handle[
    StepBasicMeasureWithUnit] {.noSideEffect, importcpp: "Measure",
                               header: "StepRepr_MeasureRepresentationItem.hxx".}
type
  StepReprMeasureRepresentationItembaseType* = StepReprRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepRepr_MeasureRepresentationItem::get_type_name(@)",
                            header: "StepRepr_MeasureRepresentationItem.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepRepr_MeasureRepresentationItem::get_type_descriptor(@)",
    header: "StepRepr_MeasureRepresentationItem.hxx".}
proc dynamicType*(this: StepReprMeasureRepresentationItem): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_MeasureRepresentationItem.hxx".}
