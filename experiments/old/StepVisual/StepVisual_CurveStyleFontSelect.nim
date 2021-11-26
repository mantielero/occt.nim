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
discard "forward decl of StepVisual_CurveStyleFont"
discard "forward decl of StepVisual_PreDefinedCurveFont"
discard "forward decl of StepVisual_ExternallyDefinedCurveFont"
type
  StepVisualCurveStyleFontSelect* {.importcpp: "StepVisual_CurveStyleFontSelect", header: "StepVisual_CurveStyleFontSelect.hxx",
                                   bycopy.} = object of StepDataSelectType


proc `new`*(this: var StepVisualCurveStyleFontSelect; theSize: csize_t): pointer {.
    importcpp: "StepVisual_CurveStyleFontSelect::operator new",
    header: "StepVisual_CurveStyleFontSelect.hxx".}
proc `delete`*(this: var StepVisualCurveStyleFontSelect; theAddress: pointer) {.
    importcpp: "StepVisual_CurveStyleFontSelect::operator delete",
    header: "StepVisual_CurveStyleFontSelect.hxx".}
proc `new[]`*(this: var StepVisualCurveStyleFontSelect; theSize: csize_t): pointer {.
    importcpp: "StepVisual_CurveStyleFontSelect::operator new[]",
    header: "StepVisual_CurveStyleFontSelect.hxx".}
proc `delete[]`*(this: var StepVisualCurveStyleFontSelect; theAddress: pointer) {.
    importcpp: "StepVisual_CurveStyleFontSelect::operator delete[]",
    header: "StepVisual_CurveStyleFontSelect.hxx".}
proc `new`*(this: var StepVisualCurveStyleFontSelect; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "StepVisual_CurveStyleFontSelect::operator new",
    header: "StepVisual_CurveStyleFontSelect.hxx".}
proc `delete`*(this: var StepVisualCurveStyleFontSelect; a2: pointer; a3: pointer) {.
    importcpp: "StepVisual_CurveStyleFontSelect::operator delete",
    header: "StepVisual_CurveStyleFontSelect.hxx".}
proc constructStepVisualCurveStyleFontSelect*(): StepVisualCurveStyleFontSelect {.
    constructor, importcpp: "StepVisual_CurveStyleFontSelect(@)",
    header: "StepVisual_CurveStyleFontSelect.hxx".}
proc caseNum*(this: StepVisualCurveStyleFontSelect; ent: Handle[StandardTransient]): int {.
    noSideEffect, importcpp: "CaseNum",
    header: "StepVisual_CurveStyleFontSelect.hxx".}
proc curveStyleFont*(this: StepVisualCurveStyleFontSelect): Handle[
    StepVisualCurveStyleFont] {.noSideEffect, importcpp: "CurveStyleFont",
                               header: "StepVisual_CurveStyleFontSelect.hxx".}
proc preDefinedCurveFont*(this: StepVisualCurveStyleFontSelect): Handle[
    StepVisualPreDefinedCurveFont] {.noSideEffect,
                                    importcpp: "PreDefinedCurveFont", header: "StepVisual_CurveStyleFontSelect.hxx".}
proc externallyDefinedCurveFont*(this: StepVisualCurveStyleFontSelect): Handle[
    StepVisualExternallyDefinedCurveFont] {.noSideEffect,
    importcpp: "ExternallyDefinedCurveFont",
    header: "StepVisual_CurveStyleFontSelect.hxx".}