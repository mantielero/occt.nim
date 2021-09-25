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
discard "forward decl of StepVisual_PointStyle"
discard "forward decl of StepVisual_CurveStyle"
discard "forward decl of StepVisual_NullStyleMember"
discard "forward decl of StepVisual_SurfaceStyleUsage"
type
  StepVisualPresentationStyleSelect* {.importcpp: "StepVisual_PresentationStyleSelect", header: "StepVisual_PresentationStyleSelect.hxx",
                                      bycopy.} = object of StepDataSelectType ## ! Returns a
                                                                         ## PresentationStyleSelect
                                                                         ## SelectType


proc constructStepVisualPresentationStyleSelect*(): StepVisualPresentationStyleSelect {.
    constructor, importcpp: "StepVisual_PresentationStyleSelect(@)",
    header: "StepVisual_PresentationStyleSelect.hxx".}
proc caseNum*(this: StepVisualPresentationStyleSelect;
             ent: Handle[StandardTransient]): int {.noSideEffect,
    importcpp: "CaseNum", header: "StepVisual_PresentationStyleSelect.hxx".}
proc pointStyle*(this: StepVisualPresentationStyleSelect): Handle[
    StepVisualPointStyle] {.noSideEffect, importcpp: "PointStyle",
                           header: "StepVisual_PresentationStyleSelect.hxx".}
proc curveStyle*(this: StepVisualPresentationStyleSelect): Handle[
    StepVisualCurveStyle] {.noSideEffect, importcpp: "CurveStyle",
                           header: "StepVisual_PresentationStyleSelect.hxx".}
proc nullStyle*(this: StepVisualPresentationStyleSelect): Handle[
    StepVisualNullStyleMember] {.noSideEffect, importcpp: "NullStyle", header: "StepVisual_PresentationStyleSelect.hxx".}
proc surfaceStyleUsage*(this: StepVisualPresentationStyleSelect): Handle[
    StepVisualSurfaceStyleUsage] {.noSideEffect, importcpp: "SurfaceStyleUsage", header: "StepVisual_PresentationStyleSelect.hxx".}
