##  Created on: 1992-02-03
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

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Transfer_Finder"
discard "forward decl of Transfer_FindHasher"
discard "forward decl of Transfer_ProcessForFinder"
discard "forward decl of Transfer_ActorOfProcessForFinder"
discard "forward decl of Transfer_Binder"
type
  TransferIteratorOfProcessForFinder* {.importcpp: "Transfer_IteratorOfProcessForFinder", header: "Transfer_IteratorOfProcessForFinder.hxx",
                                       bycopy.} = object of TransferTransferIterator


proc `new`*(this: var TransferIteratorOfProcessForFinder; theSize: csize_t): pointer {.
    importcpp: "Transfer_IteratorOfProcessForFinder::operator new",
    header: "Transfer_IteratorOfProcessForFinder.hxx".}
proc `delete`*(this: var TransferIteratorOfProcessForFinder; theAddress: pointer) {.
    importcpp: "Transfer_IteratorOfProcessForFinder::operator delete",
    header: "Transfer_IteratorOfProcessForFinder.hxx".}
proc `new[]`*(this: var TransferIteratorOfProcessForFinder; theSize: csize_t): pointer {.
    importcpp: "Transfer_IteratorOfProcessForFinder::operator new[]",
    header: "Transfer_IteratorOfProcessForFinder.hxx".}
proc `delete[]`*(this: var TransferIteratorOfProcessForFinder; theAddress: pointer) {.
    importcpp: "Transfer_IteratorOfProcessForFinder::operator delete[]",
    header: "Transfer_IteratorOfProcessForFinder.hxx".}
proc `new`*(this: var TransferIteratorOfProcessForFinder; a2: csize_t;
           theAddress: pointer): pointer {.importcpp: "Transfer_IteratorOfProcessForFinder::operator new", header: "Transfer_IteratorOfProcessForFinder.hxx".}
proc `delete`*(this: var TransferIteratorOfProcessForFinder; a2: pointer; a3: pointer) {.
    importcpp: "Transfer_IteratorOfProcessForFinder::operator delete",
    header: "Transfer_IteratorOfProcessForFinder.hxx".}
proc constructTransferIteratorOfProcessForFinder*(withstarts: StandardBoolean): TransferIteratorOfProcessForFinder {.
    constructor, importcpp: "Transfer_IteratorOfProcessForFinder(@)",
    header: "Transfer_IteratorOfProcessForFinder.hxx".}
proc add*(this: var TransferIteratorOfProcessForFinder;
         binder: Handle[TransferBinder]) {.importcpp: "Add",
    header: "Transfer_IteratorOfProcessForFinder.hxx".}
proc add*(this: var TransferIteratorOfProcessForFinder;
         binder: Handle[TransferBinder]; start: Handle[TransferFinder]) {.
    importcpp: "Add", header: "Transfer_IteratorOfProcessForFinder.hxx".}
#[ proc filter*(this: var TransferIteratorOfProcessForFinder;
            list: Handle[TransferHSequenceOfFinder]; keep: StandardBoolean = true) {.
    importcpp: "Filter", header: "Transfer_IteratorOfProcessForFinder.hxx".}
proc hasStarting*(this: TransferIteratorOfProcessForFinder): StandardBoolean {.
    noSideEffect, importcpp: "HasStarting",
    header: "Transfer_IteratorOfProcessForFinder.hxx".}
proc starting*(this: TransferIteratorOfProcessForFinder): Handle[TransferFinder] {.
    noSideEffect, importcpp: "Starting",
    header: "Transfer_IteratorOfProcessForFinder.hxx".} ]#