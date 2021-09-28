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

discard "forward decl of Standard_Transient"
discard "forward decl of StepRepr_CompoundRepresentationItem"
discard "forward decl of StepRepr_DescriptiveRepresentationItem"
discard "forward decl of StepRepr_MeasureRepresentationItem"
discard "forward decl of StepGeom_Placement"
type
  StepShapeShapeDimensionRepresentationItem* {.
      importcpp: "StepShape_ShapeDimensionRepresentationItem",
      header: "StepShape_ShapeDimensionRepresentationItem.hxx", bycopy.} = object of StepDataSelectType ##
                                                                                                 ## !
                                                                                                 ## Returns
                                                                                                 ## a
                                                                                                 ## ShapeDimensionRepresentationItem
                                                                                                 ## select
                                                                                                 ## type


proc constructStepShapeShapeDimensionRepresentationItem*(): StepShapeShapeDimensionRepresentationItem {.
    constructor, importcpp: "StepShape_ShapeDimensionRepresentationItem(@)",
    header: "StepShape_ShapeDimensionRepresentationItem.hxx".}
proc caseNum*(this: StepShapeShapeDimensionRepresentationItem;
             ent: Handle[StandardTransient]): cint {.noSideEffect,
    importcpp: "CaseNum", header: "StepShape_ShapeDimensionRepresentationItem.hxx".}
proc compoundRepresentationItem*(this: StepShapeShapeDimensionRepresentationItem): Handle[
    StepReprCompoundRepresentationItem] {.noSideEffect,
    importcpp: "CompoundRepresentationItem",
    header: "StepShape_ShapeDimensionRepresentationItem.hxx".}
proc descriptiveRepresentationItem*(this: StepShapeShapeDimensionRepresentationItem): Handle[
    StepReprDescriptiveRepresentationItem] {.noSideEffect,
    importcpp: "DescriptiveRepresentationItem",
    header: "StepShape_ShapeDimensionRepresentationItem.hxx".}
proc measureRepresentationItem*(this: StepShapeShapeDimensionRepresentationItem): Handle[
    StepReprMeasureRepresentationItem] {.noSideEffect,
                                        importcpp: "MeasureRepresentationItem", header: "StepShape_ShapeDimensionRepresentationItem.hxx".}
proc placement*(this: StepShapeShapeDimensionRepresentationItem): Handle[
    StepGeomPlacement] {.noSideEffect, importcpp: "Placement", header: "StepShape_ShapeDimensionRepresentationItem.hxx".}

























