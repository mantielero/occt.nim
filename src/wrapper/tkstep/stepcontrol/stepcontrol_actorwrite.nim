import ../../tkxsbase/transfer/transfer_types
import ../../tkernel/standard/standard_types
import ../../tkbrep/topods/topods_types
import stepcontrol_types
import ../../tkernel/message/[message_types, message_progressrange]
import ../../tkbrep/toptools/toptools_types




##  Created on: 1995-01-31
##  Created by: Dieter THIEMANN
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





proc newSTEPControlActorWrite*(): STEPControlActorWrite {.cdecl, constructor,
    importcpp: "STEPControl_ActorWrite(@)", header: "STEPControl_ActorWrite.hxx".}
proc recognize*(this: var STEPControlActorWrite; start: Handle[TransferFinder]): bool {.
    cdecl, importcpp: "Recognize", header: "STEPControl_ActorWrite.hxx".}
proc transfer*(this: var STEPControlActorWrite; start: Handle[TransferFinder];
              fp: Handle[TransferFinderProcess];
              theProgress: MessageProgressRange = newMessageProgressRange()): Handle[
    TransferBinder] {.cdecl, importcpp: "Transfer", header: "STEPControl_ActorWrite.hxx".}
proc transferSubShape*(this: var STEPControlActorWrite;
                      start: Handle[TransferFinder];
                      sdr: Handle[StepShapeShapeDefinitionRepresentation];
                      ax1: var Handle[StepGeomAxis2Placement3d];
                      fp: Handle[TransferFinderProcess];
                      shapeGroup: Handle[TopToolsHSequenceOfShape] = cast[Handle[TopToolsHSequenceOfShape]](nil);
                      isManifold: bool = true; theProgress: MessageProgressRange = newMessageProgressRange()): Handle[
    TransferBinder] {.cdecl, importcpp: "TransferSubShape", header: "STEPControl_ActorWrite.hxx".}
proc transferShape*(this: var STEPControlActorWrite; start: Handle[TransferFinder];
                   sdr: Handle[StepShapeShapeDefinitionRepresentation];
                   fp: Handle[TransferFinderProcess];
                   shapeGroup: Handle[TopToolsHSequenceOfShape] = cast[Handle[TopToolsHSequenceOfShape]](nil);
                   isManifold: bool = true;
                   theProgress: MessageProgressRange = newMessageProgressRange()): Handle[
    TransferBinder] {.cdecl, importcpp: "TransferShape", header: "STEPControl_ActorWrite.hxx".}
proc transferCompound*(this: var STEPControlActorWrite;
                      start: Handle[TransferFinder];
                      sdr: Handle[StepShapeShapeDefinitionRepresentation];
                      fp: Handle[TransferFinderProcess]; theProgress: MessageProgressRange = newMessageProgressRange()): Handle[
    TransferBinder] {.cdecl, importcpp: "TransferCompound", header: "STEPControl_ActorWrite.hxx".}
proc setMode*(this: var STEPControlActorWrite; m: STEPControlStepModelType) {.cdecl,
    importcpp: "SetMode", header: "STEPControl_ActorWrite.hxx".}
proc mode*(this: STEPControlActorWrite): STEPControlStepModelType {.noSideEffect,
    cdecl, importcpp: "Mode", header: "STEPControl_ActorWrite.hxx".}
proc setGroupMode*(this: var STEPControlActorWrite; mode: cint) {.cdecl,
    importcpp: "SetGroupMode", header: "STEPControl_ActorWrite.hxx".}
proc groupMode*(this: STEPControlActorWrite): cint {.noSideEffect, cdecl,
    importcpp: "GroupMode", header: "STEPControl_ActorWrite.hxx".}
proc setTolerance*(this: var STEPControlActorWrite; tol: cfloat) {.cdecl,
    importcpp: "SetTolerance", header: "STEPControl_ActorWrite.hxx".}
proc isAssembly*(this: STEPControlActorWrite; s: var TopoDS_Shape): bool {.
    noSideEffect, cdecl, importcpp: "IsAssembly", header: "STEPControl_ActorWrite.hxx".}


