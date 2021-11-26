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

discard "forward decl of Transfer_Finder"
discard "forward decl of Transfer_Binder"
discard "forward decl of Transfer_FinderProcess"
discard "forward decl of StepShape_ShapeDefinitionRepresentation"
discard "forward decl of StepGeom_Axis2Placement3d"
discard "forward decl of TopoDS_Shape"
discard "forward decl of StepShape_NonManifoldSurfaceShapeRepresentation"
discard "forward decl of STEPControl_ActorWrite"
discard "forward decl of STEPControl_ActorWrite"
type
  STEPControlActorWrite* {.importcpp: "STEPControl_ActorWrite",
                          header: "STEPControl_ActorWrite.hxx", bycopy.} = object #of TransferActorOfFinderProcess ##
                                                                                                           ## !
                                                                                                           ## Non-manifold
                                                                                                           ## shapes
                                                                                                           ## are
                                                                                                           ## stored
                                                                                                           ## in
                                                                                                           ## NMSSR
                                                                                                           ## group
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## (NON_MANIFOLD_SURFACE_SHAPE_REPRESENTATION).
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## Use
                                                                                                           ## this
                                                                                                           ## method
                                                                                                           ## to
                                                                                                           ## get
                                                                                                           ## the
                                                                                                           ## corresponding
                                                                                                           ## NMSSR
                                                                                                           ## (or
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## to
                                                                                                           ## create
                                                                                                           ## a
                                                                                                           ## new
                                                                                                           ## one
                                                                                                           ## if
                                                                                                           ## doesn't
                                                                                                           ## exist
                                                                                                           ## yet)
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## (ssv;
                                                                                                           ## 13.11.2010)

type
  HandleSTEPControlActorWrite* = Handle[STEPControlActorWrite]

## ! This class performs the transfer of a Shape from TopoDS
## ! to AP203 or AP214 (CD2 or DIS)

#type
#  STEPControlActorWritebaseType* = TransferActorOfFinderProcess

proc constructSTEPControlActorWrite*(): STEPControlActorWrite {.constructor,
    importcpp: "STEPControl_ActorWrite(@)", header: "STEPControl_ActorWrite.hxx".}
#[ proc recognize*(this: var STEPControlActorWrite; start: Handle[TransferFinder]): StandardBoolean {.
    importcpp: "Recognize", header: "STEPControl_ActorWrite.hxx".} ]#
#[ proc transfer*(this: var STEPControlActorWrite; start: Handle[TransferFinder];
              fp: Handle[TransferFinderProcess];
              theProgress: MessageProgressRange = messageProgressRange()): Handle[
    TransferBinder] {.importcpp: "Transfer", header: "STEPControl_ActorWrite.hxx".} ]#
#[ proc transferSubShape*(this: var STEPControlActorWrite;
                      start: Handle[TransferFinder];
                      sdr: Handle[StepShapeShapeDefinitionRepresentation];
                      ax1: var Handle[StepGeomAxis2Placement3d];
                      fp: Handle[TransferFinderProcess];
                      shapeGroup: Handle[TopToolsHSequenceOfShape] = nil;
                      isManifold: StandardBoolean = true; theProgress: MessageProgressRange = messageProgressRange()): Handle[
    TransferBinder] {.importcpp: "TransferSubShape",
                     header: "STEPControl_ActorWrite.hxx".} ]#
#[ proc transferShape*(this: var STEPControlActorWrite; start: Handle[TransferFinder];
                   sdr: Handle[StepShapeShapeDefinitionRepresentation];
                   fp: Handle[TransferFinderProcess];
                   shapeGroup: Handle[TopToolsHSequenceOfShape] = nil;
                   isManifold: StandardBoolean = true;
                   theProgress: MessageProgressRange = messageProgressRange()): Handle[
    TransferBinder] {.importcpp: "TransferShape",
                     header: "STEPControl_ActorWrite.hxx".} ]#
#[ proc transferCompound*(this: var STEPControlActorWrite;
                      start: Handle[TransferFinder];
                      sdr: Handle[StepShapeShapeDefinitionRepresentation];
                      fp: Handle[TransferFinderProcess]; theProgress: MessageProgressRange = messageProgressRange()): Handle[
    TransferBinder] {.importcpp: "TransferCompound",
                     header: "STEPControl_ActorWrite.hxx".} ]#
proc setMode*(this: var STEPControlActorWrite; m: STEPControlStepModelType) {.
    importcpp: "SetMode", header: "STEPControl_ActorWrite.hxx".}
proc mode*(this: STEPControlActorWrite): STEPControlStepModelType {.noSideEffect,
    importcpp: "Mode", header: "STEPControl_ActorWrite.hxx".}
proc setGroupMode*(this: var STEPControlActorWrite; mode: int) {.
    importcpp: "SetGroupMode", header: "STEPControl_ActorWrite.hxx".}
proc groupMode*(this: STEPControlActorWrite): int {.noSideEffect,
    importcpp: "GroupMode", header: "STEPControl_ActorWrite.hxx".}
proc setTolerance*(this: var STEPControlActorWrite; tol: StandardReal) {.
    importcpp: "SetTolerance", header: "STEPControl_ActorWrite.hxx".}
proc isAssembly*(this: STEPControlActorWrite; s: var TopoDS_Shape): StandardBoolean {.
    noSideEffect, importcpp: "IsAssembly", header: "STEPControl_ActorWrite.hxx".}


#[ proc getTypeName*(): cstring {.importcpp: "STEPControl_ActorWrite::get_type_name(@)",
                            header: "STEPControl_ActorWrite.hxx".} ]#
#[ proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "STEPControl_ActorWrite::get_type_descriptor(@)",
    header: "STEPControl_ActorWrite.hxx".} ]#
#[ proc dynamicType*(this: STEPControlActorWrite): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "STEPControl_ActorWrite.hxx".} ]#