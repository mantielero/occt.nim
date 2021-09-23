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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../StepData/StepData_SelectType,
  ../Standard/Standard_Integer

discard "forward decl of Standard_Transient"
discard "forward decl of StepVisual_SurfaceStyleFillArea"
discard "forward decl of StepVisual_SurfaceStyleBoundary"
discard "forward decl of StepVisual_SurfaceStyleParameterLine"
discard "forward decl of StepVisual_SurfaceStyleRendering"
type
  StepVisual_SurfaceStyleElementSelect* {.
      importcpp: "StepVisual_SurfaceStyleElementSelect",
      header: "StepVisual_SurfaceStyleElementSelect.hxx", bycopy.} = object of StepData_SelectType ##
                                                                                            ## !
                                                                                            ## Returns
                                                                                            ## a
                                                                                            ## SurfaceStyleElementSelect
                                                                                            ## SelectType


proc constructStepVisual_SurfaceStyleElementSelect*(): StepVisual_SurfaceStyleElementSelect {.
    constructor, importcpp: "StepVisual_SurfaceStyleElementSelect(@)",
    header: "StepVisual_SurfaceStyleElementSelect.hxx".}
proc CaseNum*(this: StepVisual_SurfaceStyleElementSelect;
             ent: handle[Standard_Transient]): Standard_Integer {.noSideEffect,
    importcpp: "CaseNum", header: "StepVisual_SurfaceStyleElementSelect.hxx".}
proc SurfaceStyleFillArea*(this: StepVisual_SurfaceStyleElementSelect): handle[
    StepVisual_SurfaceStyleFillArea] {.noSideEffect,
                                      importcpp: "SurfaceStyleFillArea", header: "StepVisual_SurfaceStyleElementSelect.hxx".}
proc SurfaceStyleBoundary*(this: StepVisual_SurfaceStyleElementSelect): handle[
    StepVisual_SurfaceStyleBoundary] {.noSideEffect,
                                      importcpp: "SurfaceStyleBoundary", header: "StepVisual_SurfaceStyleElementSelect.hxx".}
proc SurfaceStyleParameterLine*(this: StepVisual_SurfaceStyleElementSelect): handle[
    StepVisual_SurfaceStyleParameterLine] {.noSideEffect,
    importcpp: "SurfaceStyleParameterLine",
    header: "StepVisual_SurfaceStyleElementSelect.hxx".}
proc SurfaceStyleRendering*(this: StepVisual_SurfaceStyleElementSelect): handle[
    StepVisual_SurfaceStyleRendering] {.noSideEffect,
                                       importcpp: "SurfaceStyleRendering", header: "StepVisual_SurfaceStyleElementSelect.hxx".}