##  Created on: 1992-02-04
##  Created by: Christian CAILLET
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of Transfer_TransientProcess"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Transfer_TransferFailure"
discard "forward decl of Transfer_ActorOfTransientProcess"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_Protocol"
discard "forward decl of Interface_Graph"
discard "forward decl of Interface_EntityIterator"
type
  TransferTransferOutput* {.importcpp: "Transfer_TransferOutput",
                           header: "Transfer_TransferOutput.hxx", bycopy.} = object


proc `new`*(this: var TransferTransferOutput; theSize: csize_t): pointer {.
    importcpp: "Transfer_TransferOutput::operator new",
    header: "Transfer_TransferOutput.hxx".}
proc `delete`*(this: var TransferTransferOutput; theAddress: pointer) {.
    importcpp: "Transfer_TransferOutput::operator delete",
    header: "Transfer_TransferOutput.hxx".}
proc `new[]`*(this: var TransferTransferOutput; theSize: csize_t): pointer {.
    importcpp: "Transfer_TransferOutput::operator new[]",
    header: "Transfer_TransferOutput.hxx".}
proc `delete[]`*(this: var TransferTransferOutput; theAddress: pointer) {.
    importcpp: "Transfer_TransferOutput::operator delete[]",
    header: "Transfer_TransferOutput.hxx".}
proc `new`*(this: var TransferTransferOutput; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "Transfer_TransferOutput::operator new",
    header: "Transfer_TransferOutput.hxx".}
proc `delete`*(this: var TransferTransferOutput; a2: pointer; a3: pointer) {.
    importcpp: "Transfer_TransferOutput::operator delete",
    header: "Transfer_TransferOutput.hxx".}
proc constructTransferTransferOutput*(actor: Handle[
    TransferActorOfTransientProcess]; amodel: Handle[InterfaceInterfaceModel]): TransferTransferOutput {.
    constructor, importcpp: "Transfer_TransferOutput(@)",
    header: "Transfer_TransferOutput.hxx".}
proc constructTransferTransferOutput*(`proc`: Handle[TransferTransientProcess];
                                     amodel: Handle[InterfaceInterfaceModel]): TransferTransferOutput {.
    constructor, importcpp: "Transfer_TransferOutput(@)",
    header: "Transfer_TransferOutput.hxx".}
proc model*(this: TransferTransferOutput): Handle[InterfaceInterfaceModel] {.
    noSideEffect, importcpp: "Model", header: "Transfer_TransferOutput.hxx".}
proc transientProcess*(this: TransferTransferOutput): Handle[
    TransferTransientProcess] {.noSideEffect, importcpp: "TransientProcess",
                               header: "Transfer_TransferOutput.hxx".}
#[ proc transfer*(this: var TransferTransferOutput; obj: Handle[StandardTransient];
              theProgress: MessageProgressRange = messageProgressRange()) {.
    importcpp: "Transfer", header: "Transfer_TransferOutput.hxx".}
proc transferRoots*(this: var TransferTransferOutput;
                   protocol: Handle[InterfaceProtocol];
                   theProgress: MessageProgressRange = messageProgressRange()) {.
    importcpp: "TransferRoots", header: "Transfer_TransferOutput.hxx".}
proc transferRoots*(this: var TransferTransferOutput; g: InterfaceGraph;
                   theProgress: MessageProgressRange = messageProgressRange()) {.
    importcpp: "TransferRoots", header: "Transfer_TransferOutput.hxx".}
proc transferRoots*(this: var TransferTransferOutput;
                   theProgress: MessageProgressRange = messageProgressRange()) {.
    importcpp: "TransferRoots", header: "Transfer_TransferOutput.hxx".}
proc listForStatus*(this: TransferTransferOutput; normal: StandardBoolean;
                   roots: StandardBoolean = true): InterfaceEntityIterator {.
    noSideEffect, importcpp: "ListForStatus", header: "Transfer_TransferOutput.hxx".}
proc modelForStatus*(this: TransferTransferOutput;
                    protocol: Handle[InterfaceProtocol]; normal: StandardBoolean;
                    roots: StandardBoolean = true): Handle[InterfaceInterfaceModel] {.
    noSideEffect, importcpp: "ModelForStatus",
    header: "Transfer_TransferOutput.hxx".} ]#