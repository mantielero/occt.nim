import ../../tkernel/standard/standard_types
import transfer_types
import ../../tkernel/tcolstd/tcolstd_types

import "../interface/interface_types"
import ../../tkernel/message/[message_types, message_progressrange]



##  Created on: 1996-09-04
##  Created by: Christian CAILLET
##  Copyright (c) 1996-1999 Matra Datavision
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





proc newTransferTransientProcess*(nb: cint = 10000): TransferTransientProcess {.cdecl,
    constructor, importcpp: "Transfer_TransientProcess(@)", header: "Transfer_TransientProcess.hxx".}
proc setModel*(this: var TransferTransientProcess;
              model: Handle[InterfaceInterfaceModel]) {.cdecl,
    importcpp: "SetModel", header: "Transfer_TransientProcess.hxx".}
proc model*(this: TransferTransientProcess): Handle[InterfaceInterfaceModel] {.
    noSideEffect, cdecl, importcpp: "Model", header: "Transfer_TransientProcess.hxx".}
proc setGraph*(this: var TransferTransientProcess; hg: Handle[InterfaceHGraph]) {.
    cdecl, importcpp: "SetGraph", header: "Transfer_TransientProcess.hxx".}
proc hasGraph*(this: TransferTransientProcess): bool {.noSideEffect, cdecl,
    importcpp: "HasGraph", header: "Transfer_TransientProcess.hxx".}
proc hGraph*(this: TransferTransientProcess): Handle[InterfaceHGraph] {.
    noSideEffect, cdecl, importcpp: "HGraph", header: "Transfer_TransientProcess.hxx".}
proc graph*(this: TransferTransientProcess): InterfaceGraph {.noSideEffect, cdecl,
    importcpp: "Graph", header: "Transfer_TransientProcess.hxx".}
proc setContext*(this: var TransferTransientProcess; name: cstring;
                ctx: Handle[StandardTransient]) {.cdecl, importcpp: "SetContext",
    header: "Transfer_TransientProcess.hxx".}
proc getContext*(this: TransferTransientProcess; name: cstring;
                `type`: Handle[StandardType]; ctx: var Handle[StandardTransient]): bool {.
    noSideEffect, cdecl, importcpp: "GetContext", header: "Transfer_TransientProcess.hxx".}
#proc context*(this: var TransferTransientProcess): var NCollectionDataMap[
#    TCollectionAsciiString, Handle[StandardTransient]] {.cdecl,
#    importcpp: "Context", header: "Transfer_TransientProcess.hxx".}
proc printTrace*(this: TransferTransientProcess; start: Handle[StandardTransient];
                s: var StandardOStream) {.noSideEffect, cdecl,
                                       importcpp: "PrintTrace", header: "Transfer_TransientProcess.hxx".}
proc checkNum*(this: TransferTransientProcess; ent: Handle[StandardTransient]): cint {.
    noSideEffect, cdecl, importcpp: "CheckNum", header: "Transfer_TransientProcess.hxx".}
proc typedSharings*(this: TransferTransientProcess;
                   start: Handle[StandardTransient]; `type`: Handle[StandardType]): InterfaceEntityIterator {.
    noSideEffect, cdecl, importcpp: "TypedSharings", header: "Transfer_TransientProcess.hxx".}
proc isDataLoaded*(this: TransferTransientProcess; ent: Handle[StandardTransient]): bool {.
    noSideEffect, cdecl, importcpp: "IsDataLoaded", header: "Transfer_TransientProcess.hxx".}
proc isDataFail*(this: TransferTransientProcess; ent: Handle[StandardTransient]): bool {.
    noSideEffect, cdecl, importcpp: "IsDataFail", header: "Transfer_TransientProcess.hxx".}
proc printStats*(this: TransferTransientProcess; mode: cint; s: var StandardOStream) {.
    noSideEffect, cdecl, importcpp: "PrintStats", header: "Transfer_TransientProcess.hxx".}
proc rootsForTransfer*(this: var TransferTransientProcess): Handle[
    TColStdHSequenceOfTransient] {.cdecl, importcpp: "RootsForTransfer",
                                  header: "Transfer_TransientProcess.hxx".}


