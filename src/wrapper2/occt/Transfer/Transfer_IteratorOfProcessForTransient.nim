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
  ../Standard/Standard_Handle, ../TColStd/TColStd_HSequenceOfTransient,
  Transfer_TransferIterator, Transfer_TransferMapOfProcessForTransient

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_Transient"
discard "forward decl of Transfer_ProcessForTransient"
discard "forward decl of Transfer_ActorOfProcessForTransient"
discard "forward decl of Transfer_Binder"
type
  Transfer_IteratorOfProcessForTransient* {.
      importcpp: "Transfer_IteratorOfProcessForTransient",
      header: "Transfer_IteratorOfProcessForTransient.hxx", bycopy.} = object of Transfer_TransferIterator ##
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


proc constructTransfer_IteratorOfProcessForTransient*(
    withstarts: Standard_Boolean): Transfer_IteratorOfProcessForTransient {.
    constructor, importcpp: "Transfer_IteratorOfProcessForTransient(@)",
    header: "Transfer_IteratorOfProcessForTransient.hxx".}
proc Add*(this: var Transfer_IteratorOfProcessForTransient;
         binder: handle[Transfer_Binder]) {.importcpp: "Add",
    header: "Transfer_IteratorOfProcessForTransient.hxx".}
proc Add*(this: var Transfer_IteratorOfProcessForTransient;
         binder: handle[Transfer_Binder]; start: handle[Standard_Transient]) {.
    importcpp: "Add", header: "Transfer_IteratorOfProcessForTransient.hxx".}
proc Filter*(this: var Transfer_IteratorOfProcessForTransient;
            list: handle[TColStd_HSequenceOfTransient];
            keep: Standard_Boolean = Standard_True) {.importcpp: "Filter",
    header: "Transfer_IteratorOfProcessForTransient.hxx".}
proc HasStarting*(this: Transfer_IteratorOfProcessForTransient): Standard_Boolean {.
    noSideEffect, importcpp: "HasStarting",
    header: "Transfer_IteratorOfProcessForTransient.hxx".}
proc Starting*(this: Transfer_IteratorOfProcessForTransient): handle[
    Standard_Transient] {.noSideEffect, importcpp: "Starting",
                         header: "Transfer_IteratorOfProcessForTransient.hxx".}