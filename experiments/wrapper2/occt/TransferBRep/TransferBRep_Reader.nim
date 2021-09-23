##  Created on: 1994-10-03
##  Created by: Christian CAILLET
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../TopTools/TopTools_HSequenceOfShape,
  ../TColStd/TColStd_HSequenceOfTransient, ../Message/Message_ProgressRange

discard "forward decl of Interface_Protocol"
discard "forward decl of Transfer_ActorOfTransientProcess"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Transfer_TransientProcess"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Interface_CheckIterator"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Standard_Transient"
type
  TransferBRep_Reader* {.importcpp: "TransferBRep_Reader",
                        header: "TransferBRep_Reader.hxx", bycopy.} = object ## !
                                                                        ## Initializes a
                                                                        ## non-specialised Reader.
                                                                        ## Typically, for each norm
                                                                        ## ! or
                                                                        ## protocol, is will be required to define a specific Create
                                                                        ## ! to load a file and transfer it


proc constructTransferBRep_Reader*(): TransferBRep_Reader {.constructor,
    importcpp: "TransferBRep_Reader(@)", header: "TransferBRep_Reader.hxx".}
proc SetProtocol*(this: var TransferBRep_Reader;
                 protocol: handle[Interface_Protocol]) {.importcpp: "SetProtocol",
    header: "TransferBRep_Reader.hxx".}
proc Protocol*(this: TransferBRep_Reader): handle[Interface_Protocol] {.
    noSideEffect, importcpp: "Protocol", header: "TransferBRep_Reader.hxx".}
proc SetActor*(this: var TransferBRep_Reader;
              actor: handle[Transfer_ActorOfTransientProcess]) {.
    importcpp: "SetActor", header: "TransferBRep_Reader.hxx".}
proc Actor*(this: TransferBRep_Reader): handle[Transfer_ActorOfTransientProcess] {.
    noSideEffect, importcpp: "Actor", header: "TransferBRep_Reader.hxx".}
proc SetFileStatus*(this: var TransferBRep_Reader; status: Standard_Integer) {.
    importcpp: "SetFileStatus", header: "TransferBRep_Reader.hxx".}
proc FileStatus*(this: TransferBRep_Reader): Standard_Integer {.noSideEffect,
    importcpp: "FileStatus", header: "TransferBRep_Reader.hxx".}
proc FileNotFound*(this: TransferBRep_Reader): Standard_Boolean {.noSideEffect,
    importcpp: "FileNotFound", header: "TransferBRep_Reader.hxx".}
proc SyntaxError*(this: TransferBRep_Reader): Standard_Boolean {.noSideEffect,
    importcpp: "SyntaxError", header: "TransferBRep_Reader.hxx".}
proc SetModel*(this: var TransferBRep_Reader;
              model: handle[Interface_InterfaceModel]) {.importcpp: "SetModel",
    header: "TransferBRep_Reader.hxx".}
proc Model*(this: TransferBRep_Reader): handle[Interface_InterfaceModel] {.
    noSideEffect, importcpp: "Model", header: "TransferBRep_Reader.hxx".}
proc Clear*(this: var TransferBRep_Reader) {.importcpp: "Clear",
    header: "TransferBRep_Reader.hxx".}
proc CheckStatusModel*(this: TransferBRep_Reader; withprint: Standard_Boolean): Standard_Boolean {.
    noSideEffect, importcpp: "CheckStatusModel", header: "TransferBRep_Reader.hxx".}
proc CheckListModel*(this: TransferBRep_Reader): Interface_CheckIterator {.
    noSideEffect, importcpp: "CheckListModel", header: "TransferBRep_Reader.hxx".}
proc ModeNewTransfer*(this: var TransferBRep_Reader): var Standard_Boolean {.
    importcpp: "ModeNewTransfer", header: "TransferBRep_Reader.hxx".}
proc BeginTransfer*(this: var TransferBRep_Reader): Standard_Boolean {.
    importcpp: "BeginTransfer", header: "TransferBRep_Reader.hxx".}
proc EndTransfer*(this: var TransferBRep_Reader) {.importcpp: "EndTransfer",
    header: "TransferBRep_Reader.hxx".}
proc PrepareTransfer*(this: var TransferBRep_Reader) {.importcpp: "PrepareTransfer",
    header: "TransferBRep_Reader.hxx".}
proc TransferRoots*(this: var TransferBRep_Reader;
                   theProgress: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "TransferRoots", header: "TransferBRep_Reader.hxx".}
proc Transfer*(this: var TransferBRep_Reader; num: Standard_Integer;
              theProgress: Message_ProgressRange = Message_ProgressRange()): Standard_Boolean {.
    importcpp: "Transfer", header: "TransferBRep_Reader.hxx".}
proc TransferList*(this: var TransferBRep_Reader;
                  list: handle[TColStd_HSequenceOfTransient];
                  theProgress: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "TransferList", header: "TransferBRep_Reader.hxx".}
proc IsDone*(this: TransferBRep_Reader): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "TransferBRep_Reader.hxx".}
proc NbShapes*(this: TransferBRep_Reader): Standard_Integer {.noSideEffect,
    importcpp: "NbShapes", header: "TransferBRep_Reader.hxx".}
proc Shapes*(this: TransferBRep_Reader): handle[TopTools_HSequenceOfShape] {.
    noSideEffect, importcpp: "Shapes", header: "TransferBRep_Reader.hxx".}
proc Shape*(this: TransferBRep_Reader; num: Standard_Integer = 1): TopoDS_Shape {.
    noSideEffect, importcpp: "Shape", header: "TransferBRep_Reader.hxx".}
proc ShapeResult*(this: TransferBRep_Reader; ent: handle[Standard_Transient]): TopoDS_Shape {.
    noSideEffect, importcpp: "ShapeResult", header: "TransferBRep_Reader.hxx".}
proc OneShape*(this: TransferBRep_Reader): TopoDS_Shape {.noSideEffect,
    importcpp: "OneShape", header: "TransferBRep_Reader.hxx".}
proc NbTransients*(this: TransferBRep_Reader): Standard_Integer {.noSideEffect,
    importcpp: "NbTransients", header: "TransferBRep_Reader.hxx".}
proc Transients*(this: TransferBRep_Reader): handle[TColStd_HSequenceOfTransient] {.
    noSideEffect, importcpp: "Transients", header: "TransferBRep_Reader.hxx".}
proc Transient*(this: TransferBRep_Reader; num: Standard_Integer = 1): handle[
    Standard_Transient] {.noSideEffect, importcpp: "Transient",
                         header: "TransferBRep_Reader.hxx".}
proc CheckStatusResult*(this: TransferBRep_Reader; withprints: Standard_Boolean): Standard_Boolean {.
    noSideEffect, importcpp: "CheckStatusResult", header: "TransferBRep_Reader.hxx".}
proc CheckListResult*(this: TransferBRep_Reader): Interface_CheckIterator {.
    noSideEffect, importcpp: "CheckListResult", header: "TransferBRep_Reader.hxx".}
proc TransientProcess*(this: TransferBRep_Reader): handle[Transfer_TransientProcess] {.
    noSideEffect, importcpp: "TransientProcess", header: "TransferBRep_Reader.hxx".}
proc destroyTransferBRep_Reader*(this: var TransferBRep_Reader) {.
    importcpp: "#.~TransferBRep_Reader()", header: "TransferBRep_Reader.hxx".}