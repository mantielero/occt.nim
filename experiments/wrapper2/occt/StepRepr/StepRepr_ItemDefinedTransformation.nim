##  Created on: 1997-03-26
##  Created by: Christian CAILLET
##  Copyright (c) 1997-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_RepresentationItem"
discard "forward decl of StepRepr_ItemDefinedTransformation"
discard "forward decl of StepRepr_ItemDefinedTransformation"
type
  Handle_StepRepr_ItemDefinedTransformation* = handle[
      StepRepr_ItemDefinedTransformation]

## ! Added from StepRepr Rev2 to Rev4

type
  StepRepr_ItemDefinedTransformation* {.importcpp: "StepRepr_ItemDefinedTransformation", header: "StepRepr_ItemDefinedTransformation.hxx",
                                       bycopy.} = object of Standard_Transient


proc constructStepRepr_ItemDefinedTransformation*(): StepRepr_ItemDefinedTransformation {.
    constructor, importcpp: "StepRepr_ItemDefinedTransformation(@)",
    header: "StepRepr_ItemDefinedTransformation.hxx".}
proc Init*(this: var StepRepr_ItemDefinedTransformation;
          aName: handle[TCollection_HAsciiString];
          aDescription: handle[TCollection_HAsciiString];
          aTransformItem1: handle[StepRepr_RepresentationItem];
          aTransformItem2: handle[StepRepr_RepresentationItem]) {.
    importcpp: "Init", header: "StepRepr_ItemDefinedTransformation.hxx".}
proc SetName*(this: var StepRepr_ItemDefinedTransformation;
             aName: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "StepRepr_ItemDefinedTransformation.hxx".}
proc Name*(this: StepRepr_ItemDefinedTransformation): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Name",
                               header: "StepRepr_ItemDefinedTransformation.hxx".}
proc SetDescription*(this: var StepRepr_ItemDefinedTransformation;
                    aDescription: handle[TCollection_HAsciiString]) {.
    importcpp: "SetDescription", header: "StepRepr_ItemDefinedTransformation.hxx".}
proc Description*(this: StepRepr_ItemDefinedTransformation): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Description",
                               header: "StepRepr_ItemDefinedTransformation.hxx".}
proc SetTransformItem1*(this: var StepRepr_ItemDefinedTransformation;
                       aItem: handle[StepRepr_RepresentationItem]) {.
    importcpp: "SetTransformItem1",
    header: "StepRepr_ItemDefinedTransformation.hxx".}
proc TransformItem1*(this: StepRepr_ItemDefinedTransformation): handle[
    StepRepr_RepresentationItem] {.noSideEffect, importcpp: "TransformItem1", header: "StepRepr_ItemDefinedTransformation.hxx".}
proc SetTransformItem2*(this: var StepRepr_ItemDefinedTransformation;
                       aItem: handle[StepRepr_RepresentationItem]) {.
    importcpp: "SetTransformItem2",
    header: "StepRepr_ItemDefinedTransformation.hxx".}
proc TransformItem2*(this: StepRepr_ItemDefinedTransformation): handle[
    StepRepr_RepresentationItem] {.noSideEffect, importcpp: "TransformItem2", header: "StepRepr_ItemDefinedTransformation.hxx".}
type
  StepRepr_ItemDefinedTransformationbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepRepr_ItemDefinedTransformation::get_type_name(@)",
                              header: "StepRepr_ItemDefinedTransformation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepRepr_ItemDefinedTransformation::get_type_descriptor(@)",
    header: "StepRepr_ItemDefinedTransformation.hxx".}
proc DynamicType*(this: StepRepr_ItemDefinedTransformation): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_ItemDefinedTransformation.hxx".}