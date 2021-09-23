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
discard "forward decl of StepShape_AdvancedBrepShapeRepresentation"
discard "forward decl of StepShape_CsgShapeRepresentation"
discard "forward decl of StepShape_FacetedBrepShapeRepresentation"
discard "forward decl of StepShape_GeometricallyBoundedSurfaceShapeRepresentation"
discard "forward decl of StepShape_GeometricallyBoundedWireframeShapeRepresentation"
discard "forward decl of StepShape_ManifoldSurfaceShapeRepresentation"
discard "forward decl of StepRepr_Representation"
discard "forward decl of StepRepr_RepresentationItem"
discard "forward decl of StepRepr_ShapeAspect"
discard "forward decl of StepShape_ShapeRepresentation"
discard "forward decl of StepVisual_TemplateInstance"
type
  StepAP214_AutoDesignGroupedItem* {.importcpp: "StepAP214_AutoDesignGroupedItem", header: "StepAP214_AutoDesignGroupedItem.hxx",
                                    bycopy.} = object of StepData_SelectType ## ! Returns a
                                                                        ## AutoDesignGroupedItem
                                                                        ## SelectType


proc constructStepAP214_AutoDesignGroupedItem*(): StepAP214_AutoDesignGroupedItem {.
    constructor, importcpp: "StepAP214_AutoDesignGroupedItem(@)",
    header: "StepAP214_AutoDesignGroupedItem.hxx".}
proc CaseNum*(this: StepAP214_AutoDesignGroupedItem;
             ent: handle[Standard_Transient]): Standard_Integer {.noSideEffect,
    importcpp: "CaseNum", header: "StepAP214_AutoDesignGroupedItem.hxx".}
proc AdvancedBrepShapeRepresentation*(this: StepAP214_AutoDesignGroupedItem): handle[
    StepShape_AdvancedBrepShapeRepresentation] {.noSideEffect,
    importcpp: "AdvancedBrepShapeRepresentation",
    header: "StepAP214_AutoDesignGroupedItem.hxx".}
proc CsgShapeRepresentation*(this: StepAP214_AutoDesignGroupedItem): handle[
    StepShape_CsgShapeRepresentation] {.noSideEffect,
                                       importcpp: "CsgShapeRepresentation", header: "StepAP214_AutoDesignGroupedItem.hxx".}
proc FacetedBrepShapeRepresentation*(this: StepAP214_AutoDesignGroupedItem): handle[
    StepShape_FacetedBrepShapeRepresentation] {.noSideEffect,
    importcpp: "FacetedBrepShapeRepresentation",
    header: "StepAP214_AutoDesignGroupedItem.hxx".}
proc GeometricallyBoundedSurfaceShapeRepresentation*(
    this: StepAP214_AutoDesignGroupedItem): handle[
    StepShape_GeometricallyBoundedSurfaceShapeRepresentation] {.noSideEffect,
    importcpp: "GeometricallyBoundedSurfaceShapeRepresentation",
    header: "StepAP214_AutoDesignGroupedItem.hxx".}
proc GeometricallyBoundedWireframeShapeRepresentation*(
    this: StepAP214_AutoDesignGroupedItem): handle[
    StepShape_GeometricallyBoundedWireframeShapeRepresentation] {.noSideEffect,
    importcpp: "GeometricallyBoundedWireframeShapeRepresentation",
    header: "StepAP214_AutoDesignGroupedItem.hxx".}
proc ManifoldSurfaceShapeRepresentation*(this: StepAP214_AutoDesignGroupedItem): handle[
    StepShape_ManifoldSurfaceShapeRepresentation] {.noSideEffect,
    importcpp: "ManifoldSurfaceShapeRepresentation",
    header: "StepAP214_AutoDesignGroupedItem.hxx".}
proc Representation*(this: StepAP214_AutoDesignGroupedItem): handle[
    StepRepr_Representation] {.noSideEffect, importcpp: "Representation",
                              header: "StepAP214_AutoDesignGroupedItem.hxx".}
proc RepresentationItem*(this: StepAP214_AutoDesignGroupedItem): handle[
    StepRepr_RepresentationItem] {.noSideEffect, importcpp: "RepresentationItem",
                                  header: "StepAP214_AutoDesignGroupedItem.hxx".}
proc ShapeAspect*(this: StepAP214_AutoDesignGroupedItem): handle[
    StepRepr_ShapeAspect] {.noSideEffect, importcpp: "ShapeAspect",
                           header: "StepAP214_AutoDesignGroupedItem.hxx".}
proc ShapeRepresentation*(this: StepAP214_AutoDesignGroupedItem): handle[
    StepShape_ShapeRepresentation] {.noSideEffect,
                                    importcpp: "ShapeRepresentation", header: "StepAP214_AutoDesignGroupedItem.hxx".}
proc TemplateInstance*(this: StepAP214_AutoDesignGroupedItem): handle[
    StepVisual_TemplateInstance] {.noSideEffect, importcpp: "TemplateInstance",
                                  header: "StepAP214_AutoDesignGroupedItem.hxx".}