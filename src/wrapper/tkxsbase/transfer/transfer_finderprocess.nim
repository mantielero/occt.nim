import transfer_types

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
discard "forward decl of Transfer_TransientMapper"
discard "forward decl of Transfer_Finder"
discard "forward decl of Transfer_FinderProcess"




proc newTransferFinderProcess*(nb: cint = 10000): TransferFinderProcess {.cdecl,
    constructor, importcpp: "Transfer_FinderProcess(@)", header: "Transfer_FinderProcess.hxx".}
proc setModel*(this: var TransferFinderProcess;
              model: Handle[InterfaceInterfaceModel]) {.cdecl,
    importcpp: "SetModel", header: "Transfer_FinderProcess.hxx".}
proc model*(this: TransferFinderProcess): Handle[InterfaceInterfaceModel] {.
    noSideEffect, cdecl, importcpp: "Model", header: "Transfer_FinderProcess.hxx".}
proc nextMappedWithAttribute*(this: TransferFinderProcess; name: cstring; num0: cint): cint {.
    noSideEffect, cdecl, importcpp: "NextMappedWithAttribute", header: "Transfer_FinderProcess.hxx".}
proc transientMapper*(this: TransferFinderProcess; obj: Handle[StandardTransient]): Handle[
    TransferTransientMapper] {.noSideEffect, cdecl, importcpp: "TransientMapper",
                              header: "Transfer_FinderProcess.hxx".}
proc printTrace*(this: TransferFinderProcess; start: Handle[TransferFinder];
                s: var StandardOStream) {.noSideEffect, cdecl,
                                       importcpp: "PrintTrace", header: "Transfer_FinderProcess.hxx".}
proc printStats*(this: TransferFinderProcess; mode: cint; s: var StandardOStream) {.
    noSideEffect, cdecl, importcpp: "PrintStats", header: "Transfer_FinderProcess.hxx".}
