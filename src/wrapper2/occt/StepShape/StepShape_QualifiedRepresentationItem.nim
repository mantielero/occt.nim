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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_ValueQualifier"
discard "forward decl of StepShape_QualifiedRepresentationItem"
discard "forward decl of StepShape_QualifiedRepresentationItem"
type
  Handle_StepShape_QualifiedRepresentationItem* = handle[
      StepShape_QualifiedRepresentationItem]

## ! Added for Dimensional Tolerances

type
  StepShape_QualifiedRepresentationItem* {.
      importcpp: "StepShape_QualifiedRepresentationItem",
      header: "StepShape_QualifiedRepresentationItem.hxx", bycopy.} = object of StepRepr_RepresentationItem


proc constructStepShape_QualifiedRepresentationItem*(): StepShape_QualifiedRepresentationItem {.
    constructor, importcpp: "StepShape_QualifiedRepresentationItem(@)",
    header: "StepShape_QualifiedRepresentationItem.hxx".}
proc Init*(this: var StepShape_QualifiedRepresentationItem;
          aName: handle[TCollection_HAsciiString];
          qualifiers: handle[StepShape_HArray1OfValueQualifier]) {.
    importcpp: "Init", header: "StepShape_QualifiedRepresentationItem.hxx".}
proc Qualifiers*(this: StepShape_QualifiedRepresentationItem): handle[
    StepShape_HArray1OfValueQualifier] {.noSideEffect, importcpp: "Qualifiers", header: "StepShape_QualifiedRepresentationItem.hxx".}
proc NbQualifiers*(this: StepShape_QualifiedRepresentationItem): Standard_Integer {.
    noSideEffect, importcpp: "NbQualifiers",
    header: "StepShape_QualifiedRepresentationItem.hxx".}
proc SetQualifiers*(this: var StepShape_QualifiedRepresentationItem;
                   qualifiers: handle[StepShape_HArray1OfValueQualifier]) {.
    importcpp: "SetQualifiers",
    header: "StepShape_QualifiedRepresentationItem.hxx".}
proc QualifiersValue*(this: StepShape_QualifiedRepresentationItem;
                     num: Standard_Integer): StepShape_ValueQualifier {.
    noSideEffect, importcpp: "QualifiersValue",
    header: "StepShape_QualifiedRepresentationItem.hxx".}
proc SetQualifiersValue*(this: var StepShape_QualifiedRepresentationItem;
                        num: Standard_Integer;
                        aqualifier: StepShape_ValueQualifier) {.
    importcpp: "SetQualifiersValue",
    header: "StepShape_QualifiedRepresentationItem.hxx".}
type
  StepShape_QualifiedRepresentationItembase_type* = StepRepr_RepresentationItem

proc get_type_name*(): cstring {.importcpp: "StepShape_QualifiedRepresentationItem::get_type_name(@)", header: "StepShape_QualifiedRepresentationItem.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_QualifiedRepresentationItem::get_type_descriptor(@)",
    header: "StepShape_QualifiedRepresentationItem.hxx".}
proc DynamicType*(this: StepShape_QualifiedRepresentationItem): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepShape_QualifiedRepresentationItem.hxx".}