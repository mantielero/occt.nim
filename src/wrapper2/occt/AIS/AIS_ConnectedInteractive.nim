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

import
  AIS_InteractiveObject, AIS_KindOfInteractive, ../TopoDS/TopoDS_Shape

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

  AIS_ConnectedInteractivebase_type* = AIS_InteractiveObject

proc get_type_name*(): cstring {.importcpp: "AIS_ConnectedInteractive::get_type_name(@)",
                              header: "AIS_ConnectedInteractive.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "AIS_ConnectedInteractive::get_type_descriptor(@)",
    header: "AIS_ConnectedInteractive.hxx".}
proc DynamicType*(this: AIS_ConnectedInteractive): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "AIS_ConnectedInteractive.hxx".}
proc constructAIS_ConnectedInteractive*(aTypeOfPresentation3d: PrsMgr_TypeOfPresentation3d = PrsMgr_TOP_AllView): AIS_ConnectedInteractive {.
    constructor, importcpp: "AIS_ConnectedInteractive(@)",
    header: "AIS_ConnectedInteractive.hxx".}
proc Type*(this: AIS_ConnectedInteractive): AIS_KindOfInteractive {.noSideEffect,
    importcpp: "Type", header: "AIS_ConnectedInteractive.hxx".}
proc Signature*(this: AIS_ConnectedInteractive): Standard_Integer {.noSideEffect,
    importcpp: "Signature", header: "AIS_ConnectedInteractive.hxx".}
proc Connect*(this: var AIS_ConnectedInteractive;
             theAnotherObj: handle[AIS_InteractiveObject]) {.importcpp: "Connect",
    header: "AIS_ConnectedInteractive.hxx".}
proc Connect*(this: var AIS_ConnectedInteractive;
             theAnotherObj: handle[AIS_InteractiveObject]; theLocation: gp_Trsf) {.
    importcpp: "Connect", header: "AIS_ConnectedInteractive.hxx".}
proc Connect*(this: var AIS_ConnectedInteractive;
             theAnotherObj: handle[AIS_InteractiveObject];
             theLocation: handle[TopLoc_Datum3D]) {.importcpp: "Connect",
    header: "AIS_ConnectedInteractive.hxx".}
proc HasConnection*(this: AIS_ConnectedInteractive): Standard_Boolean {.
    noSideEffect, importcpp: "HasConnection",
    header: "AIS_ConnectedInteractive.hxx".}
proc ConnectedTo*(this: AIS_ConnectedInteractive): handle[AIS_InteractiveObject] {.
    noSideEffect, importcpp: "ConnectedTo", header: "AIS_ConnectedInteractive.hxx".}
proc Disconnect*(this: var AIS_ConnectedInteractive) {.importcpp: "Disconnect",
    header: "AIS_ConnectedInteractive.hxx".}
proc AcceptShapeDecomposition*(this: AIS_ConnectedInteractive): Standard_Boolean {.
    noSideEffect, importcpp: "AcceptShapeDecomposition",
    header: "AIS_ConnectedInteractive.hxx".}
proc AcceptDisplayMode*(this: AIS_ConnectedInteractive; theMode: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "AcceptDisplayMode",
    header: "AIS_ConnectedInteractive.hxx".}
discard "forward decl of AIS_ConnectedInteractive"
type
  Handle_AIS_ConnectedInteractive* = handle[AIS_ConnectedInteractive]
