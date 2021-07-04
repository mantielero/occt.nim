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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, Transfer_HSequenceOfFinder,
  Transfer_TransferIterator, Transfer_TransferMapOfProcessForFinder

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Transfer_Finder"
discard "forward decl of Transfer_FindHasher"
discard "forward decl of Transfer_ProcessForFinder"
discard "forward decl of Transfer_ActorOfProcessForFinder"
discard "forward decl of Transfer_Binder"
type
  Transfer_IteratorOfProcessForFinder* {.importcpp: "Transfer_IteratorOfProcessForFinder", header: "Transfer_IteratorOfProcessForFinder.hxx",
                                        bycopy.} = object of Transfer_TransferIterator ##
                                                                                  ## !
                                                                                  ## Creates
                                                                                  ## an
                                                                                  ## empty
                                                                                  ## Iterator
                                                                                  ##
                                                                                  ## !
                                                                                  ## if
                                                                                  ## withstarts
                                                                                  ## is
                                                                                  ## True,
                                                                                  ## each
                                                                                  ## Binder
                                                                                  ## to
                                                                                  ## be
                                                                                  ## iterated
                                                                                  ## will
                                                                                  ##
                                                                                  ## !
                                                                                  ## be
                                                                                  ## associated
                                                                                  ## to
                                                                                  ## its
                                                                                  ## corresponding
                                                                                  ## Starting
                                                                                  ## Object


proc constructTransfer_IteratorOfProcessForFinder*(withstarts: Standard_Boolean): Transfer_IteratorOfProcessForFinder {.
    constructor, importcpp: "Transfer_IteratorOfProcessForFinder(@)",
    header: "Transfer_IteratorOfProcessForFinder.hxx".}
proc Add*(this: var Transfer_IteratorOfProcessForFinder;
         binder: handle[Transfer_Binder]) {.importcpp: "Add",
    header: "Transfer_IteratorOfProcessForFinder.hxx".}
proc Add*(this: var Transfer_IteratorOfProcessForFinder;
         binder: handle[Transfer_Binder]; start: handle[Transfer_Finder]) {.
    importcpp: "Add", header: "Transfer_IteratorOfProcessForFinder.hxx".}
proc Filter*(this: var Transfer_IteratorOfProcessForFinder;
            list: handle[Transfer_HSequenceOfFinder];
            keep: Standard_Boolean = Standard_True) {.importcpp: "Filter",
    header: "Transfer_IteratorOfProcessForFinder.hxx".}
proc HasStarting*(this: Transfer_IteratorOfProcessForFinder): Standard_Boolean {.
    noSideEffect, importcpp: "HasStarting",
    header: "Transfer_IteratorOfProcessForFinder.hxx".}
proc Starting*(this: Transfer_IteratorOfProcessForFinder): handle[Transfer_Finder] {.
    noSideEffect, importcpp: "Starting",
    header: "Transfer_IteratorOfProcessForFinder.hxx".}