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
  StepElement_VolumeElementPurposeMember,
  StepElement_Array1OfVolumeElementPurposeMember,
  ../NCollection/NCollection_DefineHArray1

type
  StepElement_HArray1OfVolumeElementPurposeMember* {.
      importcpp: "StepElement_HArray1OfVolumeElementPurposeMember",
      header: "StepElement_HArray1OfVolumeElementPurposeMember.hxx", bycopy.} = object of StepElement_Array1OfVolumeElementPurposeMember


proc constructStepElement_HArray1OfVolumeElementPurposeMember*(
    theLower: Standard_Integer; theUpper: Standard_Integer): StepElement_HArray1OfVolumeElementPurposeMember {.
    constructor, importcpp: "StepElement_HArray1OfVolumeElementPurposeMember(@)",
    header: "StepElement_HArray1OfVolumeElementPurposeMember.hxx".}
proc constructStepElement_HArray1OfVolumeElementPurposeMember*(
    theLower: Standard_Integer; theUpper: Standard_Integer; theValue: value_type): StepElement_HArray1OfVolumeElementPurposeMember {.
    constructor, importcpp: "StepElement_HArray1OfVolumeElementPurposeMember(@)",
    header: "StepElement_HArray1OfVolumeElementPurposeMember.hxx".}
proc constructStepElement_HArray1OfVolumeElementPurposeMember*(
    theOther: StepElement_Array1OfVolumeElementPurposeMember): StepElement_HArray1OfVolumeElementPurposeMember {.
    constructor, importcpp: "StepElement_HArray1OfVolumeElementPurposeMember(@)",
    header: "StepElement_HArray1OfVolumeElementPurposeMember.hxx".}
proc Array1*(this: StepElement_HArray1OfVolumeElementPurposeMember): StepElement_Array1OfVolumeElementPurposeMember {.
    noSideEffect, importcpp: "Array1",
    header: "StepElement_HArray1OfVolumeElementPurposeMember.hxx".}
proc ChangeArray1*(this: var StepElement_HArray1OfVolumeElementPurposeMember): var StepElement_Array1OfVolumeElementPurposeMember {.
    importcpp: "ChangeArray1",
    header: "StepElement_HArray1OfVolumeElementPurposeMember.hxx".}
type
  StepElement_HArray1OfVolumeElementPurposeMemberbase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "StepElement_HArray1OfVolumeElementPurposeMember::get_type_name(@)", header: "StepElement_HArray1OfVolumeElementPurposeMember.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepElement_HArray1OfVolumeElementPurposeMember::get_type_descriptor(@)",
    header: "StepElement_HArray1OfVolumeElementPurposeMember.hxx".}
proc DynamicType*(this: StepElement_HArray1OfVolumeElementPurposeMember): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepElement_HArray1OfVolumeElementPurposeMember.hxx".}