##  Created on: 2015-07-21
##  Created by: Irina KRYLOVA
##  Copyright (c) 2015 OPEN CASCADE SAS
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
discard "forward decl of StepRepr_CompoundRepresentationItem"
discard "forward decl of StepRepr_DescriptiveRepresentationItem"
discard "forward decl of StepRepr_MeasureRepresentationItem"
discard "forward decl of StepGeom_Placement"
type
  StepShape_ShapeDimensionRepresentationItem* {.
      importcpp: "StepShape_ShapeDimensionRepresentationItem",
      header: "StepShape_ShapeDimensionRepresentationItem.hxx", bycopy.} = object of StepData_SelectType ##
                                                                                                  ## !
                                                                                                  ## Returns
                                                                                                  ## a
                                                                                                  ## ShapeDimensionRepresentationItem
                                                                                                  ## select
                                                                                                  ## type


proc constructStepShape_ShapeDimensionRepresentationItem*(): StepShape_ShapeDimensionRepresentationItem {.
    constructor, importcpp: "StepShape_ShapeDimensionRepresentationItem(@)",
    header: "StepShape_ShapeDimensionRepresentationItem.hxx".}
proc CaseNum*(this: StepShape_ShapeDimensionRepresentationItem;
             ent: handle[Standard_Transient]): Standard_Integer {.noSideEffect,
    importcpp: "CaseNum", header: "StepShape_ShapeDimensionRepresentationItem.hxx".}
proc CompoundRepresentationItem*(this: StepShape_ShapeDimensionRepresentationItem): handle[
    StepRepr_CompoundRepresentationItem] {.noSideEffect,
    importcpp: "CompoundRepresentationItem",
    header: "StepShape_ShapeDimensionRepresentationItem.hxx".}
proc DescriptiveRepresentationItem*(this: StepShape_ShapeDimensionRepresentationItem): handle[
    StepRepr_DescriptiveRepresentationItem] {.noSideEffect,
    importcpp: "DescriptiveRepresentationItem",
    header: "StepShape_ShapeDimensionRepresentationItem.hxx".}
proc MeasureRepresentationItem*(this: StepShape_ShapeDimensionRepresentationItem): handle[
    StepRepr_MeasureRepresentationItem] {.noSideEffect,
    importcpp: "MeasureRepresentationItem",
    header: "StepShape_ShapeDimensionRepresentationItem.hxx".}
proc Placement*(this: StepShape_ShapeDimensionRepresentationItem): handle[
    StepGeom_Placement] {.noSideEffect, importcpp: "Placement", header: "StepShape_ShapeDimensionRepresentationItem.hxx".}