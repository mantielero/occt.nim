##  Created on: 2003-06-02
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 2003-2014 OPEN CASCADE SAS
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
  StepDimTol_DatumReference, StepDimTol_Array1OfDatumReference,
  ../NCollection/NCollection_DefineHArray1

type
  StepDimTol_HArray1OfDatumReference* {.importcpp: "StepDimTol_HArray1OfDatumReference", header: "StepDimTol_HArray1OfDatumReference.hxx",
                                       bycopy.} = object of StepDimTol_Array1OfDatumReference


proc constructStepDimTol_HArray1OfDatumReference*(theLower: Standard_Integer;
    theUpper: Standard_Integer): StepDimTol_HArray1OfDatumReference {.constructor,
    importcpp: "StepDimTol_HArray1OfDatumReference(@)",
    header: "StepDimTol_HArray1OfDatumReference.hxx".}
proc constructStepDimTol_HArray1OfDatumReference*(theLower: Standard_Integer;
    theUpper: Standard_Integer; theValue: value_type): StepDimTol_HArray1OfDatumReference {.
    constructor, importcpp: "StepDimTol_HArray1OfDatumReference(@)",
    header: "StepDimTol_HArray1OfDatumReference.hxx".}
proc constructStepDimTol_HArray1OfDatumReference*(
    theOther: StepDimTol_Array1OfDatumReference): StepDimTol_HArray1OfDatumReference {.
    constructor, importcpp: "StepDimTol_HArray1OfDatumReference(@)",
    header: "StepDimTol_HArray1OfDatumReference.hxx".}
proc Array1*(this: StepDimTol_HArray1OfDatumReference): StepDimTol_Array1OfDatumReference {.
    noSideEffect, importcpp: "Array1",
    header: "StepDimTol_HArray1OfDatumReference.hxx".}
proc ChangeArray1*(this: var StepDimTol_HArray1OfDatumReference): var StepDimTol_Array1OfDatumReference {.
    importcpp: "ChangeArray1", header: "StepDimTol_HArray1OfDatumReference.hxx".}
type
  StepDimTol_HArray1OfDatumReferencebase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "StepDimTol_HArray1OfDatumReference::get_type_name(@)",
                              header: "StepDimTol_HArray1OfDatumReference.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepDimTol_HArray1OfDatumReference::get_type_descriptor(@)",
    header: "StepDimTol_HArray1OfDatumReference.hxx".}
proc DynamicType*(this: StepDimTol_HArray1OfDatumReference): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepDimTol_HArray1OfDatumReference.hxx".}