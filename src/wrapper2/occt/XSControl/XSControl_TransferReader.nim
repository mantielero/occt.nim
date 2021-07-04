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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TCollection/TCollection_AsciiString,
  ../TColStd/TColStd_DataMapOfIntegerTransient,
  ../TopTools/TopTools_HSequenceOfShape, ../Standard/Standard_Transient,
  ../TColStd/TColStd_HSequenceOfTransient, ../Interface/Interface_CheckStatus,
  ../Message/Message_ProgressRange

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
  Handle_XSControl_TransferReader* = handle[XSControl_TransferReader]

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
  XSControl_TransferReader* {.importcpp: "XSControl_TransferReader",
                             header: "XSControl_TransferReader.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                      ## !
                                                                                                      ## Creates
                                                                                                      ## a
                                                                                                      ## TransferReader,
                                                                                                      ## empty


proc constructXSControl_TransferReader*(): XSControl_TransferReader {.constructor,
    importcpp: "XSControl_TransferReader(@)",
    header: "XSControl_TransferReader.hxx".}
proc SetController*(this: var XSControl_TransferReader;
                   theControl: handle[XSControl_Controller]) {.
    importcpp: "SetController", header: "XSControl_TransferReader.hxx".}
proc SetActor*(this: var XSControl_TransferReader;
              theActor: handle[Transfer_ActorOfTransientProcess]) {.
    importcpp: "SetActor", header: "XSControl_TransferReader.hxx".}
proc Actor*(this: var XSControl_TransferReader): handle[
    Transfer_ActorOfTransientProcess] {.importcpp: "Actor",
                                       header: "XSControl_TransferReader.hxx".}
proc SetModel*(this: var XSControl_TransferReader;
              theModel: handle[Interface_InterfaceModel]) {.importcpp: "SetModel",
    header: "XSControl_TransferReader.hxx".}
proc SetGraph*(this: var XSControl_TransferReader;
              theGraph: handle[Interface_HGraph]) {.importcpp: "SetGraph",
    header: "XSControl_TransferReader.hxx".}
proc Model*(this: XSControl_TransferReader): handle[Interface_InterfaceModel] {.
    noSideEffect, importcpp: "Model", header: "XSControl_TransferReader.hxx".}
proc SetContext*(this: var XSControl_TransferReader; theName: Standard_CString;
                theCtx: handle[Standard_Transient]) {.importcpp: "SetContext",
    header: "XSControl_TransferReader.hxx".}
proc GetContext*(this: XSControl_TransferReader; theName: Standard_CString;
                theType: handle[Standard_Type];
                theCtx: var handle[Standard_Transient]): Standard_Boolean {.
    noSideEffect, importcpp: "GetContext", header: "XSControl_TransferReader.hxx".}
proc Context*(this: var XSControl_TransferReader): var NCollection_DataMap[
    TCollection_AsciiString, handle[Standard_Transient]] {.importcpp: "Context",
    header: "XSControl_TransferReader.hxx".}
proc SetFileName*(this: var XSControl_TransferReader; theName: Standard_CString) {.
    importcpp: "SetFileName", header: "XSControl_TransferReader.hxx".}
proc FileName*(this: XSControl_TransferReader): Standard_CString {.noSideEffect,
    importcpp: "FileName", header: "XSControl_TransferReader.hxx".}
proc Clear*(this: var XSControl_TransferReader; theMode: Standard_Integer) {.
    importcpp: "Clear", header: "XSControl_TransferReader.hxx".}
proc TransientProcess*(this: XSControl_TransferReader): handle[
    Transfer_TransientProcess] {.noSideEffect, importcpp: "TransientProcess",
                                header: "XSControl_TransferReader.hxx".}
proc SetTransientProcess*(this: var XSControl_TransferReader;
                         theTP: handle[Transfer_TransientProcess]) {.
    importcpp: "SetTransientProcess", header: "XSControl_TransferReader.hxx".}
proc RecordResult*(this: var XSControl_TransferReader;
                  theEnt: handle[Standard_Transient]): Standard_Boolean {.
    importcpp: "RecordResult", header: "XSControl_TransferReader.hxx".}
proc IsRecorded*(this: XSControl_TransferReader; theEnt: handle[Standard_Transient]): Standard_Boolean {.
    noSideEffect, importcpp: "IsRecorded", header: "XSControl_TransferReader.hxx".}
proc HasResult*(this: XSControl_TransferReader; theEnt: handle[Standard_Transient]): Standard_Boolean {.
    noSideEffect, importcpp: "HasResult", header: "XSControl_TransferReader.hxx".}
proc RecordedList*(this: XSControl_TransferReader): handle[
    TColStd_HSequenceOfTransient] {.noSideEffect, importcpp: "RecordedList",
                                   header: "XSControl_TransferReader.hxx".}
proc Skip*(this: var XSControl_TransferReader; theEnt: handle[Standard_Transient]): Standard_Boolean {.
    importcpp: "Skip", header: "XSControl_TransferReader.hxx".}
proc IsSkipped*(this: XSControl_TransferReader; theEnt: handle[Standard_Transient]): Standard_Boolean {.
    noSideEffect, importcpp: "IsSkipped", header: "XSControl_TransferReader.hxx".}
proc IsMarked*(this: XSControl_TransferReader; theEnt: handle[Standard_Transient]): Standard_Boolean {.
    noSideEffect, importcpp: "IsMarked", header: "XSControl_TransferReader.hxx".}
proc FinalResult*(this: XSControl_TransferReader;
                 theEnt: handle[Standard_Transient]): handle[
    Transfer_ResultFromModel] {.noSideEffect, importcpp: "FinalResult",
                               header: "XSControl_TransferReader.hxx".}
proc FinalEntityLabel*(this: XSControl_TransferReader;
                      theEnt: handle[Standard_Transient]): Standard_CString {.
    noSideEffect, importcpp: "FinalEntityLabel",
    header: "XSControl_TransferReader.hxx".}
proc FinalEntityNumber*(this: XSControl_TransferReader;
                       theEnt: handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "FinalEntityNumber",
    header: "XSControl_TransferReader.hxx".}
proc ResultFromNumber*(this: XSControl_TransferReader; theNum: Standard_Integer): handle[
    Transfer_ResultFromModel] {.noSideEffect, importcpp: "ResultFromNumber",
                               header: "XSControl_TransferReader.hxx".}
proc TransientResult*(this: XSControl_TransferReader;
                     theEnt: handle[Standard_Transient]): handle[
    Standard_Transient] {.noSideEffect, importcpp: "TransientResult",
                         header: "XSControl_TransferReader.hxx".}
proc ShapeResult*(this: XSControl_TransferReader;
                 theEnt: handle[Standard_Transient]): TopoDS_Shape {.noSideEffect,
    importcpp: "ShapeResult", header: "XSControl_TransferReader.hxx".}
proc ClearResult*(this: var XSControl_TransferReader;
                 theEnt: handle[Standard_Transient]; theMode: Standard_Integer): Standard_Boolean {.
    importcpp: "ClearResult", header: "XSControl_TransferReader.hxx".}
proc EntityFromResult*(this: XSControl_TransferReader;
                      theRes: handle[Standard_Transient];
                      theMode: Standard_Integer = 0): handle[Standard_Transient] {.
    noSideEffect, importcpp: "EntityFromResult",
    header: "XSControl_TransferReader.hxx".}
proc EntityFromShapeResult*(this: XSControl_TransferReader; theRes: TopoDS_Shape;
                           theMode: Standard_Integer = 0): handle[Standard_Transient] {.
    noSideEffect, importcpp: "EntityFromShapeResult",
    header: "XSControl_TransferReader.hxx".}
proc EntitiesFromShapeList*(this: XSControl_TransferReader;
                           theRes: handle[TopTools_HSequenceOfShape];
                           theMode: Standard_Integer = 0): handle[
    TColStd_HSequenceOfTransient] {.noSideEffect,
                                   importcpp: "EntitiesFromShapeList",
                                   header: "XSControl_TransferReader.hxx".}
proc CheckList*(this: XSControl_TransferReader; theEnt: handle[Standard_Transient];
               theLevel: Standard_Integer = 0): Interface_CheckIterator {.
    noSideEffect, importcpp: "CheckList", header: "XSControl_TransferReader.hxx".}
proc HasChecks*(this: XSControl_TransferReader; theEnt: handle[Standard_Transient];
               FailsOnly: Standard_Boolean): Standard_Boolean {.noSideEffect,
    importcpp: "HasChecks", header: "XSControl_TransferReader.hxx".}
proc CheckedList*(this: XSControl_TransferReader;
                 theEnt: handle[Standard_Transient];
                 WithCheck: Interface_CheckStatus = Interface_CheckAny;
                 theResult: Standard_Boolean = Standard_True): handle[
    TColStd_HSequenceOfTransient] {.noSideEffect, importcpp: "CheckedList",
                                   header: "XSControl_TransferReader.hxx".}
proc BeginTransfer*(this: var XSControl_TransferReader): Standard_Boolean {.
    importcpp: "BeginTransfer", header: "XSControl_TransferReader.hxx".}
proc Recognize*(this: var XSControl_TransferReader;
               theEnt: handle[Standard_Transient]): Standard_Boolean {.
    importcpp: "Recognize", header: "XSControl_TransferReader.hxx".}
proc TransferOne*(this: var XSControl_TransferReader;
                 theEnt: handle[Standard_Transient];
                 theRec: Standard_Boolean = Standard_True;
                 theProgress: Message_ProgressRange = Message_ProgressRange()): Standard_Integer {.
    importcpp: "TransferOne", header: "XSControl_TransferReader.hxx".}
proc TransferList*(this: var XSControl_TransferReader;
                  theList: handle[TColStd_HSequenceOfTransient];
                  theRec: Standard_Boolean = Standard_True;
                  theProgress: Message_ProgressRange = Message_ProgressRange()): Standard_Integer {.
    importcpp: "TransferList", header: "XSControl_TransferReader.hxx".}
proc TransferRoots*(this: var XSControl_TransferReader; theGraph: Interface_Graph;
                   theProgress: Message_ProgressRange = Message_ProgressRange()): Standard_Integer {.
    importcpp: "TransferRoots", header: "XSControl_TransferReader.hxx".}
proc TransferClear*(this: var XSControl_TransferReader;
                   theEnt: handle[Standard_Transient];
                   theLevel: Standard_Integer = 0) {.importcpp: "TransferClear",
    header: "XSControl_TransferReader.hxx".}
proc PrintStats*(this: XSControl_TransferReader; theStream: var Standard_OStream;
                theWhat: Standard_Integer; theMode: Standard_Integer = 0) {.
    noSideEffect, importcpp: "PrintStats", header: "XSControl_TransferReader.hxx".}
proc LastCheckList*(this: XSControl_TransferReader): Interface_CheckIterator {.
    noSideEffect, importcpp: "LastCheckList",
    header: "XSControl_TransferReader.hxx".}
proc LastTransferList*(this: XSControl_TransferReader; theRoots: Standard_Boolean): handle[
    TColStd_HSequenceOfTransient] {.noSideEffect, importcpp: "LastTransferList",
                                   header: "XSControl_TransferReader.hxx".}
proc ShapeResultList*(this: var XSControl_TransferReader; theRec: Standard_Boolean): handle[
    TopTools_HSequenceOfShape] {.importcpp: "ShapeResultList",
                                header: "XSControl_TransferReader.hxx".}
proc PrintStatsProcess*(theTP: handle[Transfer_TransientProcess];
                       theWhat: Standard_Integer; theMode: Standard_Integer = 0) {.
    importcpp: "XSControl_TransferReader::PrintStatsProcess(@)",
    header: "XSControl_TransferReader.hxx".}
proc PrintStatsOnList*(theTP: handle[Transfer_TransientProcess];
                      theList: handle[TColStd_HSequenceOfTransient];
                      theWhat: Standard_Integer; theMode: Standard_Integer = 0) {.
    importcpp: "XSControl_TransferReader::PrintStatsOnList(@)",
    header: "XSControl_TransferReader.hxx".}
type
  XSControl_TransferReaderbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "XSControl_TransferReader::get_type_name(@)",
                              header: "XSControl_TransferReader.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XSControl_TransferReader::get_type_descriptor(@)",
    header: "XSControl_TransferReader.hxx".}
proc DynamicType*(this: XSControl_TransferReader): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "XSControl_TransferReader.hxx".}