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
discard "forward decl of Standard_Transient"
discard "forward decl of Transfer_ProcessForTransient"
discard "forward decl of Transfer_ActorOfProcessForTransient"
discard "forward decl of Transfer_Binder"
type
  TransferIteratorOfProcessForTransient* {.
      importcpp: "Transfer_IteratorOfProcessForTransient",
      header: "Transfer_IteratorOfProcessForTransient.hxx", bycopy.} = object of TransferTransferIterator


proc `new`*(this: var TransferIteratorOfProcessForTransient; theSize: csize_t): pointer {.
    importcpp: "Transfer_IteratorOfProcessForTransient::operator new",
    header: "Transfer_IteratorOfProcessForTransient.hxx".}
proc `delete`*(this: var TransferIteratorOfProcessForTransient; theAddress: pointer) {.
    importcpp: "Transfer_IteratorOfProcessForTransient::operator delete",
    header: "Transfer_IteratorOfProcessForTransient.hxx".}
proc `new[]`*(this: var TransferIteratorOfProcessForTransient; theSize: csize_t): pointer {.
    importcpp: "Transfer_IteratorOfProcessForTransient::operator new[]",
    header: "Transfer_IteratorOfProcessForTransient.hxx".}
proc `delete[]`*(this: var TransferIteratorOfProcessForTransient;
                theAddress: pointer) {.importcpp: "Transfer_IteratorOfProcessForTransient::operator delete[]", header: "Transfer_IteratorOfProcessForTransient.hxx".}
proc `new`*(this: var TransferIteratorOfProcessForTransient; a2: csize_t;
           theAddress: pointer): pointer {.importcpp: "Transfer_IteratorOfProcessForTransient::operator new", header: "Transfer_IteratorOfProcessForTransient.hxx".}
proc `delete`*(this: var TransferIteratorOfProcessForTransient; a2: pointer;
              a3: pointer) {.importcpp: "Transfer_IteratorOfProcessForTransient::operator delete",
                           header: "Transfer_IteratorOfProcessForTransient.hxx".}
proc constructTransferIteratorOfProcessForTransient*(withstarts: StandardBoolean): TransferIteratorOfProcessForTransient {.
    constructor, importcpp: "Transfer_IteratorOfProcessForTransient(@)",
    header: "Transfer_IteratorOfProcessForTransient.hxx".}
proc add*(this: var TransferIteratorOfProcessForTransient;
         binder: Handle[TransferBinder]) {.importcpp: "Add",
    header: "Transfer_IteratorOfProcessForTransient.hxx".}
proc add*(this: var TransferIteratorOfProcessForTransient;
         binder: Handle[TransferBinder]; start: Handle[StandardTransient]) {.
    importcpp: "Add", header: "Transfer_IteratorOfProcessForTransient.hxx".}
#[ proc filter*(this: var TransferIteratorOfProcessForTransient;
            list: Handle[TColStdHSequenceOfTransient];
            keep: StandardBoolean = true) {.importcpp: "Filter", header: "Transfer_IteratorOfProcessForTransient.hxx".}
proc hasStarting*(this: TransferIteratorOfProcessForTransient): StandardBoolean {.
    noSideEffect, importcpp: "HasStarting",
    header: "Transfer_IteratorOfProcessForTransient.hxx".}
proc starting*(this: TransferIteratorOfProcessForTransient): Handle[
    StandardTransient] {.noSideEffect, importcpp: "Starting",
                        header: "Transfer_IteratorOfProcessForTransient.hxx".} ]#