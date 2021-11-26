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

discard "forward decl of Standard_Transient"
discard "forward decl of StepData_SelectMember"
type
  StepElementElementAspect* {.importcpp: "StepElement_ElementAspect",
                             header: "StepElement_ElementAspect.hxx", bycopy.} = object of StepDataSelectType


proc `new`*(this: var StepElementElementAspect; theSize: csize_t): pointer {.
    importcpp: "StepElement_ElementAspect::operator new",
    header: "StepElement_ElementAspect.hxx".}
proc `delete`*(this: var StepElementElementAspect; theAddress: pointer) {.
    importcpp: "StepElement_ElementAspect::operator delete",
    header: "StepElement_ElementAspect.hxx".}
proc `new[]`*(this: var StepElementElementAspect; theSize: csize_t): pointer {.
    importcpp: "StepElement_ElementAspect::operator new[]",
    header: "StepElement_ElementAspect.hxx".}
proc `delete[]`*(this: var StepElementElementAspect; theAddress: pointer) {.
    importcpp: "StepElement_ElementAspect::operator delete[]",
    header: "StepElement_ElementAspect.hxx".}
proc `new`*(this: var StepElementElementAspect; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "StepElement_ElementAspect::operator new",
    header: "StepElement_ElementAspect.hxx".}
proc `delete`*(this: var StepElementElementAspect; a2: pointer; a3: pointer) {.
    importcpp: "StepElement_ElementAspect::operator delete",
    header: "StepElement_ElementAspect.hxx".}
proc constructStepElementElementAspect*(): StepElementElementAspect {.constructor,
    importcpp: "StepElement_ElementAspect(@)",
    header: "StepElement_ElementAspect.hxx".}
proc caseNum*(this: StepElementElementAspect; ent: Handle[StandardTransient]): int {.
    noSideEffect, importcpp: "CaseNum", header: "StepElement_ElementAspect.hxx".}
proc caseMem*(this: StepElementElementAspect; ent: Handle[StepDataSelectMember]): int {.
    noSideEffect, importcpp: "CaseMem", header: "StepElement_ElementAspect.hxx".}
proc newMember*(this: StepElementElementAspect): Handle[StepDataSelectMember] {.
    noSideEffect, importcpp: "NewMember", header: "StepElement_ElementAspect.hxx".}
proc setElementVolume*(this: var StepElementElementAspect;
                      aVal: StepElementElementVolume) {.
    importcpp: "SetElementVolume", header: "StepElement_ElementAspect.hxx".}
proc elementVolume*(this: StepElementElementAspect): StepElementElementVolume {.
    noSideEffect, importcpp: "ElementVolume",
    header: "StepElement_ElementAspect.hxx".}
proc setVolume3dFace*(this: var StepElementElementAspect; aVal: int) {.
    importcpp: "SetVolume3dFace", header: "StepElement_ElementAspect.hxx".}
proc volume3dFace*(this: StepElementElementAspect): int {.noSideEffect,
    importcpp: "Volume3dFace", header: "StepElement_ElementAspect.hxx".}
proc setVolume2dFace*(this: var StepElementElementAspect; aVal: int) {.
    importcpp: "SetVolume2dFace", header: "StepElement_ElementAspect.hxx".}
proc volume2dFace*(this: StepElementElementAspect): int {.noSideEffect,
    importcpp: "Volume2dFace", header: "StepElement_ElementAspect.hxx".}
proc setVolume3dEdge*(this: var StepElementElementAspect; aVal: int) {.
    importcpp: "SetVolume3dEdge", header: "StepElement_ElementAspect.hxx".}
proc volume3dEdge*(this: StepElementElementAspect): int {.noSideEffect,
    importcpp: "Volume3dEdge", header: "StepElement_ElementAspect.hxx".}
proc setVolume2dEdge*(this: var StepElementElementAspect; aVal: int) {.
    importcpp: "SetVolume2dEdge", header: "StepElement_ElementAspect.hxx".}
proc volume2dEdge*(this: StepElementElementAspect): int {.noSideEffect,
    importcpp: "Volume2dEdge", header: "StepElement_ElementAspect.hxx".}
proc setSurface3dFace*(this: var StepElementElementAspect; aVal: int) {.
    importcpp: "SetSurface3dFace", header: "StepElement_ElementAspect.hxx".}
proc surface3dFace*(this: StepElementElementAspect): int {.noSideEffect,
    importcpp: "Surface3dFace", header: "StepElement_ElementAspect.hxx".}
proc setSurface2dFace*(this: var StepElementElementAspect; aVal: int) {.
    importcpp: "SetSurface2dFace", header: "StepElement_ElementAspect.hxx".}
proc surface2dFace*(this: StepElementElementAspect): int {.noSideEffect,
    importcpp: "Surface2dFace", header: "StepElement_ElementAspect.hxx".}
proc setSurface3dEdge*(this: var StepElementElementAspect; aVal: int) {.
    importcpp: "SetSurface3dEdge", header: "StepElement_ElementAspect.hxx".}
proc surface3dEdge*(this: StepElementElementAspect): int {.noSideEffect,
    importcpp: "Surface3dEdge", header: "StepElement_ElementAspect.hxx".}
proc setSurface2dEdge*(this: var StepElementElementAspect; aVal: int) {.
    importcpp: "SetSurface2dEdge", header: "StepElement_ElementAspect.hxx".}
proc surface2dEdge*(this: StepElementElementAspect): int {.noSideEffect,
    importcpp: "Surface2dEdge", header: "StepElement_ElementAspect.hxx".}
proc setCurveEdge*(this: var StepElementElementAspect; aVal: StepElementCurveEdge) {.
    importcpp: "SetCurveEdge", header: "StepElement_ElementAspect.hxx".}
proc curveEdge*(this: StepElementElementAspect): StepElementCurveEdge {.
    noSideEffect, importcpp: "CurveEdge", header: "StepElement_ElementAspect.hxx".}