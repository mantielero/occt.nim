##  Created on: 2015-07-16
##  Created by: Irina KRYLOVA
##  Copyright (c) 2015 OPEN CASCADE SAS
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
  StepDimTol_DatumReferenceCompartment,
  StepDimTol_Array1OfDatumReferenceCompartment,
  ../NCollection/NCollection_DefineHArray1

type
  StepDimTol_HArray1OfDatumReferenceCompartment* {.
      importcpp: "StepDimTol_HArray1OfDatumReferenceCompartment",
      header: "StepDimTol_HArray1OfDatumReferenceCompartment.hxx", bycopy.} = object of StepDimTol_Array1OfDatumReferenceCompartment


proc constructStepDimTol_HArray1OfDatumReferenceCompartment*(
    theLower: Standard_Integer; theUpper: Standard_Integer): StepDimTol_HArray1OfDatumReferenceCompartment {.
    constructor, importcpp: "StepDimTol_HArray1OfDatumReferenceCompartment(@)",
    header: "StepDimTol_HArray1OfDatumReferenceCompartment.hxx".}
proc constructStepDimTol_HArray1OfDatumReferenceCompartment*(
    theLower: Standard_Integer; theUpper: Standard_Integer; theValue: value_type): StepDimTol_HArray1OfDatumReferenceCompartment {.
    constructor, importcpp: "StepDimTol_HArray1OfDatumReferenceCompartment(@)",
    header: "StepDimTol_HArray1OfDatumReferenceCompartment.hxx".}
proc constructStepDimTol_HArray1OfDatumReferenceCompartment*(
    theOther: StepDimTol_Array1OfDatumReferenceCompartment): StepDimTol_HArray1OfDatumReferenceCompartment {.
    constructor, importcpp: "StepDimTol_HArray1OfDatumReferenceCompartment(@)",
    header: "StepDimTol_HArray1OfDatumReferenceCompartment.hxx".}
proc Array1*(this: StepDimTol_HArray1OfDatumReferenceCompartment): StepDimTol_Array1OfDatumReferenceCompartment {.
    noSideEffect, importcpp: "Array1",
    header: "StepDimTol_HArray1OfDatumReferenceCompartment.hxx".}
proc ChangeArray1*(this: var StepDimTol_HArray1OfDatumReferenceCompartment): var StepDimTol_Array1OfDatumReferenceCompartment {.
    importcpp: "ChangeArray1",
    header: "StepDimTol_HArray1OfDatumReferenceCompartment.hxx".}
type
  StepDimTol_HArray1OfDatumReferenceCompartmentbase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "StepDimTol_HArray1OfDatumReferenceCompartment::get_type_name(@)", header: "StepDimTol_HArray1OfDatumReferenceCompartment.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepDimTol_HArray1OfDatumReferenceCompartment::get_type_descriptor(@)",
    header: "StepDimTol_HArray1OfDatumReferenceCompartment.hxx".}
proc DynamicType*(this: StepDimTol_HArray1OfDatumReferenceCompartment): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepDimTol_HArray1OfDatumReferenceCompartment.hxx".}