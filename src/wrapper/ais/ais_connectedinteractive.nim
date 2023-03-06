import ../../tkmath/toploc/toploc_types
import ../../tkmath/gp/gp_types
import ../../tkernel/standard/standard_types
import ais_types
import ../prsmgr/prsmgr_types




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



proc newAIS_ConnectedInteractive*(aTypeOfPresentation3d: PrsMgrTypeOfPresentation3d = prsMgrTOP_AllView): AIS_ConnectedInteractive {.
    cdecl, constructor, importcpp: "AIS_ConnectedInteractive(@)", header: "AIS_ConnectedInteractive.hxx".}
proc `type`*(this: AIS_ConnectedInteractive): AIS_KindOfInteractive {.noSideEffect,
    cdecl, importcpp: "Type", header: "AIS_ConnectedInteractive.hxx".}
proc signature*(this: AIS_ConnectedInteractive): cint {.noSideEffect, cdecl,
    importcpp: "Signature", header: "AIS_ConnectedInteractive.hxx".}
proc connect*(this: var AIS_ConnectedInteractive;
             theAnotherObj: Handle[AIS_InteractiveObject]) {.cdecl,
    importcpp: "Connect", header: "AIS_ConnectedInteractive.hxx".}
proc connect*(this: var AIS_ConnectedInteractive;
             theAnotherObj: Handle[AIS_InteractiveObject]; theLocation: TrsfObj) {.
    cdecl, importcpp: "Connect", header: "AIS_ConnectedInteractive.hxx".}
proc connect*(this: var AIS_ConnectedInteractive;
             theAnotherObj: Handle[AIS_InteractiveObject];
             theLocation: Handle[TopLocDatum3D]) {.cdecl, importcpp: "Connect",
    header: "AIS_ConnectedInteractive.hxx".}
proc hasConnection*(this: AIS_ConnectedInteractive): bool {.noSideEffect, cdecl,
    importcpp: "HasConnection", header: "AIS_ConnectedInteractive.hxx".}
proc connectedTo*(this: AIS_ConnectedInteractive): Handle[AIS_InteractiveObject] {.
    noSideEffect, cdecl, importcpp: "ConnectedTo", header: "AIS_ConnectedInteractive.hxx".}
proc disconnect*(this: var AIS_ConnectedInteractive) {.cdecl,
    importcpp: "Disconnect", header: "AIS_ConnectedInteractive.hxx".}
proc acceptShapeDecomposition*(this: AIS_ConnectedInteractive): bool {.noSideEffect,
    cdecl, importcpp: "AcceptShapeDecomposition", header: "AIS_ConnectedInteractive.hxx".}
proc acceptDisplayMode*(this: AIS_ConnectedInteractive; theMode: cint): bool {.
    noSideEffect, cdecl, importcpp: "AcceptDisplayMode", header: "AIS_ConnectedInteractive.hxx".}



