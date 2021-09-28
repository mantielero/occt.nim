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

  AIS_TrihedronbaseType* = AIS_InteractiveObject

proc getTypeName*(): cstring {.importcpp: "AIS_Trihedron::get_type_name(@)",
                            header: "AIS_Trihedron.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "AIS_Trihedron::get_type_descriptor(@)",
    header: "AIS_Trihedron.hxx".}
proc dynamicType*(this: AIS_Trihedron): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_Trihedron.hxx".}
proc constructAIS_Trihedron*(theComponent: Handle[GeomAxis2Placement]): AIS_Trihedron {.
    constructor, importcpp: "AIS_Trihedron(@)", header: "AIS_Trihedron.hxx".}
proc setDatumDisplayMode*(this: var AIS_Trihedron; theMode: Prs3dDatumMode) {.
    importcpp: "SetDatumDisplayMode", header: "AIS_Trihedron.hxx".}
proc datumDisplayMode*(this: AIS_Trihedron): Prs3dDatumMode {.noSideEffect,
    importcpp: "DatumDisplayMode", header: "AIS_Trihedron.hxx".}
proc component*(this: AIS_Trihedron): Handle[GeomAxis2Placement] {.noSideEffect,
    importcpp: "Component", header: "AIS_Trihedron.hxx".}
proc setComponent*(this: var AIS_Trihedron; theComponent: Handle[GeomAxis2Placement]) {.
    importcpp: "SetComponent", header: "AIS_Trihedron.hxx".}
proc hasOwnSize*(this: AIS_Trihedron): bool {.noSideEffect, importcpp: "HasOwnSize",
    header: "AIS_Trihedron.hxx".}
proc setSize*(this: var AIS_Trihedron; theValue: cfloat) {.importcpp: "SetSize",
    header: "AIS_Trihedron.hxx".}
proc unsetSize*(this: var AIS_Trihedron) {.importcpp: "UnsetSize",
                                       header: "AIS_Trihedron.hxx".}
proc size*(this: AIS_Trihedron): cfloat {.noSideEffect, importcpp: "Size",
                                      header: "AIS_Trihedron.hxx".}
proc acceptDisplayMode*(this: AIS_Trihedron; theMode: cint): bool {.noSideEffect,
    importcpp: "AcceptDisplayMode", header: "AIS_Trihedron.hxx".}
proc signature*(this: AIS_Trihedron): cint {.noSideEffect, importcpp: "Signature",
    header: "AIS_Trihedron.hxx".}
proc `type`*(this: AIS_Trihedron): AIS_KindOfInteractive {.noSideEffect,
    importcpp: "Type", header: "AIS_Trihedron.hxx".}
proc setColor*(this: var AIS_Trihedron; theColor: QuantityColor) {.
    importcpp: "SetColor", header: "AIS_Trihedron.hxx".}
proc setTextColor*(this: var AIS_Trihedron; theColor: QuantityColor) {.
    importcpp: "SetTextColor", header: "AIS_Trihedron.hxx".}
proc hasTextColor*(this: AIS_Trihedron): bool {.noSideEffect,
    importcpp: "HasTextColor", header: "AIS_Trihedron.hxx".}
proc textColor*(this: AIS_Trihedron): QuantityColor {.noSideEffect,
    importcpp: "TextColor", header: "AIS_Trihedron.hxx".}
proc setArrowColor*(this: var AIS_Trihedron; theColor: QuantityColor) {.
    importcpp: "SetArrowColor", header: "AIS_Trihedron.hxx".}
proc hasArrowColor*(this: AIS_Trihedron): bool {.noSideEffect,
    importcpp: "HasArrowColor", header: "AIS_Trihedron.hxx".}
proc arrowColor*(this: AIS_Trihedron): QuantityColor {.noSideEffect,
    importcpp: "ArrowColor", header: "AIS_Trihedron.hxx".}
proc unsetColor*(this: var AIS_Trihedron) {.importcpp: "UnsetColor",
                                        header: "AIS_Trihedron.hxx".}
proc setDatumPartColor*(this: var AIS_Trihedron; thePart: Prs3dDatumParts;
                       theColor: QuantityColor) {.importcpp: "SetDatumPartColor",
    header: "AIS_Trihedron.hxx".}
proc datumPartColor*(this: var AIS_Trihedron; thePart: Prs3dDatumParts): QuantityColor {.
    importcpp: "DatumPartColor", header: "AIS_Trihedron.hxx".}
proc setOriginColor*(this: var AIS_Trihedron; theColor: QuantityColor) {.
    importcpp: "SetOriginColor", header: "AIS_Trihedron.hxx".}
proc setXAxisColor*(this: var AIS_Trihedron; theColor: QuantityColor) {.
    importcpp: "SetXAxisColor", header: "AIS_Trihedron.hxx".}
proc setYAxisColor*(this: var AIS_Trihedron; theColor: QuantityColor) {.
    importcpp: "SetYAxisColor", header: "AIS_Trihedron.hxx".}
proc setAxisColor*(this: var AIS_Trihedron; theColor: QuantityColor) {.
    importcpp: "SetAxisColor", header: "AIS_Trihedron.hxx".}
proc toDrawArrows*(this: AIS_Trihedron): bool {.noSideEffect,
    importcpp: "ToDrawArrows", header: "AIS_Trihedron.hxx".}
proc setDrawArrows*(this: var AIS_Trihedron; theToDraw: bool) {.
    importcpp: "SetDrawArrows", header: "AIS_Trihedron.hxx".}
proc setSelectionPriority*(this: var AIS_Trihedron; thePart: Prs3dDatumParts;
                          thePriority: cint) {.importcpp: "SetSelectionPriority",
    header: "AIS_Trihedron.hxx".}
proc selectionPriority*(this: var AIS_Trihedron; thePart: Prs3dDatumParts): cint {.
    importcpp: "SelectionPriority", header: "AIS_Trihedron.hxx".}
proc setLabel*(this: var AIS_Trihedron; thePart: Prs3dDatumParts;
              thePriority: TCollectionExtendedString) {.importcpp: "SetLabel",
    header: "AIS_Trihedron.hxx".}
proc label*(this: var AIS_Trihedron; thePart: Prs3dDatumParts): TCollectionExtendedString {.
    importcpp: "Label", header: "AIS_Trihedron.hxx".}
proc clearSelected*(this: var AIS_Trihedron) {.importcpp: "ClearSelected",
    header: "AIS_Trihedron.hxx".}
proc hilightSelected*(this: var AIS_Trihedron;
                     thePM: Handle[PrsMgrPresentationManager3d];
                     theOwners: SelectMgrSequenceOfOwner) {.
    importcpp: "HilightSelected", header: "AIS_Trihedron.hxx".}
proc hilightOwnerWithColor*(this: var AIS_Trihedron;
                           thePM: Handle[PrsMgrPresentationManager3d];
                           theStyle: Handle[Prs3dDrawer];
                           theOwner: Handle[SelectMgrEntityOwner]) {.
    importcpp: "HilightOwnerWithColor", header: "AIS_Trihedron.hxx".}
discard "forward decl of AIS_Trihedron"
type
  HandleC1C1* = Handle[AIS_Trihedron]


























