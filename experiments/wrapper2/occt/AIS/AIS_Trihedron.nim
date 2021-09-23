##  Created on: 1995-10-09
##  Created by: Arnaud BOUZY/Odile Olivier
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
  AIS_InteractiveObject, AIS_KindOfInteractive, AIS_TrihedronSelectionMode,
  ../Graphic3d/Graphic3d_ArrayOfTriangles,
  ../PrsMgr/PrsMgr_PresentationManager3d, ../Prs3d/Prs3d_DatumAspect,
  ../Prs3d/Prs3d_DatumMode, ../Prs3d/Prs3d_DatumParts,
  ../Prs3d/Prs3d_ShadingAspect, ../Prs3d/Prs3d_LineAspect,
  ../Prs3d/Prs3d_PointAspect, ../SelectMgr/SelectMgr_Selection,
  ../TColgp/TColgp_Array1OfPnt, ../Quantity/Quantity_Color

discard "forward decl of Geom_Axis2Placement"
type
  AIS_Trihedron* {.importcpp: "AIS_Trihedron", header: "AIS_Trihedron.hxx", bycopy.} = object of AIS_InteractiveObject ##
                                                                                                             ## !
                                                                                                             ## Initializes
                                                                                                             ## a
                                                                                                             ## trihedron
                                                                                                             ## entity.
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## Method
                                                                                                             ## which
                                                                                                             ## clear
                                                                                                             ## all
                                                                                                             ## selected
                                                                                                             ## owners
                                                                                                             ## belonging
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## to
                                                                                                             ## this
                                                                                                             ## selectable
                                                                                                             ## object
                                                                                                             ## (
                                                                                                             ## for
                                                                                                             ## fast
                                                                                                             ## presentation
                                                                                                             ## draw
                                                                                                             ## ).
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## Compute
                                                                                                             ## trihedron
                                                                                                             ## presentation.
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## Creates
                                                                                                             ## a
                                                                                                             ## sensitive
                                                                                                             ## entity
                                                                                                             ## for
                                                                                                             ## the
                                                                                                             ## datum
                                                                                                             ## part
                                                                                                             ## that
                                                                                                             ## will
                                                                                                             ## be
                                                                                                             ## used
                                                                                                             ## in
                                                                                                             ## selection
                                                                                                             ## owner
                                                                                                             ## creation.

  AIS_Trihedronbase_type* = AIS_InteractiveObject

proc get_type_name*(): cstring {.importcpp: "AIS_Trihedron::get_type_name(@)",
                              header: "AIS_Trihedron.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "AIS_Trihedron::get_type_descriptor(@)",
    header: "AIS_Trihedron.hxx".}
proc DynamicType*(this: AIS_Trihedron): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_Trihedron.hxx".}
proc constructAIS_Trihedron*(theComponent: handle[Geom_Axis2Placement]): AIS_Trihedron {.
    constructor, importcpp: "AIS_Trihedron(@)", header: "AIS_Trihedron.hxx".}
proc SetDatumDisplayMode*(this: var AIS_Trihedron; theMode: Prs3d_DatumMode) {.
    importcpp: "SetDatumDisplayMode", header: "AIS_Trihedron.hxx".}
proc DatumDisplayMode*(this: AIS_Trihedron): Prs3d_DatumMode {.noSideEffect,
    importcpp: "DatumDisplayMode", header: "AIS_Trihedron.hxx".}
proc Component*(this: AIS_Trihedron): handle[Geom_Axis2Placement] {.noSideEffect,
    importcpp: "Component", header: "AIS_Trihedron.hxx".}
proc SetComponent*(this: var AIS_Trihedron;
                  theComponent: handle[Geom_Axis2Placement]) {.
    importcpp: "SetComponent", header: "AIS_Trihedron.hxx".}
proc HasOwnSize*(this: AIS_Trihedron): Standard_Boolean {.noSideEffect,
    importcpp: "HasOwnSize", header: "AIS_Trihedron.hxx".}
proc SetSize*(this: var AIS_Trihedron; theValue: Standard_Real) {.
    importcpp: "SetSize", header: "AIS_Trihedron.hxx".}
proc UnsetSize*(this: var AIS_Trihedron) {.importcpp: "UnsetSize",
                                       header: "AIS_Trihedron.hxx".}
proc Size*(this: AIS_Trihedron): Standard_Real {.noSideEffect, importcpp: "Size",
    header: "AIS_Trihedron.hxx".}
proc AcceptDisplayMode*(this: AIS_Trihedron; theMode: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "AcceptDisplayMode", header: "AIS_Trihedron.hxx".}
proc Signature*(this: AIS_Trihedron): Standard_Integer {.noSideEffect,
    importcpp: "Signature", header: "AIS_Trihedron.hxx".}
proc Type*(this: AIS_Trihedron): AIS_KindOfInteractive {.noSideEffect,
    importcpp: "Type", header: "AIS_Trihedron.hxx".}
proc SetColor*(this: var AIS_Trihedron; theColor: Quantity_Color) {.
    importcpp: "SetColor", header: "AIS_Trihedron.hxx".}
proc SetTextColor*(this: var AIS_Trihedron; theColor: Quantity_Color) {.
    importcpp: "SetTextColor", header: "AIS_Trihedron.hxx".}
proc HasTextColor*(this: AIS_Trihedron): Standard_Boolean {.noSideEffect,
    importcpp: "HasTextColor", header: "AIS_Trihedron.hxx".}
proc TextColor*(this: AIS_Trihedron): Quantity_Color {.noSideEffect,
    importcpp: "TextColor", header: "AIS_Trihedron.hxx".}
proc SetArrowColor*(this: var AIS_Trihedron; theColor: Quantity_Color) {.
    importcpp: "SetArrowColor", header: "AIS_Trihedron.hxx".}
proc HasArrowColor*(this: AIS_Trihedron): Standard_Boolean {.noSideEffect,
    importcpp: "HasArrowColor", header: "AIS_Trihedron.hxx".}
proc ArrowColor*(this: AIS_Trihedron): Quantity_Color {.noSideEffect,
    importcpp: "ArrowColor", header: "AIS_Trihedron.hxx".}
proc UnsetColor*(this: var AIS_Trihedron) {.importcpp: "UnsetColor",
                                        header: "AIS_Trihedron.hxx".}
proc SetDatumPartColor*(this: var AIS_Trihedron; thePart: Prs3d_DatumParts;
                       theColor: Quantity_Color) {.importcpp: "SetDatumPartColor",
    header: "AIS_Trihedron.hxx".}
proc DatumPartColor*(this: var AIS_Trihedron; thePart: Prs3d_DatumParts): Quantity_Color {.
    importcpp: "DatumPartColor", header: "AIS_Trihedron.hxx".}
proc SetOriginColor*(this: var AIS_Trihedron; theColor: Quantity_Color) {.
    importcpp: "SetOriginColor", header: "AIS_Trihedron.hxx".}
proc SetXAxisColor*(this: var AIS_Trihedron; theColor: Quantity_Color) {.
    importcpp: "SetXAxisColor", header: "AIS_Trihedron.hxx".}
proc SetYAxisColor*(this: var AIS_Trihedron; theColor: Quantity_Color) {.
    importcpp: "SetYAxisColor", header: "AIS_Trihedron.hxx".}
proc SetAxisColor*(this: var AIS_Trihedron; theColor: Quantity_Color) {.
    importcpp: "SetAxisColor", header: "AIS_Trihedron.hxx".}
proc ToDrawArrows*(this: AIS_Trihedron): Standard_Boolean {.noSideEffect,
    importcpp: "ToDrawArrows", header: "AIS_Trihedron.hxx".}
proc SetDrawArrows*(this: var AIS_Trihedron; theToDraw: Standard_Boolean) {.
    importcpp: "SetDrawArrows", header: "AIS_Trihedron.hxx".}
proc SetSelectionPriority*(this: var AIS_Trihedron; thePart: Prs3d_DatumParts;
                          thePriority: Standard_Integer) {.
    importcpp: "SetSelectionPriority", header: "AIS_Trihedron.hxx".}
proc SelectionPriority*(this: var AIS_Trihedron; thePart: Prs3d_DatumParts): Standard_Integer {.
    importcpp: "SelectionPriority", header: "AIS_Trihedron.hxx".}
proc SetLabel*(this: var AIS_Trihedron; thePart: Prs3d_DatumParts;
              thePriority: TCollection_ExtendedString) {.importcpp: "SetLabel",
    header: "AIS_Trihedron.hxx".}
proc Label*(this: var AIS_Trihedron; thePart: Prs3d_DatumParts): TCollection_ExtendedString {.
    importcpp: "Label", header: "AIS_Trihedron.hxx".}
proc ClearSelected*(this: var AIS_Trihedron) {.importcpp: "ClearSelected",
    header: "AIS_Trihedron.hxx".}
proc HilightSelected*(this: var AIS_Trihedron;
                     thePM: handle[PrsMgr_PresentationManager3d];
                     theOwners: SelectMgr_SequenceOfOwner) {.
    importcpp: "HilightSelected", header: "AIS_Trihedron.hxx".}
proc HilightOwnerWithColor*(this: var AIS_Trihedron;
                           thePM: handle[PrsMgr_PresentationManager3d];
                           theStyle: handle[Prs3d_Drawer];
                           theOwner: handle[SelectMgr_EntityOwner]) {.
    importcpp: "HilightOwnerWithColor", header: "AIS_Trihedron.hxx".}
discard "forward decl of AIS_Trihedron"
type
  Handle_AIS_Trihedron* = handle[AIS_Trihedron]
