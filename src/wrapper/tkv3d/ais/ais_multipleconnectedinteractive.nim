##  Created on: 1997-04-22
##  Created by: Guest Design
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

## ! Defines an Interactive Object by gathering together
## ! several object presentations. This is done through a
## ! list of interactive objects. These can also be
## ! Connected objects. That way memory-costly
## ! calculations of presentation are avoided.

type
  AIS_MultipleConnectedInteractive* {.importcpp: "AIS_MultipleConnectedInteractive", header: "AIS_MultipleConnectedInteractive.hxx",
                                     bycopy.} = object of AIS_InteractiveObject ## !
                                                                           ## Initializes the
                                                                           ## Interactive
                                                                           ## Object with
                                                                           ## multiple
                                                                           ## !
                                                                           ## connections to
                                                                           ## AIS_Interactive
                                                                           ## objects.
                                                                           ##  short
                                                                           ## aliases to
                                                                           ## Connect()
                                                                           ## method
                                                                           ## !
                                                                           ## Establishes the
                                                                           ## connection
                                                                           ## between the
                                                                           ## Connected
                                                                           ## Interactive
                                                                           ## Object,
                                                                           ## theInteractive, and its
                                                                           ## reference.
                                                                           ## !
                                                                           ## Copies local
                                                                           ## transformation and
                                                                           ## transformation
                                                                           ## persistence mode from
                                                                           ## theInteractive.
                                                                           ## !
                                                                           ## @return
                                                                           ## created
                                                                           ## instance
                                                                           ## object
                                                                           ## (AIS_ConnectedInteractive or
                                                                           ## AIS_MultipleConnectedInteractive)
                                                                           ## ! this
                                                                           ## method is
                                                                           ## redefined
                                                                           ## virtual;
                                                                           ## ! when the
                                                                           ## instance is
                                                                           ## connected to
                                                                           ## another
                                                                           ## !
                                                                           ## InteractiveObject,this
                                                                           ## method
                                                                           ## doesn't
                                                                           ## !
                                                                           ## compute
                                                                           ## anything, but just uses the
                                                                           ## !
                                                                           ## presentation of this last
                                                                           ## object, with
                                                                           ## ! a
                                                                           ## transformation if
                                                                           ## there's one
                                                                           ## stored.
                                                                           ## !
                                                                           ## Computes the
                                                                           ## selection for whole
                                                                           ## subtree in scene
                                                                           ## hierarchy.


proc newAIS_MultipleConnectedInteractive*(): AIS_MultipleConnectedInteractive {.
    cdecl, constructor, importcpp: "AIS_MultipleConnectedInteractive(@)",
    header: "AIS_MultipleConnectedInteractive.hxx".}
proc connect*(this: var AIS_MultipleConnectedInteractive;
             theAnotherObj: Handle[AIS_InteractiveObject];
             theLocation: Handle[TopLocDatum3D];
             theTrsfPers: Handle[Graphic3dTransformPers]): Handle[
    AIS_InteractiveObject] {.cdecl, importcpp: "Connect", header: "AIS_MultipleConnectedInteractive.hxx".}
proc `type`*(this: AIS_MultipleConnectedInteractive): AIS_KindOfInteractive {.
    noSideEffect, cdecl, importcpp: "Type", header: "AIS_MultipleConnectedInteractive.hxx".}
proc signature*(this: AIS_MultipleConnectedInteractive): cint {.noSideEffect, cdecl,
    importcpp: "Signature", header: "AIS_MultipleConnectedInteractive.hxx".}
proc hasConnection*(this: AIS_MultipleConnectedInteractive): bool {.noSideEffect,
    cdecl, importcpp: "HasConnection", header: "AIS_MultipleConnectedInteractive.hxx".}
proc disconnect*(this: var AIS_MultipleConnectedInteractive;
                theInteractive: Handle[AIS_InteractiveObject]) {.cdecl,
    importcpp: "Disconnect", header: "AIS_MultipleConnectedInteractive.hxx".}
proc disconnectAll*(this: var AIS_MultipleConnectedInteractive) {.cdecl,
    importcpp: "DisconnectAll", header: "AIS_MultipleConnectedInteractive.hxx".}
proc acceptShapeDecomposition*(this: AIS_MultipleConnectedInteractive): bool {.
    noSideEffect, cdecl, importcpp: "AcceptShapeDecomposition", header: "AIS_MultipleConnectedInteractive.hxx".}
proc getAssemblyOwner*(this: AIS_MultipleConnectedInteractive): Handle[
    SelectMgrEntityOwner] {.noSideEffect, cdecl, importcpp: "GetAssemblyOwner",
                           header: "AIS_MultipleConnectedInteractive.hxx".}
proc globalSelOwner*(this: AIS_MultipleConnectedInteractive): Handle[
    SelectMgrEntityOwner] {.noSideEffect, cdecl, importcpp: "GlobalSelOwner",
                           header: "AIS_MultipleConnectedInteractive.hxx".}
proc setContext*(this: var AIS_MultipleConnectedInteractive;
                theCtx: Handle[AIS_InteractiveContext]) {.cdecl,
    importcpp: "SetContext", header: "AIS_MultipleConnectedInteractive.hxx".}
proc connect*(this: var AIS_MultipleConnectedInteractive;
             theAnotherObj: Handle[AIS_InteractiveObject]): Handle[
    AIS_InteractiveObject] {.cdecl, importcpp: "Connect", header: "AIS_MultipleConnectedInteractive.hxx".}
proc connect*(this: var AIS_MultipleConnectedInteractive;
             theAnotherObj: Handle[AIS_InteractiveObject]; theLocation: TrsfObj): Handle[
    AIS_InteractiveObject] {.cdecl, importcpp: "Connect", header: "AIS_MultipleConnectedInteractive.hxx".}
proc connect*(this: var AIS_MultipleConnectedInteractive;
             theAnotherObj: Handle[AIS_InteractiveObject]; theLocation: TrsfObj;
             theTrsfPers: Handle[Graphic3dTransformPers]): Handle[
    AIS_InteractiveObject] {.cdecl, importcpp: "Connect", header: "AIS_MultipleConnectedInteractive.hxx".}
proc connect*(this: var AIS_MultipleConnectedInteractive;
             theInteractive: Handle[AIS_InteractiveObject]; theLocation: TrsfObj;
             theTrsfPersFlag: Graphic3dTransModeFlags; theTrsfPersPoint: PntObj): Handle[
    AIS_InteractiveObject] {.cdecl, importcpp: "Connect", header: "AIS_MultipleConnectedInteractive.hxx".}
type
  HandleAIS_MultipleConnectedInteractive* = Handle[
      AIS_MultipleConnectedInteractive]
