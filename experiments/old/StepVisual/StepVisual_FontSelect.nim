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
discard "forward decl of StepVisual_PreDefinedTextFont"
discard "forward decl of StepVisual_ExternallyDefinedTextFont"
type
  StepVisualFontSelect* {.importcpp: "StepVisual_FontSelect",
                         header: "StepVisual_FontSelect.hxx", bycopy.} = object of StepDataSelectType


proc `new`*(this: var StepVisualFontSelect; theSize: csize_t): pointer {.
    importcpp: "StepVisual_FontSelect::operator new",
    header: "StepVisual_FontSelect.hxx".}
proc `delete`*(this: var StepVisualFontSelect; theAddress: pointer) {.
    importcpp: "StepVisual_FontSelect::operator delete",
    header: "StepVisual_FontSelect.hxx".}
proc `new[]`*(this: var StepVisualFontSelect; theSize: csize_t): pointer {.
    importcpp: "StepVisual_FontSelect::operator new[]",
    header: "StepVisual_FontSelect.hxx".}
proc `delete[]`*(this: var StepVisualFontSelect; theAddress: pointer) {.
    importcpp: "StepVisual_FontSelect::operator delete[]",
    header: "StepVisual_FontSelect.hxx".}
proc `new`*(this: var StepVisualFontSelect; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "StepVisual_FontSelect::operator new",
    header: "StepVisual_FontSelect.hxx".}
proc `delete`*(this: var StepVisualFontSelect; a2: pointer; a3: pointer) {.
    importcpp: "StepVisual_FontSelect::operator delete",
    header: "StepVisual_FontSelect.hxx".}
proc constructStepVisualFontSelect*(): StepVisualFontSelect {.constructor,
    importcpp: "StepVisual_FontSelect(@)", header: "StepVisual_FontSelect.hxx".}
proc caseNum*(this: StepVisualFontSelect; ent: Handle[StandardTransient]): int {.
    noSideEffect, importcpp: "CaseNum", header: "StepVisual_FontSelect.hxx".}
proc preDefinedTextFont*(this: StepVisualFontSelect): Handle[
    StepVisualPreDefinedTextFont] {.noSideEffect, importcpp: "PreDefinedTextFont",
                                   header: "StepVisual_FontSelect.hxx".}
proc externallyDefinedTextFont*(this: StepVisualFontSelect): Handle[
    StepVisualExternallyDefinedTextFont] {.noSideEffect,
    importcpp: "ExternallyDefinedTextFont", header: "StepVisual_FontSelect.hxx".}