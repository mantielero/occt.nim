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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Message/Message_ProgressRange

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
  Transfer_TransferOutput* {.importcpp: "Transfer_TransferOutput",
                            header: "Transfer_TransferOutput.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Creates
                                                                                ## a
                                                                                ## TransferOutput
                                                                                ## ready
                                                                                ## to
                                                                                ## use,
                                                                                ## with
                                                                                ## a
                                                                                ## TransientProcess


proc constructTransfer_TransferOutput*(actor: handle[
    Transfer_ActorOfTransientProcess]; amodel: handle[Interface_InterfaceModel]): Transfer_TransferOutput {.
    constructor, importcpp: "Transfer_TransferOutput(@)",
    header: "Transfer_TransferOutput.hxx".}
proc constructTransfer_TransferOutput*(`proc`: handle[Transfer_TransientProcess];
                                      amodel: handle[Interface_InterfaceModel]): Transfer_TransferOutput {.
    constructor, importcpp: "Transfer_TransferOutput(@)",
    header: "Transfer_TransferOutput.hxx".}
proc Model*(this: Transfer_TransferOutput): handle[Interface_InterfaceModel] {.
    noSideEffect, importcpp: "Model", header: "Transfer_TransferOutput.hxx".}
proc TransientProcess*(this: Transfer_TransferOutput): handle[
    Transfer_TransientProcess] {.noSideEffect, importcpp: "TransientProcess",
                                header: "Transfer_TransferOutput.hxx".}
proc Transfer*(this: var Transfer_TransferOutput; obj: handle[Standard_Transient];
              theProgress: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "Transfer", header: "Transfer_TransferOutput.hxx".}
proc TransferRoots*(this: var Transfer_TransferOutput;
                   protocol: handle[Interface_Protocol];
                   theProgress: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "TransferRoots", header: "Transfer_TransferOutput.hxx".}
proc TransferRoots*(this: var Transfer_TransferOutput; G: Interface_Graph;
                   theProgress: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "TransferRoots", header: "Transfer_TransferOutput.hxx".}
proc TransferRoots*(this: var Transfer_TransferOutput;
                   theProgress: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "TransferRoots", header: "Transfer_TransferOutput.hxx".}
proc ListForStatus*(this: Transfer_TransferOutput; normal: Standard_Boolean;
                   roots: Standard_Boolean = Standard_True): Interface_EntityIterator {.
    noSideEffect, importcpp: "ListForStatus", header: "Transfer_TransferOutput.hxx".}
proc ModelForStatus*(this: Transfer_TransferOutput;
                    protocol: handle[Interface_Protocol];
                    normal: Standard_Boolean;
                    roots: Standard_Boolean = Standard_True): handle[
    Interface_InterfaceModel] {.noSideEffect, importcpp: "ModelForStatus",
                               header: "Transfer_TransferOutput.hxx".}