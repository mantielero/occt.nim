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

import
  ../Standard/Standard, ../Standard/Standard_Type, StepRepr_RepresentationItem

discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_MeasureValueMember"
discard "forward decl of StepBasic_Unit"
discard "forward decl of StepRepr_MeasureRepresentationItem"
discard "forward decl of StepRepr_MeasureRepresentationItem"
type
  Handle_StepRepr_MeasureRepresentationItem* = handle[
      StepRepr_MeasureRepresentationItem]

## ! Implements a measure_representation_item entity
## ! which is used for storing validation properties
## ! (e.g. area) for shapes

type
  StepRepr_MeasureRepresentationItem* {.importcpp: "StepRepr_MeasureRepresentationItem", header: "StepRepr_MeasureRepresentationItem.hxx",
                                       bycopy.} = object of StepRepr_RepresentationItem ##
                                                                                   ## !
                                                                                   ## Creates
                                                                                   ## empty
                                                                                   ## object


proc constructStepRepr_MeasureRepresentationItem*(): StepRepr_MeasureRepresentationItem {.
    constructor, importcpp: "StepRepr_MeasureRepresentationItem(@)",
    header: "StepRepr_MeasureRepresentationItem.hxx".}
proc Init*(this: var StepRepr_MeasureRepresentationItem;
          aName: handle[TCollection_HAsciiString];
          aValueComponent: handle[StepBasic_MeasureValueMember];
          aUnitComponent: StepBasic_Unit) {.importcpp: "Init",
    header: "StepRepr_MeasureRepresentationItem.hxx".}
proc SetMeasure*(this: var StepRepr_MeasureRepresentationItem;
                Measure: handle[StepBasic_MeasureWithUnit]) {.
    importcpp: "SetMeasure", header: "StepRepr_MeasureRepresentationItem.hxx".}
proc Measure*(this: StepRepr_MeasureRepresentationItem): handle[
    StepBasic_MeasureWithUnit] {.noSideEffect, importcpp: "Measure", header: "StepRepr_MeasureRepresentationItem.hxx".}
type
  StepRepr_MeasureRepresentationItembase_type* = StepRepr_RepresentationItem

proc get_type_name*(): cstring {.importcpp: "StepRepr_MeasureRepresentationItem::get_type_name(@)",
                              header: "StepRepr_MeasureRepresentationItem.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepRepr_MeasureRepresentationItem::get_type_descriptor(@)",
    header: "StepRepr_MeasureRepresentationItem.hxx".}
proc DynamicType*(this: StepRepr_MeasureRepresentationItem): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_MeasureRepresentationItem.hxx".}