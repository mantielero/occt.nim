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
discard "forward decl of StepVisual_SurfaceStyleFillArea"
discard "forward decl of StepVisual_SurfaceStyleBoundary"
discard "forward decl of StepVisual_SurfaceStyleParameterLine"
discard "forward decl of StepVisual_SurfaceStyleRendering"
type
  StepVisualSurfaceStyleElementSelect* {.importcpp: "StepVisual_SurfaceStyleElementSelect", header: "StepVisual_SurfaceStyleElementSelect.hxx",
                                        bycopy.} = object of StepDataSelectType ## !
                                                                           ## Returns a
                                                                           ## SurfaceStyleElementSelect
                                                                           ## SelectType


proc constructStepVisualSurfaceStyleElementSelect*(): StepVisualSurfaceStyleElementSelect {.
    constructor, importcpp: "StepVisual_SurfaceStyleElementSelect(@)",
    header: "StepVisual_SurfaceStyleElementSelect.hxx".}
proc caseNum*(this: StepVisualSurfaceStyleElementSelect;
             ent: Handle[StandardTransient]): cint {.noSideEffect,
    importcpp: "CaseNum", header: "StepVisual_SurfaceStyleElementSelect.hxx".}
proc surfaceStyleFillArea*(this: StepVisualSurfaceStyleElementSelect): Handle[
    StepVisualSurfaceStyleFillArea] {.noSideEffect,
                                     importcpp: "SurfaceStyleFillArea", header: "StepVisual_SurfaceStyleElementSelect.hxx".}
proc surfaceStyleBoundary*(this: StepVisualSurfaceStyleElementSelect): Handle[
    StepVisualSurfaceStyleBoundary] {.noSideEffect,
                                     importcpp: "SurfaceStyleBoundary", header: "StepVisual_SurfaceStyleElementSelect.hxx".}
proc surfaceStyleParameterLine*(this: StepVisualSurfaceStyleElementSelect): Handle[
    StepVisualSurfaceStyleParameterLine] {.noSideEffect,
    importcpp: "SurfaceStyleParameterLine",
    header: "StepVisual_SurfaceStyleElementSelect.hxx".}
proc surfaceStyleRendering*(this: StepVisualSurfaceStyleElementSelect): Handle[
    StepVisualSurfaceStyleRendering] {.noSideEffect,
                                      importcpp: "SurfaceStyleRendering", header: "StepVisual_SurfaceStyleElementSelect.hxx".}

























