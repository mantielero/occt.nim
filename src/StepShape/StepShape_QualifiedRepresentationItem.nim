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
discard "forward decl of StepShape_ValueQualifier"
discard "forward decl of StepShape_QualifiedRepresentationItem"
discard "forward decl of StepShape_QualifiedRepresentationItem"
type
  HandleC1C1* = Handle[StepShapeQualifiedRepresentationItem]

## ! Added for Dimensional Tolerances

type
  StepShapeQualifiedRepresentationItem* {.
      importcpp: "StepShape_QualifiedRepresentationItem",
      header: "StepShape_QualifiedRepresentationItem.hxx", bycopy.} = object of StepReprRepresentationItem


proc constructStepShapeQualifiedRepresentationItem*(): StepShapeQualifiedRepresentationItem {.
    constructor, importcpp: "StepShape_QualifiedRepresentationItem(@)",
    header: "StepShape_QualifiedRepresentationItem.hxx".}
proc init*(this: var StepShapeQualifiedRepresentationItem;
          aName: Handle[TCollectionHAsciiString];
          qualifiers: Handle[StepShapeHArray1OfValueQualifier]) {.
    importcpp: "Init", header: "StepShape_QualifiedRepresentationItem.hxx".}
proc qualifiers*(this: StepShapeQualifiedRepresentationItem): Handle[
    StepShapeHArray1OfValueQualifier] {.noSideEffect, importcpp: "Qualifiers", header: "StepShape_QualifiedRepresentationItem.hxx".}
proc nbQualifiers*(this: StepShapeQualifiedRepresentationItem): cint {.noSideEffect,
    importcpp: "NbQualifiers", header: "StepShape_QualifiedRepresentationItem.hxx".}
proc setQualifiers*(this: var StepShapeQualifiedRepresentationItem;
                   qualifiers: Handle[StepShapeHArray1OfValueQualifier]) {.
    importcpp: "SetQualifiers",
    header: "StepShape_QualifiedRepresentationItem.hxx".}
proc qualifiersValue*(this: StepShapeQualifiedRepresentationItem; num: cint): StepShapeValueQualifier {.
    noSideEffect, importcpp: "QualifiersValue",
    header: "StepShape_QualifiedRepresentationItem.hxx".}
proc setQualifiersValue*(this: var StepShapeQualifiedRepresentationItem; num: cint;
                        aqualifier: StepShapeValueQualifier) {.
    importcpp: "SetQualifiersValue",
    header: "StepShape_QualifiedRepresentationItem.hxx".}
type
  StepShapeQualifiedRepresentationItembaseType* = StepReprRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepShape_QualifiedRepresentationItem::get_type_name(@)",
                            header: "StepShape_QualifiedRepresentationItem.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_QualifiedRepresentationItem::get_type_descriptor(@)",
    header: "StepShape_QualifiedRepresentationItem.hxx".}
proc dynamicType*(this: StepShapeQualifiedRepresentationItem): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_QualifiedRepresentationItem.hxx".}

























