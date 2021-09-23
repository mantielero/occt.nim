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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../StepData/StepData_SelectType, StepDimTol_DatumReferenceModifierWithValue,
  StepDimTol_SimpleDatumReferenceModifierMember

discard "forward decl of Standard_Transient"
type
  StepDimTol_DatumReferenceModifier* {.importcpp: "StepDimTol_DatumReferenceModifier", header: "StepDimTol_DatumReferenceModifier.hxx",
                                      bycopy.} = object of StepData_SelectType ## !
                                                                          ## Returns a
                                                                          ## DatumReferenceModifier select type


proc constructStepDimTol_DatumReferenceModifier*(): StepDimTol_DatumReferenceModifier {.
    constructor, importcpp: "StepDimTol_DatumReferenceModifier(@)",
    header: "StepDimTol_DatumReferenceModifier.hxx".}
proc CaseNum*(this: StepDimTol_DatumReferenceModifier;
             ent: handle[Standard_Transient]): Standard_Integer {.noSideEffect,
    importcpp: "CaseNum", header: "StepDimTol_DatumReferenceModifier.hxx".}
proc DatumReferenceModifierWithValue*(this: StepDimTol_DatumReferenceModifier): handle[
    StepDimTol_DatumReferenceModifierWithValue] {.noSideEffect,
    importcpp: "DatumReferenceModifierWithValue",
    header: "StepDimTol_DatumReferenceModifier.hxx".}
proc SimpleDatumReferenceModifierMember*(this: StepDimTol_DatumReferenceModifier): handle[
    StepDimTol_SimpleDatumReferenceModifierMember] {.noSideEffect,
    importcpp: "SimpleDatumReferenceModifierMember",
    header: "StepDimTol_DatumReferenceModifier.hxx".}