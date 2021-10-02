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
discard "forward decl of StepRepr_Representation"
discard "forward decl of StepRepr_RepresentationItem"
discard "forward decl of StepVisual_PresentationSet"
type
  StepVisualStyleContextSelect* {.importcpp: "StepVisual_StyleContextSelect",
                                 header: "StepVisual_StyleContextSelect.hxx",
                                 bycopy.} = object of StepDataSelectType


proc `new`*(this: var StepVisualStyleContextSelect; theSize: csize_t): pointer {.
    importcpp: "StepVisual_StyleContextSelect::operator new",
    header: "StepVisual_StyleContextSelect.hxx".}
proc `delete`*(this: var StepVisualStyleContextSelect; theAddress: pointer) {.
    importcpp: "StepVisual_StyleContextSelect::operator delete",
    header: "StepVisual_StyleContextSelect.hxx".}
proc `new[]`*(this: var StepVisualStyleContextSelect; theSize: csize_t): pointer {.
    importcpp: "StepVisual_StyleContextSelect::operator new[]",
    header: "StepVisual_StyleContextSelect.hxx".}
proc `delete[]`*(this: var StepVisualStyleContextSelect; theAddress: pointer) {.
    importcpp: "StepVisual_StyleContextSelect::operator delete[]",
    header: "StepVisual_StyleContextSelect.hxx".}
proc `new`*(this: var StepVisualStyleContextSelect; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "StepVisual_StyleContextSelect::operator new",
    header: "StepVisual_StyleContextSelect.hxx".}
proc `delete`*(this: var StepVisualStyleContextSelect; a2: pointer; a3: pointer) {.
    importcpp: "StepVisual_StyleContextSelect::operator delete",
    header: "StepVisual_StyleContextSelect.hxx".}
proc constructStepVisualStyleContextSelect*(): StepVisualStyleContextSelect {.
    constructor, importcpp: "StepVisual_StyleContextSelect(@)",
    header: "StepVisual_StyleContextSelect.hxx".}
proc caseNum*(this: StepVisualStyleContextSelect; ent: Handle[StandardTransient]): int {.
    noSideEffect, importcpp: "CaseNum", header: "StepVisual_StyleContextSelect.hxx".}
proc representation*(this: StepVisualStyleContextSelect): Handle[
    StepReprRepresentation] {.noSideEffect, importcpp: "Representation",
                             header: "StepVisual_StyleContextSelect.hxx".}
proc representationItem*(this: StepVisualStyleContextSelect): Handle[
    StepReprRepresentationItem] {.noSideEffect, importcpp: "RepresentationItem",
                                 header: "StepVisual_StyleContextSelect.hxx".}
proc presentationSet*(this: StepVisualStyleContextSelect): Handle[
    StepVisualPresentationSet] {.noSideEffect, importcpp: "PresentationSet",
                                header: "StepVisual_StyleContextSelect.hxx".}