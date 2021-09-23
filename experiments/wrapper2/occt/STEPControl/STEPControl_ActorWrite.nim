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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, ../STEPConstruct/STEPConstruct_ContextTool,
  ../Transfer/Transfer_ActorOfFinderProcess, ../Standard/Standard_Boolean,
  ../TopTools/TopTools_HSequenceOfShape, STEPControl_StepModelType

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
  Handle_STEPControl_ActorWrite* = handle[STEPControl_ActorWrite]

## ! This class performs the transfer of a Shape from TopoDS
## ! to AP203 or AP214 (CD2 or DIS)

type
  STEPControl_ActorWrite* {.importcpp: "STEPControl_ActorWrite",
                           header: "STEPControl_ActorWrite.hxx", bycopy.} = object of Transfer_ActorOfFinderProcess ##
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


proc constructSTEPControl_ActorWrite*(): STEPControl_ActorWrite {.constructor,
    importcpp: "STEPControl_ActorWrite(@)", header: "STEPControl_ActorWrite.hxx".}
proc Recognize*(this: var STEPControl_ActorWrite; start: handle[Transfer_Finder]): Standard_Boolean {.
    importcpp: "Recognize", header: "STEPControl_ActorWrite.hxx".}
proc Transfer*(this: var STEPControl_ActorWrite; start: handle[Transfer_Finder];
              FP: handle[Transfer_FinderProcess];
              theProgress: Message_ProgressRange = Message_ProgressRange()): handle[
    Transfer_Binder] {.importcpp: "Transfer", header: "STEPControl_ActorWrite.hxx".}
proc TransferSubShape*(this: var STEPControl_ActorWrite;
                      start: handle[Transfer_Finder];
                      SDR: handle[StepShape_ShapeDefinitionRepresentation];
                      AX1: var handle[StepGeom_Axis2Placement3d];
                      FP: handle[Transfer_FinderProcess];
                      shapeGroup: handle[TopTools_HSequenceOfShape] = nil;
                      isManifold: Standard_Boolean = Standard_True; theProgress: Message_ProgressRange = Message_ProgressRange()): handle[
    Transfer_Binder] {.importcpp: "TransferSubShape",
                      header: "STEPControl_ActorWrite.hxx".}
proc TransferShape*(this: var STEPControl_ActorWrite;
                   start: handle[Transfer_Finder];
                   SDR: handle[StepShape_ShapeDefinitionRepresentation];
                   FP: handle[Transfer_FinderProcess];
                   shapeGroup: handle[TopTools_HSequenceOfShape] = nil;
                   isManifold: Standard_Boolean = Standard_True;
                   theProgress: Message_ProgressRange = Message_ProgressRange()): handle[
    Transfer_Binder] {.importcpp: "TransferShape",
                      header: "STEPControl_ActorWrite.hxx".}
proc TransferCompound*(this: var STEPControl_ActorWrite;
                      start: handle[Transfer_Finder];
                      SDR: handle[StepShape_ShapeDefinitionRepresentation];
                      FP: handle[Transfer_FinderProcess]; theProgress: Message_ProgressRange = Message_ProgressRange()): handle[
    Transfer_Binder] {.importcpp: "TransferCompound",
                      header: "STEPControl_ActorWrite.hxx".}
proc SetMode*(this: var STEPControl_ActorWrite; M: STEPControl_StepModelType) {.
    importcpp: "SetMode", header: "STEPControl_ActorWrite.hxx".}
proc Mode*(this: STEPControl_ActorWrite): STEPControl_StepModelType {.noSideEffect,
    importcpp: "Mode", header: "STEPControl_ActorWrite.hxx".}
proc SetGroupMode*(this: var STEPControl_ActorWrite; mode: Standard_Integer) {.
    importcpp: "SetGroupMode", header: "STEPControl_ActorWrite.hxx".}
proc GroupMode*(this: STEPControl_ActorWrite): Standard_Integer {.noSideEffect,
    importcpp: "GroupMode", header: "STEPControl_ActorWrite.hxx".}
proc SetTolerance*(this: var STEPControl_ActorWrite; Tol: Standard_Real) {.
    importcpp: "SetTolerance", header: "STEPControl_ActorWrite.hxx".}
proc IsAssembly*(this: STEPControl_ActorWrite; S: var TopoDS_Shape): Standard_Boolean {.
    noSideEffect, importcpp: "IsAssembly", header: "STEPControl_ActorWrite.hxx".}
type
  STEPControl_ActorWritebase_type* = Transfer_ActorOfFinderProcess

proc get_type_name*(): cstring {.importcpp: "STEPControl_ActorWrite::get_type_name(@)",
                              header: "STEPControl_ActorWrite.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "STEPControl_ActorWrite::get_type_descriptor(@)",
    header: "STEPControl_ActorWrite.hxx".}
proc DynamicType*(this: STEPControl_ActorWrite): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "STEPControl_ActorWrite.hxx".}