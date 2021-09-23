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

import
  StepRepr_RepresentationItem, StepRepr_Array1OfRepresentationItem,
  ../NCollection/NCollection_DefineHArray1

type
  StepRepr_HArray1OfRepresentationItem* {.
      importcpp: "StepRepr_HArray1OfRepresentationItem",
      header: "StepRepr_HArray1OfRepresentationItem.hxx", bycopy.} = object of StepRepr_Array1OfRepresentationItem


proc constructStepRepr_HArray1OfRepresentationItem*(theLower: Standard_Integer;
    theUpper: Standard_Integer): StepRepr_HArray1OfRepresentationItem {.
    constructor, importcpp: "StepRepr_HArray1OfRepresentationItem(@)",
    header: "StepRepr_HArray1OfRepresentationItem.hxx".}
proc constructStepRepr_HArray1OfRepresentationItem*(theLower: Standard_Integer;
    theUpper: Standard_Integer; theValue: value_type): StepRepr_HArray1OfRepresentationItem {.
    constructor, importcpp: "StepRepr_HArray1OfRepresentationItem(@)",
    header: "StepRepr_HArray1OfRepresentationItem.hxx".}
proc constructStepRepr_HArray1OfRepresentationItem*(
    theOther: StepRepr_Array1OfRepresentationItem): StepRepr_HArray1OfRepresentationItem {.
    constructor, importcpp: "StepRepr_HArray1OfRepresentationItem(@)",
    header: "StepRepr_HArray1OfRepresentationItem.hxx".}
proc Array1*(this: StepRepr_HArray1OfRepresentationItem): StepRepr_Array1OfRepresentationItem {.
    noSideEffect, importcpp: "Array1",
    header: "StepRepr_HArray1OfRepresentationItem.hxx".}
proc ChangeArray1*(this: var StepRepr_HArray1OfRepresentationItem): var StepRepr_Array1OfRepresentationItem {.
    importcpp: "ChangeArray1", header: "StepRepr_HArray1OfRepresentationItem.hxx".}
type
  StepRepr_HArray1OfRepresentationItembase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "StepRepr_HArray1OfRepresentationItem::get_type_name(@)", header: "StepRepr_HArray1OfRepresentationItem.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepRepr_HArray1OfRepresentationItem::get_type_descriptor(@)",
    header: "StepRepr_HArray1OfRepresentationItem.hxx".}
proc DynamicType*(this: StepRepr_HArray1OfRepresentationItem): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_HArray1OfRepresentationItem.hxx".}