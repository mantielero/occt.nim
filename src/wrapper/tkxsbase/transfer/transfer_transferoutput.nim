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
                           header: "Transfer_TransferOutput.hxx", bycopy.} = object ## !
                                                                               ## Creates a
                                                                               ## TransferOutput
                                                                               ## ready
                                                                               ## to
                                                                               ## use,
                                                                               ## with a
                                                                               ## TransientProcess


proc newTransferTransferOutput*(actor: Handle[TransferActorOfTransientProcess];
                               amodel: Handle[InterfaceInterfaceModel]): TransferTransferOutput {.
    cdecl, constructor, importcpp: "Transfer_TransferOutput(@)", header: "Transfer_TransferOutput.hxx".}
proc newTransferTransferOutput*(`proc`: Handle[TransferTransientProcess];
                               amodel: Handle[InterfaceInterfaceModel]): TransferTransferOutput {.
    cdecl, constructor, importcpp: "Transfer_TransferOutput(@)", header: "Transfer_TransferOutput.hxx".}
proc model*(this: TransferTransferOutput): Handle[InterfaceInterfaceModel] {.
    noSideEffect, cdecl, importcpp: "Model", header: "Transfer_TransferOutput.hxx".}
proc transientProcess*(this: TransferTransferOutput): Handle[
    TransferTransientProcess] {.noSideEffect, cdecl, importcpp: "TransientProcess",
                               header: "Transfer_TransferOutput.hxx".}
proc transfer*(this: var TransferTransferOutput; obj: Handle[StandardTransient];
              theProgress: MessageProgressRange = newMessageProgressRange()) {.cdecl,
    importcpp: "Transfer", header: "Transfer_TransferOutput.hxx".}
proc transferRoots*(this: var TransferTransferOutput;
                   protocol: Handle[InterfaceProtocol];
                   theProgress: MessageProgressRange = newMessageProgressRange()) {.
    cdecl, importcpp: "TransferRoots", header: "Transfer_TransferOutput.hxx".}
proc transferRoots*(this: var TransferTransferOutput; g: InterfaceGraph;
                   theProgress: MessageProgressRange = newMessageProgressRange()) {.
    cdecl, importcpp: "TransferRoots", header: "Transfer_TransferOutput.hxx".}
proc transferRoots*(this: var TransferTransferOutput;
                   theProgress: MessageProgressRange = newMessageProgressRange()) {.
    cdecl, importcpp: "TransferRoots", header: "Transfer_TransferOutput.hxx".}
proc listForStatus*(this: TransferTransferOutput; normal: bool; roots: bool = true): InterfaceEntityIterator {.
    noSideEffect, cdecl, importcpp: "ListForStatus", header: "Transfer_TransferOutput.hxx".}
proc modelForStatus*(this: TransferTransferOutput;
                    protocol: Handle[InterfaceProtocol]; normal: bool;
                    roots: bool = true): Handle[InterfaceInterfaceModel] {.
    noSideEffect, cdecl, importcpp: "ModelForStatus", header: "Transfer_TransferOutput.hxx".}