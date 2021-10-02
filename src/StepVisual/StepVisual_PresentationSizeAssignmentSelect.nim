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
discard "forward decl of StepVisual_PresentationView"
discard "forward decl of StepVisual_PresentationArea"
discard "forward decl of StepVisual_AreaInSet"
type
  StepVisualPresentationSizeAssignmentSelect* {.
      importcpp: "StepVisual_PresentationSizeAssignmentSelect",
      header: "StepVisual_PresentationSizeAssignmentSelect.hxx", bycopy.} = object of StepDataSelectType


proc `new`*(this: var StepVisualPresentationSizeAssignmentSelect; theSize: csize_t): pointer {.
    importcpp: "StepVisual_PresentationSizeAssignmentSelect::operator new",
    header: "StepVisual_PresentationSizeAssignmentSelect.hxx".}
proc `delete`*(this: var StepVisualPresentationSizeAssignmentSelect;
              theAddress: pointer) {.importcpp: "StepVisual_PresentationSizeAssignmentSelect::operator delete", header: "StepVisual_PresentationSizeAssignmentSelect.hxx".}
proc `new[]`*(this: var StepVisualPresentationSizeAssignmentSelect; theSize: csize_t): pointer {.
    importcpp: "StepVisual_PresentationSizeAssignmentSelect::operator new[]",
    header: "StepVisual_PresentationSizeAssignmentSelect.hxx".}
proc `delete[]`*(this: var StepVisualPresentationSizeAssignmentSelect;
                theAddress: pointer) {.importcpp: "StepVisual_PresentationSizeAssignmentSelect::operator delete[]", header: "StepVisual_PresentationSizeAssignmentSelect.hxx".}
proc `new`*(this: var StepVisualPresentationSizeAssignmentSelect; a2: csize_t;
           theAddress: pointer): pointer {.importcpp: "StepVisual_PresentationSizeAssignmentSelect::operator new", header: "StepVisual_PresentationSizeAssignmentSelect.hxx".}
proc `delete`*(this: var StepVisualPresentationSizeAssignmentSelect; a2: pointer;
              a3: pointer) {.importcpp: "StepVisual_PresentationSizeAssignmentSelect::operator delete", header: "StepVisual_PresentationSizeAssignmentSelect.hxx".}
proc constructStepVisualPresentationSizeAssignmentSelect*(): StepVisualPresentationSizeAssignmentSelect {.
    constructor, importcpp: "StepVisual_PresentationSizeAssignmentSelect(@)",
    header: "StepVisual_PresentationSizeAssignmentSelect.hxx".}
proc caseNum*(this: StepVisualPresentationSizeAssignmentSelect;
             ent: Handle[StandardTransient]): int {.noSideEffect,
    importcpp: "CaseNum",
    header: "StepVisual_PresentationSizeAssignmentSelect.hxx".}
proc presentationView*(this: StepVisualPresentationSizeAssignmentSelect): Handle[
    StepVisualPresentationView] {.noSideEffect, importcpp: "PresentationView", header: "StepVisual_PresentationSizeAssignmentSelect.hxx".}
proc presentationArea*(this: StepVisualPresentationSizeAssignmentSelect): Handle[
    StepVisualPresentationArea] {.noSideEffect, importcpp: "PresentationArea", header: "StepVisual_PresentationSizeAssignmentSelect.hxx".}
proc areaInSet*(this: StepVisualPresentationSizeAssignmentSelect): Handle[
    StepVisualAreaInSet] {.noSideEffect, importcpp: "AreaInSet", header: "StepVisual_PresentationSizeAssignmentSelect.hxx".}