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

discard "forward decl of Standard_Transient"
type
  StepDimTolDatumReferenceModifier* {.importcpp: "StepDimTol_DatumReferenceModifier", header: "StepDimTol_DatumReferenceModifier.hxx",
                                     bycopy.} = object of StepDataSelectType ## ! Returns a
                                                                        ## DatumReferenceModifier select type


proc constructStepDimTolDatumReferenceModifier*(): StepDimTolDatumReferenceModifier {.
    constructor, importcpp: "StepDimTol_DatumReferenceModifier(@)",
    header: "StepDimTol_DatumReferenceModifier.hxx".}
proc caseNum*(this: StepDimTolDatumReferenceModifier;
             ent: Handle[StandardTransient]): int {.noSideEffect,
    importcpp: "CaseNum", header: "StepDimTol_DatumReferenceModifier.hxx".}
proc datumReferenceModifierWithValue*(this: StepDimTolDatumReferenceModifier): Handle[
    StepDimTolDatumReferenceModifierWithValue] {.noSideEffect,
    importcpp: "DatumReferenceModifierWithValue",
    header: "StepDimTol_DatumReferenceModifier.hxx".}
proc simpleDatumReferenceModifierMember*(this: StepDimTolDatumReferenceModifier): Handle[
    StepDimTolSimpleDatumReferenceModifierMember] {.noSideEffect,
    importcpp: "SimpleDatumReferenceModifierMember",
    header: "StepDimTol_DatumReferenceModifier.hxx".}
