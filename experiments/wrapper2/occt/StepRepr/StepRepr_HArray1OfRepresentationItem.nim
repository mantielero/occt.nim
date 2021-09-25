##  Created on: 1995-12-01
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1995-1999 Matra Datavision
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

type
  StepReprHArray1OfRepresentationItem* {.importcpp: "StepRepr_HArray1OfRepresentationItem", header: "StepRepr_HArray1OfRepresentationItem.hxx",
                                        bycopy.} = object of StepReprArray1OfRepresentationItem


proc constructStepReprHArray1OfRepresentationItem*(theLower: int; theUpper: int): StepReprHArray1OfRepresentationItem {.
    constructor, importcpp: "StepRepr_HArray1OfRepresentationItem(@)",
    header: "StepRepr_HArray1OfRepresentationItem.hxx".}
proc constructStepReprHArray1OfRepresentationItem*(theLower: int; theUpper: int;
    theValue: ValueType): StepReprHArray1OfRepresentationItem {.constructor,
    importcpp: "StepRepr_HArray1OfRepresentationItem(@)",
    header: "StepRepr_HArray1OfRepresentationItem.hxx".}
proc constructStepReprHArray1OfRepresentationItem*(
    theOther: StepReprArray1OfRepresentationItem): StepReprHArray1OfRepresentationItem {.
    constructor, importcpp: "StepRepr_HArray1OfRepresentationItem(@)",
    header: "StepRepr_HArray1OfRepresentationItem.hxx".}
proc array1*(this: StepReprHArray1OfRepresentationItem): StepReprArray1OfRepresentationItem {.
    noSideEffect, importcpp: "Array1",
    header: "StepRepr_HArray1OfRepresentationItem.hxx".}
proc changeArray1*(this: var StepReprHArray1OfRepresentationItem): var StepReprArray1OfRepresentationItem {.
    importcpp: "ChangeArray1", header: "StepRepr_HArray1OfRepresentationItem.hxx".}
type
  StepReprHArray1OfRepresentationItembaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "StepRepr_HArray1OfRepresentationItem::get_type_name(@)",
                            header: "StepRepr_HArray1OfRepresentationItem.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepRepr_HArray1OfRepresentationItem::get_type_descriptor(@)",
    header: "StepRepr_HArray1OfRepresentationItem.hxx".}
proc dynamicType*(this: StepReprHArray1OfRepresentationItem): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_HArray1OfRepresentationItem.hxx".}
