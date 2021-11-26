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

discard "forward decl of Standard_Transient"
discard "forward decl of StepRepr_ItemDefinedTransformation"
discard "forward decl of StepRepr_FunctionallyDefinedTransformation"
type
  StepReprTransformation* {.importcpp: "StepRepr_Transformation",
                           header: "StepRepr_Transformation.hxx", bycopy.} = object of StepDataSelectType


proc `new`*(this: var StepReprTransformation; theSize: csize_t): pointer {.
    importcpp: "StepRepr_Transformation::operator new",
    header: "StepRepr_Transformation.hxx".}
proc `delete`*(this: var StepReprTransformation; theAddress: pointer) {.
    importcpp: "StepRepr_Transformation::operator delete",
    header: "StepRepr_Transformation.hxx".}
proc `new[]`*(this: var StepReprTransformation; theSize: csize_t): pointer {.
    importcpp: "StepRepr_Transformation::operator new[]",
    header: "StepRepr_Transformation.hxx".}
proc `delete[]`*(this: var StepReprTransformation; theAddress: pointer) {.
    importcpp: "StepRepr_Transformation::operator delete[]",
    header: "StepRepr_Transformation.hxx".}
proc `new`*(this: var StepReprTransformation; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "StepRepr_Transformation::operator new",
    header: "StepRepr_Transformation.hxx".}
proc `delete`*(this: var StepReprTransformation; a2: pointer; a3: pointer) {.
    importcpp: "StepRepr_Transformation::operator delete",
    header: "StepRepr_Transformation.hxx".}
proc constructStepReprTransformation*(): StepReprTransformation {.constructor,
    importcpp: "StepRepr_Transformation(@)", header: "StepRepr_Transformation.hxx".}
proc caseNum*(this: StepReprTransformation; ent: Handle[StandardTransient]): int {.
    noSideEffect, importcpp: "CaseNum", header: "StepRepr_Transformation.hxx".}
proc itemDefinedTransformation*(this: StepReprTransformation): Handle[
    StepReprItemDefinedTransformation] {.noSideEffect,
                                        importcpp: "ItemDefinedTransformation",
                                        header: "StepRepr_Transformation.hxx".}
proc functionallyDefinedTransformation*(this: StepReprTransformation): Handle[
    StepReprFunctionallyDefinedTransformation] {.noSideEffect,
    importcpp: "FunctionallyDefinedTransformation",
    header: "StepRepr_Transformation.hxx".}