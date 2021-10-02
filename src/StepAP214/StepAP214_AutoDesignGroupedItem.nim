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
  StepAP214AutoDesignGroupedItem* {.importcpp: "StepAP214_AutoDesignGroupedItem", header: "StepAP214_AutoDesignGroupedItem.hxx",
                                   bycopy.} = object of StepDataSelectType


proc `new`*(this: var StepAP214AutoDesignGroupedItem; theSize: csize_t): pointer {.
    importcpp: "StepAP214_AutoDesignGroupedItem::operator new",
    header: "StepAP214_AutoDesignGroupedItem.hxx".}
proc `delete`*(this: var StepAP214AutoDesignGroupedItem; theAddress: pointer) {.
    importcpp: "StepAP214_AutoDesignGroupedItem::operator delete",
    header: "StepAP214_AutoDesignGroupedItem.hxx".}
proc `new[]`*(this: var StepAP214AutoDesignGroupedItem; theSize: csize_t): pointer {.
    importcpp: "StepAP214_AutoDesignGroupedItem::operator new[]",
    header: "StepAP214_AutoDesignGroupedItem.hxx".}
proc `delete[]`*(this: var StepAP214AutoDesignGroupedItem; theAddress: pointer) {.
    importcpp: "StepAP214_AutoDesignGroupedItem::operator delete[]",
    header: "StepAP214_AutoDesignGroupedItem.hxx".}
proc `new`*(this: var StepAP214AutoDesignGroupedItem; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "StepAP214_AutoDesignGroupedItem::operator new",
    header: "StepAP214_AutoDesignGroupedItem.hxx".}
proc `delete`*(this: var StepAP214AutoDesignGroupedItem; a2: pointer; a3: pointer) {.
    importcpp: "StepAP214_AutoDesignGroupedItem::operator delete",
    header: "StepAP214_AutoDesignGroupedItem.hxx".}
proc constructStepAP214AutoDesignGroupedItem*(): StepAP214AutoDesignGroupedItem {.
    constructor, importcpp: "StepAP214_AutoDesignGroupedItem(@)",
    header: "StepAP214_AutoDesignGroupedItem.hxx".}
proc caseNum*(this: StepAP214AutoDesignGroupedItem; ent: Handle[StandardTransient]): int {.
    noSideEffect, importcpp: "CaseNum",
    header: "StepAP214_AutoDesignGroupedItem.hxx".}
proc advancedBrepShapeRepresentation*(this: StepAP214AutoDesignGroupedItem): Handle[
    StepShapeAdvancedBrepShapeRepresentation] {.noSideEffect,
    importcpp: "AdvancedBrepShapeRepresentation",
    header: "StepAP214_AutoDesignGroupedItem.hxx".}
proc csgShapeRepresentation*(this: StepAP214AutoDesignGroupedItem): Handle[
    StepShapeCsgShapeRepresentation] {.noSideEffect,
                                      importcpp: "CsgShapeRepresentation", header: "StepAP214_AutoDesignGroupedItem.hxx".}
proc facetedBrepShapeRepresentation*(this: StepAP214AutoDesignGroupedItem): Handle[
    StepShapeFacetedBrepShapeRepresentation] {.noSideEffect,
    importcpp: "FacetedBrepShapeRepresentation",
    header: "StepAP214_AutoDesignGroupedItem.hxx".}
proc geometricallyBoundedSurfaceShapeRepresentation*(
    this: StepAP214AutoDesignGroupedItem): Handle[
    StepShapeGeometricallyBoundedSurfaceShapeRepresentation] {.noSideEffect,
    importcpp: "GeometricallyBoundedSurfaceShapeRepresentation",
    header: "StepAP214_AutoDesignGroupedItem.hxx".}
proc geometricallyBoundedWireframeShapeRepresentation*(
    this: StepAP214AutoDesignGroupedItem): Handle[
    StepShapeGeometricallyBoundedWireframeShapeRepresentation] {.noSideEffect,
    importcpp: "GeometricallyBoundedWireframeShapeRepresentation",
    header: "StepAP214_AutoDesignGroupedItem.hxx".}
proc manifoldSurfaceShapeRepresentation*(this: StepAP214AutoDesignGroupedItem): Handle[
    StepShapeManifoldSurfaceShapeRepresentation] {.noSideEffect,
    importcpp: "ManifoldSurfaceShapeRepresentation",
    header: "StepAP214_AutoDesignGroupedItem.hxx".}
proc representation*(this: StepAP214AutoDesignGroupedItem): Handle[
    StepReprRepresentation] {.noSideEffect, importcpp: "Representation",
                             header: "StepAP214_AutoDesignGroupedItem.hxx".}
proc representationItem*(this: StepAP214AutoDesignGroupedItem): Handle[
    StepReprRepresentationItem] {.noSideEffect, importcpp: "RepresentationItem",
                                 header: "StepAP214_AutoDesignGroupedItem.hxx".}
proc shapeAspect*(this: StepAP214AutoDesignGroupedItem): Handle[StepReprShapeAspect] {.
    noSideEffect, importcpp: "ShapeAspect",
    header: "StepAP214_AutoDesignGroupedItem.hxx".}
proc shapeRepresentation*(this: StepAP214AutoDesignGroupedItem): Handle[
    StepShapeShapeRepresentation] {.noSideEffect,
                                   importcpp: "ShapeRepresentation", header: "StepAP214_AutoDesignGroupedItem.hxx".}
proc templateInstance*(this: StepAP214AutoDesignGroupedItem): Handle[
    StepVisualTemplateInstance] {.noSideEffect, importcpp: "TemplateInstance",
                                 header: "StepAP214_AutoDesignGroupedItem.hxx".}