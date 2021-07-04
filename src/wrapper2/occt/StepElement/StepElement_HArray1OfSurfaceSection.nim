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
  StepElement_SurfaceSection, StepElement_Array1OfSurfaceSection,
  ../NCollection/NCollection_DefineHArray1

type
  StepElement_HArray1OfSurfaceSection* {.importcpp: "StepElement_HArray1OfSurfaceSection", header: "StepElement_HArray1OfSurfaceSection.hxx",
                                        bycopy.} = object of StepElement_Array1OfSurfaceSection


proc constructStepElement_HArray1OfSurfaceSection*(theLower: Standard_Integer;
    theUpper: Standard_Integer): StepElement_HArray1OfSurfaceSection {.constructor,
    importcpp: "StepElement_HArray1OfSurfaceSection(@)",
    header: "StepElement_HArray1OfSurfaceSection.hxx".}
proc constructStepElement_HArray1OfSurfaceSection*(theLower: Standard_Integer;
    theUpper: Standard_Integer; theValue: value_type): StepElement_HArray1OfSurfaceSection {.
    constructor, importcpp: "StepElement_HArray1OfSurfaceSection(@)",
    header: "StepElement_HArray1OfSurfaceSection.hxx".}
proc constructStepElement_HArray1OfSurfaceSection*(
    theOther: StepElement_Array1OfSurfaceSection): StepElement_HArray1OfSurfaceSection {.
    constructor, importcpp: "StepElement_HArray1OfSurfaceSection(@)",
    header: "StepElement_HArray1OfSurfaceSection.hxx".}
proc Array1*(this: StepElement_HArray1OfSurfaceSection): StepElement_Array1OfSurfaceSection {.
    noSideEffect, importcpp: "Array1",
    header: "StepElement_HArray1OfSurfaceSection.hxx".}
proc ChangeArray1*(this: var StepElement_HArray1OfSurfaceSection): var StepElement_Array1OfSurfaceSection {.
    importcpp: "ChangeArray1", header: "StepElement_HArray1OfSurfaceSection.hxx".}
type
  StepElement_HArray1OfSurfaceSectionbase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "StepElement_HArray1OfSurfaceSection::get_type_name(@)",
                              header: "StepElement_HArray1OfSurfaceSection.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepElement_HArray1OfSurfaceSection::get_type_descriptor(@)",
    header: "StepElement_HArray1OfSurfaceSection.hxx".}
proc DynamicType*(this: StepElement_HArray1OfSurfaceSection): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepElement_HArray1OfSurfaceSection.hxx".}