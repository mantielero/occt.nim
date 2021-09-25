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

discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Interface_HGraph"
discard "forward decl of Interface_Graph"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of Transfer_TransientProcess"
discard "forward decl of Transfer_TransientProcess"
type
  HandleTransferTransientProcess* = Handle[TransferTransientProcess]

## ! Adds specific features to the generic definition :
## ! TransientProcess is intended to work from an InterfaceModel
## ! to a set of application objects.
## !
## ! Hence, some informations about starting entities can be gotten
## ! from the model : for Trace, CheckList, Integrity Status

type
  TransferTransientProcess* {.importcpp: "Transfer_TransientProcess",
                             header: "Transfer_TransientProcess.hxx", bycopy.} = object of TransferProcessForTransient ##
                                                                                                                ## !
                                                                                                                ## Sets
                                                                                                                ## TransientProcess
                                                                                                                ## at
                                                                                                                ## initial
                                                                                                                ## state,
                                                                                                                ## with
                                                                                                                ## an
                                                                                                                ## initial
                                                                                                                ## size


proc constructTransferTransientProcess*(nb: int = 10000): TransferTransientProcess {.
    constructor, importcpp: "Transfer_TransientProcess(@)",
    header: "Transfer_TransientProcess.hxx".}
proc setModel*(this: var TransferTransientProcess;
              model: Handle[InterfaceInterfaceModel]) {.importcpp: "SetModel",
    header: "Transfer_TransientProcess.hxx".}
proc model*(this: TransferTransientProcess): Handle[InterfaceInterfaceModel] {.
    noSideEffect, importcpp: "Model", header: "Transfer_TransientProcess.hxx".}
proc setGraph*(this: var TransferTransientProcess; hg: Handle[InterfaceHGraph]) {.
    importcpp: "SetGraph", header: "Transfer_TransientProcess.hxx".}
proc hasGraph*(this: TransferTransientProcess): bool {.noSideEffect,
    importcpp: "HasGraph", header: "Transfer_TransientProcess.hxx".}
proc hGraph*(this: TransferTransientProcess): Handle[InterfaceHGraph] {.
    noSideEffect, importcpp: "HGraph", header: "Transfer_TransientProcess.hxx".}
proc graph*(this: TransferTransientProcess): InterfaceGraph {.noSideEffect,
    importcpp: "Graph", header: "Transfer_TransientProcess.hxx".}
proc setContext*(this: var TransferTransientProcess; name: StandardCString;
                ctx: Handle[StandardTransient]) {.importcpp: "SetContext",
    header: "Transfer_TransientProcess.hxx".}
proc getContext*(this: TransferTransientProcess; name: StandardCString;
                `type`: Handle[StandardType]; ctx: var Handle[StandardTransient]): bool {.
    noSideEffect, importcpp: "GetContext", header: "Transfer_TransientProcess.hxx".}
proc context*(this: var TransferTransientProcess): var NCollectionDataMap[
    TCollectionAsciiString, Handle[StandardTransient]] {.importcpp: "Context",
    header: "Transfer_TransientProcess.hxx".}
proc printTrace*(this: TransferTransientProcess; start: Handle[StandardTransient];
                s: var StandardOStream) {.noSideEffect, importcpp: "PrintTrace",
                                       header: "Transfer_TransientProcess.hxx".}
proc checkNum*(this: TransferTransientProcess; ent: Handle[StandardTransient]): int {.
    noSideEffect, importcpp: "CheckNum", header: "Transfer_TransientProcess.hxx".}
proc typedSharings*(this: TransferTransientProcess;
                   start: Handle[StandardTransient]; `type`: Handle[StandardType]): InterfaceEntityIterator {.
    noSideEffect, importcpp: "TypedSharings",
    header: "Transfer_TransientProcess.hxx".}
proc isDataLoaded*(this: TransferTransientProcess; ent: Handle[StandardTransient]): bool {.
    noSideEffect, importcpp: "IsDataLoaded",
    header: "Transfer_TransientProcess.hxx".}
proc isDataFail*(this: TransferTransientProcess; ent: Handle[StandardTransient]): bool {.
    noSideEffect, importcpp: "IsDataFail", header: "Transfer_TransientProcess.hxx".}
proc printStats*(this: TransferTransientProcess; mode: int; s: var StandardOStream) {.
    noSideEffect, importcpp: "PrintStats", header: "Transfer_TransientProcess.hxx".}
proc rootsForTransfer*(this: var TransferTransientProcess): Handle[
    TColStdHSequenceOfTransient] {.importcpp: "RootsForTransfer",
                                  header: "Transfer_TransientProcess.hxx".}
type
  TransferTransientProcessbaseType* = TransferProcessForTransient

proc getTypeName*(): cstring {.importcpp: "Transfer_TransientProcess::get_type_name(@)",
                            header: "Transfer_TransientProcess.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Transfer_TransientProcess::get_type_descriptor(@)",
    header: "Transfer_TransientProcess.hxx".}
proc dynamicType*(this: TransferTransientProcess): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "Transfer_TransientProcess.hxx".}
