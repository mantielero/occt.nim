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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_RepresentationItem"
discard "forward decl of StepRepr_ItemDefinedTransformation"
discard "forward decl of StepRepr_ItemDefinedTransformation"
type
  HandleStepReprItemDefinedTransformation* = Handle[
      StepReprItemDefinedTransformation]

## ! Added from StepRepr Rev2 to Rev4

type
  StepReprItemDefinedTransformation* {.importcpp: "StepRepr_ItemDefinedTransformation", header: "StepRepr_ItemDefinedTransformation.hxx",
                                      bycopy.} = object of StandardTransient


proc constructStepReprItemDefinedTransformation*(): StepReprItemDefinedTransformation {.
    constructor, importcpp: "StepRepr_ItemDefinedTransformation(@)",
    header: "StepRepr_ItemDefinedTransformation.hxx".}
proc init*(this: var StepReprItemDefinedTransformation;
          aName: Handle[TCollectionHAsciiString];
          aDescription: Handle[TCollectionHAsciiString];
          aTransformItem1: Handle[StepReprRepresentationItem];
          aTransformItem2: Handle[StepReprRepresentationItem]) {.
    importcpp: "Init", header: "StepRepr_ItemDefinedTransformation.hxx".}
proc setName*(this: var StepReprItemDefinedTransformation;
             aName: Handle[TCollectionHAsciiString]) {.importcpp: "SetName",
    header: "StepRepr_ItemDefinedTransformation.hxx".}
proc name*(this: StepReprItemDefinedTransformation): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Name",
    header: "StepRepr_ItemDefinedTransformation.hxx".}
proc setDescription*(this: var StepReprItemDefinedTransformation;
                    aDescription: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDescription", header: "StepRepr_ItemDefinedTransformation.hxx".}
proc description*(this: StepReprItemDefinedTransformation): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Description",
                              header: "StepRepr_ItemDefinedTransformation.hxx".}
proc setTransformItem1*(this: var StepReprItemDefinedTransformation;
                       aItem: Handle[StepReprRepresentationItem]) {.
    importcpp: "SetTransformItem1",
    header: "StepRepr_ItemDefinedTransformation.hxx".}
proc transformItem1*(this: StepReprItemDefinedTransformation): Handle[
    StepReprRepresentationItem] {.noSideEffect, importcpp: "TransformItem1", header: "StepRepr_ItemDefinedTransformation.hxx".}
proc setTransformItem2*(this: var StepReprItemDefinedTransformation;
                       aItem: Handle[StepReprRepresentationItem]) {.
    importcpp: "SetTransformItem2",
    header: "StepRepr_ItemDefinedTransformation.hxx".}
proc transformItem2*(this: StepReprItemDefinedTransformation): Handle[
    StepReprRepresentationItem] {.noSideEffect, importcpp: "TransformItem2", header: "StepRepr_ItemDefinedTransformation.hxx".}
type
  StepReprItemDefinedTransformationbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepRepr_ItemDefinedTransformation::get_type_name(@)",
                            header: "StepRepr_ItemDefinedTransformation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepRepr_ItemDefinedTransformation::get_type_descriptor(@)",
    header: "StepRepr_ItemDefinedTransformation.hxx".}
proc dynamicType*(this: StepReprItemDefinedTransformation): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_ItemDefinedTransformation.hxx".}
