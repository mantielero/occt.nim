##  Created on: 1992-09-11
##  Created by: Mireille MERCIEN
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
  ../Standard/Standard_Handle, ../Standard/Standard_Address,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_OutOfRange"
type
  TCollection_BaseSequence* {.importcpp: "TCollection_BaseSequence",
                             header: "TCollection_BaseSequence.hxx", bycopy.} = object ##
                                                                                  ## !
                                                                                  ## returns
                                                                                  ## True
                                                                                  ## if
                                                                                  ## the
                                                                                  ## sequence
                                                                                  ## <me>
                                                                                  ## contains
                                                                                  ## no
                                                                                  ## elements.
                                                                                  ##
                                                                                  ## !
                                                                                  ## Creation
                                                                                  ## of
                                                                                  ## an
                                                                                  ## empty
                                                                                  ## sequence.
                                                                                  ##
                                                                                  ## !
                                                                                  ## Creation
                                                                                  ## by
                                                                                  ## copy
                                                                                  ## of
                                                                                  ## existing
                                                                                  ## Sequence.
                                                                                  ##
                                                                                  ## !
                                                                                  ## Warning:
                                                                                  ## This
                                                                                  ## constructor
                                                                                  ## prints
                                                                                  ## a
                                                                                  ## warning
                                                                                  ## message.
                                                                                  ##
                                                                                  ## !
                                                                                  ## We
                                                                                  ## recommand
                                                                                  ## to
                                                                                  ## use
                                                                                  ## the
                                                                                  ## operator
                                                                                  ## =.


proc IsEmpty*(this: TCollection_BaseSequence): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "TCollection_BaseSequence.hxx".}
proc Length*(this: TCollection_BaseSequence): Standard_Integer {.noSideEffect,
    importcpp: "Length", header: "TCollection_BaseSequence.hxx".}
proc Reverse*(this: var TCollection_BaseSequence) {.importcpp: "Reverse",
    header: "TCollection_BaseSequence.hxx".}
proc Exchange*(this: var TCollection_BaseSequence; I: Standard_Integer;
              J: Standard_Integer) {.importcpp: "Exchange",
                                   header: "TCollection_BaseSequence.hxx".}