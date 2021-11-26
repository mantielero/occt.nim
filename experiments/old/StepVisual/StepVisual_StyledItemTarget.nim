##  Created on: 2016-03-18
##  Created by: Irina KRYLOVA
##  Copyright (c) 2016 OPEN CASCADE SAS
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
discard "forward decl of StepGeom_GeometricRepresentationItem"
discard "forward decl of StepRepr_MappedItem"
discard "forward decl of StepRepr_Representation"
discard "forward decl of StepShape_TopologicalRepresentationItem"
type
  StepVisualStyledItemTarget* {.importcpp: "StepVisual_StyledItemTarget",
                               header: "StepVisual_StyledItemTarget.hxx", bycopy.} = object of StepDataSelectType


proc `new`*(this: var StepVisualStyledItemTarget; theSize: csize_t): pointer {.
    importcpp: "StepVisual_StyledItemTarget::operator new",
    header: "StepVisual_StyledItemTarget.hxx".}
proc `delete`*(this: var StepVisualStyledItemTarget; theAddress: pointer) {.
    importcpp: "StepVisual_StyledItemTarget::operator delete",
    header: "StepVisual_StyledItemTarget.hxx".}
proc `new[]`*(this: var StepVisualStyledItemTarget; theSize: csize_t): pointer {.
    importcpp: "StepVisual_StyledItemTarget::operator new[]",
    header: "StepVisual_StyledItemTarget.hxx".}
proc `delete[]`*(this: var StepVisualStyledItemTarget; theAddress: pointer) {.
    importcpp: "StepVisual_StyledItemTarget::operator delete[]",
    header: "StepVisual_StyledItemTarget.hxx".}
proc `new`*(this: var StepVisualStyledItemTarget; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "StepVisual_StyledItemTarget::operator new",
    header: "StepVisual_StyledItemTarget.hxx".}
proc `delete`*(this: var StepVisualStyledItemTarget; a2: pointer; a3: pointer) {.
    importcpp: "StepVisual_StyledItemTarget::operator delete",
    header: "StepVisual_StyledItemTarget.hxx".}
proc constructStepVisualStyledItemTarget*(): StepVisualStyledItemTarget {.
    constructor, importcpp: "StepVisual_StyledItemTarget(@)",
    header: "StepVisual_StyledItemTarget.hxx".}
proc caseNum*(this: StepVisualStyledItemTarget; ent: Handle[StandardTransient]): int {.
    noSideEffect, importcpp: "CaseNum", header: "StepVisual_StyledItemTarget.hxx".}
proc geometricRepresentationItem*(this: StepVisualStyledItemTarget): Handle[
    StepGeomGeometricRepresentationItem] {.noSideEffect,
    importcpp: "GeometricRepresentationItem",
    header: "StepVisual_StyledItemTarget.hxx".}
proc mappedItem*(this: StepVisualStyledItemTarget): Handle[StepReprMappedItem] {.
    noSideEffect, importcpp: "MappedItem",
    header: "StepVisual_StyledItemTarget.hxx".}
proc representation*(this: StepVisualStyledItemTarget): Handle[
    StepReprRepresentation] {.noSideEffect, importcpp: "Representation",
                             header: "StepVisual_StyledItemTarget.hxx".}
proc topologicalRepresentationItem*(this: StepVisualStyledItemTarget): Handle[
    StepShapeTopologicalRepresentationItem] {.noSideEffect,
    importcpp: "TopologicalRepresentationItem",
    header: "StepVisual_StyledItemTarget.hxx".}