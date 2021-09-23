##  Created on: 2002-12-10
##  Created by: data exchange team
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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
  ../Standard/Standard_Integer, StepElement_ElementVolume, StepElement_CurveEdge

discard "forward decl of Standard_Transient"
discard "forward decl of StepData_SelectMember"
type
  StepElement_ElementAspect* {.importcpp: "StepElement_ElementAspect",
                              header: "StepElement_ElementAspect.hxx", bycopy.} = object of StepData_SelectType ##
                                                                                                         ## !
                                                                                                         ## Empty
                                                                                                         ## constructor


proc constructStepElement_ElementAspect*(): StepElement_ElementAspect {.
    constructor, importcpp: "StepElement_ElementAspect(@)",
    header: "StepElement_ElementAspect.hxx".}
proc CaseNum*(this: StepElement_ElementAspect; ent: handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "CaseNum", header: "StepElement_ElementAspect.hxx".}
proc CaseMem*(this: StepElement_ElementAspect; ent: handle[StepData_SelectMember]): Standard_Integer {.
    noSideEffect, importcpp: "CaseMem", header: "StepElement_ElementAspect.hxx".}
proc NewMember*(this: StepElement_ElementAspect): handle[StepData_SelectMember] {.
    noSideEffect, importcpp: "NewMember", header: "StepElement_ElementAspect.hxx".}
proc SetElementVolume*(this: var StepElement_ElementAspect;
                      aVal: StepElement_ElementVolume) {.
    importcpp: "SetElementVolume", header: "StepElement_ElementAspect.hxx".}
proc ElementVolume*(this: StepElement_ElementAspect): StepElement_ElementVolume {.
    noSideEffect, importcpp: "ElementVolume",
    header: "StepElement_ElementAspect.hxx".}
proc SetVolume3dFace*(this: var StepElement_ElementAspect; aVal: Standard_Integer) {.
    importcpp: "SetVolume3dFace", header: "StepElement_ElementAspect.hxx".}
proc Volume3dFace*(this: StepElement_ElementAspect): Standard_Integer {.
    noSideEffect, importcpp: "Volume3dFace",
    header: "StepElement_ElementAspect.hxx".}
proc SetVolume2dFace*(this: var StepElement_ElementAspect; aVal: Standard_Integer) {.
    importcpp: "SetVolume2dFace", header: "StepElement_ElementAspect.hxx".}
proc Volume2dFace*(this: StepElement_ElementAspect): Standard_Integer {.
    noSideEffect, importcpp: "Volume2dFace",
    header: "StepElement_ElementAspect.hxx".}
proc SetVolume3dEdge*(this: var StepElement_ElementAspect; aVal: Standard_Integer) {.
    importcpp: "SetVolume3dEdge", header: "StepElement_ElementAspect.hxx".}
proc Volume3dEdge*(this: StepElement_ElementAspect): Standard_Integer {.
    noSideEffect, importcpp: "Volume3dEdge",
    header: "StepElement_ElementAspect.hxx".}
proc SetVolume2dEdge*(this: var StepElement_ElementAspect; aVal: Standard_Integer) {.
    importcpp: "SetVolume2dEdge", header: "StepElement_ElementAspect.hxx".}
proc Volume2dEdge*(this: StepElement_ElementAspect): Standard_Integer {.
    noSideEffect, importcpp: "Volume2dEdge",
    header: "StepElement_ElementAspect.hxx".}
proc SetSurface3dFace*(this: var StepElement_ElementAspect; aVal: Standard_Integer) {.
    importcpp: "SetSurface3dFace", header: "StepElement_ElementAspect.hxx".}
proc Surface3dFace*(this: StepElement_ElementAspect): Standard_Integer {.
    noSideEffect, importcpp: "Surface3dFace",
    header: "StepElement_ElementAspect.hxx".}
proc SetSurface2dFace*(this: var StepElement_ElementAspect; aVal: Standard_Integer) {.
    importcpp: "SetSurface2dFace", header: "StepElement_ElementAspect.hxx".}
proc Surface2dFace*(this: StepElement_ElementAspect): Standard_Integer {.
    noSideEffect, importcpp: "Surface2dFace",
    header: "StepElement_ElementAspect.hxx".}
proc SetSurface3dEdge*(this: var StepElement_ElementAspect; aVal: Standard_Integer) {.
    importcpp: "SetSurface3dEdge", header: "StepElement_ElementAspect.hxx".}
proc Surface3dEdge*(this: StepElement_ElementAspect): Standard_Integer {.
    noSideEffect, importcpp: "Surface3dEdge",
    header: "StepElement_ElementAspect.hxx".}
proc SetSurface2dEdge*(this: var StepElement_ElementAspect; aVal: Standard_Integer) {.
    importcpp: "SetSurface2dEdge", header: "StepElement_ElementAspect.hxx".}
proc Surface2dEdge*(this: StepElement_ElementAspect): Standard_Integer {.
    noSideEffect, importcpp: "Surface2dEdge",
    header: "StepElement_ElementAspect.hxx".}
proc SetCurveEdge*(this: var StepElement_ElementAspect; aVal: StepElement_CurveEdge) {.
    importcpp: "SetCurveEdge", header: "StepElement_ElementAspect.hxx".}
proc CurveEdge*(this: StepElement_ElementAspect): StepElement_CurveEdge {.
    noSideEffect, importcpp: "CurveEdge", header: "StepElement_ElementAspect.hxx".}