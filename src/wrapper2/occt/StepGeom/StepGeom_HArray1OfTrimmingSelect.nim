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
  StepGeom_TrimmingSelect, StepGeom_Array1OfTrimmingSelect,
  ../NCollection/NCollection_DefineHArray1

type
  StepGeom_HArray1OfTrimmingSelect* {.importcpp: "StepGeom_HArray1OfTrimmingSelect", header: "StepGeom_HArray1OfTrimmingSelect.hxx",
                                     bycopy.} = object of StepGeom_Array1OfTrimmingSelect


proc constructStepGeom_HArray1OfTrimmingSelect*(theLower: Standard_Integer;
    theUpper: Standard_Integer): StepGeom_HArray1OfTrimmingSelect {.constructor,
    importcpp: "StepGeom_HArray1OfTrimmingSelect(@)",
    header: "StepGeom_HArray1OfTrimmingSelect.hxx".}
proc constructStepGeom_HArray1OfTrimmingSelect*(theLower: Standard_Integer;
    theUpper: Standard_Integer; theValue: value_type): StepGeom_HArray1OfTrimmingSelect {.
    constructor, importcpp: "StepGeom_HArray1OfTrimmingSelect(@)",
    header: "StepGeom_HArray1OfTrimmingSelect.hxx".}
proc constructStepGeom_HArray1OfTrimmingSelect*(
    theOther: StepGeom_Array1OfTrimmingSelect): StepGeom_HArray1OfTrimmingSelect {.
    constructor, importcpp: "StepGeom_HArray1OfTrimmingSelect(@)",
    header: "StepGeom_HArray1OfTrimmingSelect.hxx".}
proc Array1*(this: StepGeom_HArray1OfTrimmingSelect): StepGeom_Array1OfTrimmingSelect {.
    noSideEffect, importcpp: "Array1",
    header: "StepGeom_HArray1OfTrimmingSelect.hxx".}
proc ChangeArray1*(this: var StepGeom_HArray1OfTrimmingSelect): var StepGeom_Array1OfTrimmingSelect {.
    importcpp: "ChangeArray1", header: "StepGeom_HArray1OfTrimmingSelect.hxx".}
type
  StepGeom_HArray1OfTrimmingSelectbase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "StepGeom_HArray1OfTrimmingSelect::get_type_name(@)",
                              header: "StepGeom_HArray1OfTrimmingSelect.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_HArray1OfTrimmingSelect::get_type_descriptor(@)",
    header: "StepGeom_HArray1OfTrimmingSelect.hxx".}
proc DynamicType*(this: StepGeom_HArray1OfTrimmingSelect): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepGeom_HArray1OfTrimmingSelect.hxx".}