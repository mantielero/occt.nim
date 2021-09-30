##  Created on: 1995-12-05
##  Created by: Christian CAILLET
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

discard "forward decl of XSControl_Controller"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Interface_HGraph"
discard "forward decl of Transfer_ActorOfTransientProcess"
discard "forward decl of Transfer_TransientProcess"
discard "forward decl of Standard_Transient"
discard "forward decl of Transfer_ResultFromModel"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Interface_CheckIterator"
discard "forward decl of Interface_Graph"
discard "forward decl of XSControl_TransferReader"
discard "forward decl of XSControl_TransferReader"
type
  HandleC1C1* = Handle[XSControlTransferReader]

## ! A TransferReader performs, manages, handles results of,
## ! transfers done when reading a file (i.e. from entities of an
## ! InterfaceModel, to objects for Imagine)
## !
## ! Running is organised around basic tools : TransientProcess and
## ! its Actor, results are Binders and CheckIterators. It implies
## ! control by a Controller (which prepares the Actor as required)
## !
## ! Getting results can be done directly on TransientProcess, but
## ! these are immediate "last produced" results. Each transfer of
## ! an entity gives a final result, but also possible intermediate
## ! data, and checks, which can be attached to sub-entities.
## !
## ! Hence, final results (which intermediates and checks) are
## ! recorded as ResultFromModel and can be queried individually.
## !
## ! Some more direct access are given for results which are
## ! Transient or Shapes

type
  XSControlTransferReader* {.importcpp: "XSControl_TransferReader",
                            header: "XSControl_TransferReader.hxx", bycopy.} = object of StandardTransient ##
                                                                                                    ## !
                                                                                                    ## Creates
                                                                                                    ## a
                                                                                                    ## TransferReader,
                                                                                                    ## empty


proc constructXSControlTransferReader*(): XSControlTransferReader {.constructor,
    importcpp: "XSControl_TransferReader(@)",
    header: "XSControl_TransferReader.hxx".}
proc setController*(this: var XSControlTransferReader;
                   theControl: Handle[XSControlController]) {.
    importcpp: "SetController", header: "XSControl_TransferReader.hxx".}
proc setActor*(this: var XSControlTransferReader;
              theActor: Handle[TransferActorOfTransientProcess]) {.
    importcpp: "SetActor", header: "XSControl_TransferReader.hxx".}
proc actor*(this: var XSControlTransferReader): Handle[
    TransferActorOfTransientProcess] {.importcpp: "Actor",
                                      header: "XSControl_TransferReader.hxx".}
proc setModel*(this: var XSControlTransferReader;
              theModel: Handle[InterfaceInterfaceModel]) {.importcpp: "SetModel",
    header: "XSControl_TransferReader.hxx".}
proc setGraph*(this: var XSControlTransferReader; theGraph: Handle[InterfaceHGraph]) {.
    importcpp: "SetGraph", header: "XSControl_TransferReader.hxx".}
proc model*(this: XSControlTransferReader): Handle[InterfaceInterfaceModel] {.
    noSideEffect, importcpp: "Model", header: "XSControl_TransferReader.hxx".}
proc setContext*(this: var XSControlTransferReader; theName: StandardCString;
                theCtx: Handle[StandardTransient]) {.importcpp: "SetContext",
    header: "XSControl_TransferReader.hxx".}
proc getContext*(this: XSControlTransferReader; theName: StandardCString;
                theType: Handle[StandardType];
                theCtx: var Handle[StandardTransient]): bool {.noSideEffect,
    importcpp: "GetContext", header: "XSControl_TransferReader.hxx".}
proc context*(this: var XSControlTransferReader): var NCollectionDataMap[
    TCollectionAsciiString, Handle[StandardTransient]] {.importcpp: "Context",
    header: "XSControl_TransferReader.hxx".}
proc setFileName*(this: var XSControlTransferReader; theName: StandardCString) {.
    importcpp: "SetFileName", header: "XSControl_TransferReader.hxx".}
proc fileName*(this: XSControlTransferReader): StandardCString {.noSideEffect,
    importcpp: "FileName", header: "XSControl_TransferReader.hxx".}
proc clear*(this: var XSControlTransferReader; theMode: cint) {.importcpp: "Clear",
    header: "XSControl_TransferReader.hxx".}
proc transientProcess*(this: XSControlTransferReader): Handle[
    TransferTransientProcess] {.noSideEffect, importcpp: "TransientProcess",
                               header: "XSControl_TransferReader.hxx".}
proc setTransientProcess*(this: var XSControlTransferReader;
                         theTP: Handle[TransferTransientProcess]) {.
    importcpp: "SetTransientProcess", header: "XSControl_TransferReader.hxx".}
proc recordResult*(this: var XSControlTransferReader;
                  theEnt: Handle[StandardTransient]): bool {.
    importcpp: "RecordResult", header: "XSControl_TransferReader.hxx".}
proc isRecorded*(this: XSControlTransferReader; theEnt: Handle[StandardTransient]): bool {.
    noSideEffect, importcpp: "IsRecorded", header: "XSControl_TransferReader.hxx".}
proc hasResult*(this: XSControlTransferReader; theEnt: Handle[StandardTransient]): bool {.
    noSideEffect, importcpp: "HasResult", header: "XSControl_TransferReader.hxx".}
proc recordedList*(this: XSControlTransferReader): Handle[
    TColStdHSequenceOfTransient] {.noSideEffect, importcpp: "RecordedList",
                                  header: "XSControl_TransferReader.hxx".}
proc skip*(this: var XSControlTransferReader; theEnt: Handle[StandardTransient]): bool {.
    importcpp: "Skip", header: "XSControl_TransferReader.hxx".}
proc isSkipped*(this: XSControlTransferReader; theEnt: Handle[StandardTransient]): bool {.
    noSideEffect, importcpp: "IsSkipped", header: "XSControl_TransferReader.hxx".}
proc isMarked*(this: XSControlTransferReader; theEnt: Handle[StandardTransient]): bool {.
    noSideEffect, importcpp: "IsMarked", header: "XSControl_TransferReader.hxx".}
proc finalResult*(this: XSControlTransferReader; theEnt: Handle[StandardTransient]): Handle[
    TransferResultFromModel] {.noSideEffect, importcpp: "FinalResult",
                              header: "XSControl_TransferReader.hxx".}
proc finalEntityLabel*(this: XSControlTransferReader;
                      theEnt: Handle[StandardTransient]): StandardCString {.
    noSideEffect, importcpp: "FinalEntityLabel",
    header: "XSControl_TransferReader.hxx".}
proc finalEntityNumber*(this: XSControlTransferReader;
                       theEnt: Handle[StandardTransient]): cint {.noSideEffect,
    importcpp: "FinalEntityNumber", header: "XSControl_TransferReader.hxx".}
proc resultFromNumber*(this: XSControlTransferReader; theNum: cint): Handle[
    TransferResultFromModel] {.noSideEffect, importcpp: "ResultFromNumber",
                              header: "XSControl_TransferReader.hxx".}
proc transientResult*(this: XSControlTransferReader;
                     theEnt: Handle[StandardTransient]): Handle[StandardTransient] {.
    noSideEffect, importcpp: "TransientResult",
    header: "XSControl_TransferReader.hxx".}
proc shapeResult*(this: XSControlTransferReader; theEnt: Handle[StandardTransient]): TopoDS_Shape {.
    noSideEffect, importcpp: "ShapeResult", header: "XSControl_TransferReader.hxx".}
proc clearResult*(this: var XSControlTransferReader;
                 theEnt: Handle[StandardTransient]; theMode: cint): bool {.
    importcpp: "ClearResult", header: "XSControl_TransferReader.hxx".}
proc entityFromResult*(this: XSControlTransferReader;
                      theRes: Handle[StandardTransient]; theMode: cint = 0): Handle[
    StandardTransient] {.noSideEffect, importcpp: "EntityFromResult",
                        header: "XSControl_TransferReader.hxx".}
proc entityFromShapeResult*(this: XSControlTransferReader; theRes: TopoDS_Shape;
                           theMode: cint = 0): Handle[StandardTransient] {.
    noSideEffect, importcpp: "EntityFromShapeResult",
    header: "XSControl_TransferReader.hxx".}
proc entitiesFromShapeList*(this: XSControlTransferReader;
                           theRes: Handle[TopToolsHSequenceOfShape];
                           theMode: cint = 0): Handle[TColStdHSequenceOfTransient] {.
    noSideEffect, importcpp: "EntitiesFromShapeList",
    header: "XSControl_TransferReader.hxx".}
proc checkList*(this: XSControlTransferReader; theEnt: Handle[StandardTransient];
               theLevel: cint = 0): InterfaceCheckIterator {.noSideEffect,
    importcpp: "CheckList", header: "XSControl_TransferReader.hxx".}
proc hasChecks*(this: XSControlTransferReader; theEnt: Handle[StandardTransient];
               failsOnly: bool): bool {.noSideEffect, importcpp: "HasChecks",
                                     header: "XSControl_TransferReader.hxx".}
proc checkedList*(this: XSControlTransferReader; theEnt: Handle[StandardTransient];
                 withCheck: InterfaceCheckStatus = interfaceCheckAny;
                 theResult: bool = true): Handle[TColStdHSequenceOfTransient] {.
    noSideEffect, importcpp: "CheckedList", header: "XSControl_TransferReader.hxx".}
proc beginTransfer*(this: var XSControlTransferReader): bool {.
    importcpp: "BeginTransfer", header: "XSControl_TransferReader.hxx".}
proc recognize*(this: var XSControlTransferReader; theEnt: Handle[StandardTransient]): bool {.
    importcpp: "Recognize", header: "XSControl_TransferReader.hxx".}
proc transferOne*(this: var XSControlTransferReader;
                 theEnt: Handle[StandardTransient]; theRec: bool = true;
                 theProgress: MessageProgressRange = messageProgressRange()): cint {.
    importcpp: "TransferOne", header: "XSControl_TransferReader.hxx".}
proc transferList*(this: var XSControlTransferReader;
                  theList: Handle[TColStdHSequenceOfTransient];
                  theRec: bool = true;
                  theProgress: MessageProgressRange = messageProgressRange()): cint {.
    importcpp: "TransferList", header: "XSControl_TransferReader.hxx".}
proc transferRoots*(this: var XSControlTransferReader; theGraph: InterfaceGraph;
                   theProgress: MessageProgressRange = messageProgressRange()): cint {.
    importcpp: "TransferRoots", header: "XSControl_TransferReader.hxx".}
proc transferClear*(this: var XSControlTransferReader;
                   theEnt: Handle[StandardTransient]; theLevel: cint = 0) {.
    importcpp: "TransferClear", header: "XSControl_TransferReader.hxx".}
proc printStats*(this: XSControlTransferReader; theStream: var StandardOStream;
                theWhat: cint; theMode: cint = 0) {.noSideEffect,
    importcpp: "PrintStats", header: "XSControl_TransferReader.hxx".}
proc lastCheckList*(this: XSControlTransferReader): InterfaceCheckIterator {.
    noSideEffect, importcpp: "LastCheckList",
    header: "XSControl_TransferReader.hxx".}
proc lastTransferList*(this: XSControlTransferReader; theRoots: bool): Handle[
    TColStdHSequenceOfTransient] {.noSideEffect, importcpp: "LastTransferList",
                                  header: "XSControl_TransferReader.hxx".}
proc shapeResultList*(this: var XSControlTransferReader; theRec: bool): Handle[
    TopToolsHSequenceOfShape] {.importcpp: "ShapeResultList",
                               header: "XSControl_TransferReader.hxx".}
proc printStatsProcess*(theTP: Handle[TransferTransientProcess]; theWhat: cint;
                       theMode: cint = 0) {.importcpp: "XSControl_TransferReader::PrintStatsProcess(@)",
                                        header: "XSControl_TransferReader.hxx".}
proc printStatsOnList*(theTP: Handle[TransferTransientProcess];
                      theList: Handle[TColStdHSequenceOfTransient]; theWhat: cint;
                      theMode: cint = 0) {.importcpp: "XSControl_TransferReader::PrintStatsOnList(@)",
                                       header: "XSControl_TransferReader.hxx".}
type
  XSControlTransferReaderbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "XSControl_TransferReader::get_type_name(@)",
                            header: "XSControl_TransferReader.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XSControl_TransferReader::get_type_descriptor(@)",
    header: "XSControl_TransferReader.hxx".}
proc dynamicType*(this: XSControlTransferReader): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "XSControl_TransferReader.hxx".}

























