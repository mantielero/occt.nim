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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../StepData/StepData_SelectType,
  ../Standard/Standard_Integer

discard "forward decl of Standard_Transient"
discard "forward decl of StepGeom_GeometricRepresentationItem"
discard "forward decl of StepRepr_MappedItem"
discard "forward decl of StepRepr_Representation"
discard "forward decl of StepShape_TopologicalRepresentationItem"
type
  StepVisual_StyledItemTarget* {.importcpp: "StepVisual_StyledItemTarget",
                                header: "StepVisual_StyledItemTarget.hxx", bycopy.} = object of StepData_SelectType ##
                                                                                                             ## !
                                                                                                             ## Returns
                                                                                                             ## a
                                                                                                             ## StyledItemTarget
                                                                                                             ## select
                                                                                                             ## type


proc constructStepVisual_StyledItemTarget*(): StepVisual_StyledItemTarget {.
    constructor, importcpp: "StepVisual_StyledItemTarget(@)",
    header: "StepVisual_StyledItemTarget.hxx".}
proc CaseNum*(this: StepVisual_StyledItemTarget; ent: handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "CaseNum", header: "StepVisual_StyledItemTarget.hxx".}
proc GeometricRepresentationItem*(this: StepVisual_StyledItemTarget): handle[
    StepGeom_GeometricRepresentationItem] {.noSideEffect,
    importcpp: "GeometricRepresentationItem",
    header: "StepVisual_StyledItemTarget.hxx".}
proc MappedItem*(this: StepVisual_StyledItemTarget): handle[StepRepr_MappedItem] {.
    noSideEffect, importcpp: "MappedItem",
    header: "StepVisual_StyledItemTarget.hxx".}
proc Representation*(this: StepVisual_StyledItemTarget): handle[
    StepRepr_Representation] {.noSideEffect, importcpp: "Representation",
                              header: "StepVisual_StyledItemTarget.hxx".}
proc TopologicalRepresentationItem*(this: StepVisual_StyledItemTarget): handle[
    StepShape_TopologicalRepresentationItem] {.noSideEffect,
    importcpp: "TopologicalRepresentationItem",
    header: "StepVisual_StyledItemTarget.hxx".}