##  Created on: 1997-01-08
##  Created by: Robert COUBLANC
##  Copyright (c) 1997-1999 Matra Datavision
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

## ! Creates an arbitrary located instance of another Interactive Object,
## ! which serves as a reference.
## ! This allows you to use the Connected Interactive
## ! Object without having to recalculate presentation,
## ! selection or graphic structure. These are deduced
## ! from your reference object.
## ! The relation between the connected interactive object
## ! and its source is generally one of geometric transformation.
## ! AIS_ConnectedInteractive class supports selection mode 0 for any InteractiveObject and
## ! all standard modes if its reference based on AIS_Shape.
## ! Descendants may redefine ComputeSelection() though.
## ! Also ConnectedInteractive will handle HLR if its reference based on AIS_Shape.

type
  AIS_ConnectedInteractive* {.importcpp: "AIS_ConnectedInteractive",
                             header: "AIS_ConnectedInteractive.hxx", bycopy.} = object of AIS_InteractiveObject ##
                                                                                                         ## !
                                                                                                         ## Disconnects
                                                                                                         ## the
                                                                                                         ## previous
                                                                                                         ## view
                                                                                                         ## and
                                                                                                         ## sets
                                                                                                         ## highlight
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## mode
                                                                                                         ## to
                                                                                                         ## 0.
                                                                                                         ## This
                                                                                                         ## highlights
                                                                                                         ## the
                                                                                                         ## wireframe
                                                                                                         ## presentation
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## aTypeOfPresentation3d.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Top_AllView
                                                                                                         ## deactivates
                                                                                                         ## hidden
                                                                                                         ## line
                                                                                                         ## removal.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Calculates
                                                                                                         ## the
                                                                                                         ## view
                                                                                                         ## aPresentation
                                                                                                         ## and
                                                                                                         ## its
                                                                                                         ## updates.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## The
                                                                                                         ## latter
                                                                                                         ## are
                                                                                                         ## managed
                                                                                                         ## by
                                                                                                         ## aPresentationManager.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## The
                                                                                                         ## display
                                                                                                         ## mode
                                                                                                         ## aMode
                                                                                                         ## is
                                                                                                         ## 0
                                                                                                         ## by
                                                                                                         ## default.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## this
                                                                                                         ## method
                                                                                                         ## is
                                                                                                         ## redefined
                                                                                                         ## virtual;
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## when
                                                                                                         ## the
                                                                                                         ## instance
                                                                                                         ## is
                                                                                                         ## connected
                                                                                                         ## to
                                                                                                         ## another
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## InteractiveObject,this
                                                                                                         ## method
                                                                                                         ## doesn't
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## compute
                                                                                                         ## anything,
                                                                                                         ## but
                                                                                                         ## just
                                                                                                         ## uses
                                                                                                         ## the
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## presentation
                                                                                                         ## of
                                                                                                         ## this
                                                                                                         ## last
                                                                                                         ## object,
                                                                                                         ## with
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## a
                                                                                                         ## transformation
                                                                                                         ## if
                                                                                                         ## there's
                                                                                                         ## one
                                                                                                         ## stored.

  AIS_ConnectedInteractivebaseType* = AIS_InteractiveObject

proc getTypeName*(): cstring {.importcpp: "AIS_ConnectedInteractive::get_type_name(@)",
                            header: "AIS_ConnectedInteractive.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "AIS_ConnectedInteractive::get_type_descriptor(@)",
    header: "AIS_ConnectedInteractive.hxx".}
proc dynamicType*(this: AIS_ConnectedInteractive): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "AIS_ConnectedInteractive.hxx".}
proc constructAIS_ConnectedInteractive*(aTypeOfPresentation3d: PrsMgrTypeOfPresentation3d = prsMgrTOP_AllView): AIS_ConnectedInteractive {.
    constructor, importcpp: "AIS_ConnectedInteractive(@)",
    header: "AIS_ConnectedInteractive.hxx".}
proc `type`*(this: AIS_ConnectedInteractive): AIS_KindOfInteractive {.noSideEffect,
    importcpp: "Type", header: "AIS_ConnectedInteractive.hxx".}
proc signature*(this: AIS_ConnectedInteractive): int {.noSideEffect,
    importcpp: "Signature", header: "AIS_ConnectedInteractive.hxx".}
proc connect*(this: var AIS_ConnectedInteractive;
             theAnotherObj: Handle[AIS_InteractiveObject]) {.importcpp: "Connect",
    header: "AIS_ConnectedInteractive.hxx".}
proc connect*(this: var AIS_ConnectedInteractive;
             theAnotherObj: Handle[AIS_InteractiveObject]; theLocation: Trsf) {.
    importcpp: "Connect", header: "AIS_ConnectedInteractive.hxx".}
proc connect*(this: var AIS_ConnectedInteractive;
             theAnotherObj: Handle[AIS_InteractiveObject];
             theLocation: Handle[TopLocDatum3D]) {.importcpp: "Connect",
    header: "AIS_ConnectedInteractive.hxx".}
proc hasConnection*(this: AIS_ConnectedInteractive): bool {.noSideEffect,
    importcpp: "HasConnection", header: "AIS_ConnectedInteractive.hxx".}
proc connectedTo*(this: AIS_ConnectedInteractive): Handle[AIS_InteractiveObject] {.
    noSideEffect, importcpp: "ConnectedTo", header: "AIS_ConnectedInteractive.hxx".}
proc disconnect*(this: var AIS_ConnectedInteractive) {.importcpp: "Disconnect",
    header: "AIS_ConnectedInteractive.hxx".}
proc acceptShapeDecomposition*(this: AIS_ConnectedInteractive): bool {.noSideEffect,
    importcpp: "AcceptShapeDecomposition", header: "AIS_ConnectedInteractive.hxx".}
proc acceptDisplayMode*(this: AIS_ConnectedInteractive; theMode: int): bool {.
    noSideEffect, importcpp: "AcceptDisplayMode",
    header: "AIS_ConnectedInteractive.hxx".}
discard "forward decl of AIS_ConnectedInteractive"
type
  HandleAIS_ConnectedInteractive* = Handle[AIS_ConnectedInteractive]

