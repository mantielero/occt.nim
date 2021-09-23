##  Author: Kirill Gavrilov
##  Copyright (c) 2017-2019 OPEN CASCADE SAS
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
  XCAFPrs_Style, ../TDF/TDF_ChildIterator, ../TDF/TDF_Label,
  ../TopLoc/TopLoc_Location

## ! Auxiliary tool for iterating through Path identification string.

type
  XCAFPrs_DocumentIdIterator* {.importcpp: "XCAFPrs_DocumentIdIterator",
                               header: "XCAFPrs_DocumentIdIterator.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## Main
                                                                                      ## constructor.
                                                                                      ##
                                                                                      ## Disable
                                                                                      ## assignment
                                                                                      ## operator.
    ## !< full path
    ## !< current value
    ## !< last processed new-line symbol


proc constructXCAFPrs_DocumentIdIterator*(thePath: TCollection_AsciiString): XCAFPrs_DocumentIdIterator {.
    constructor, importcpp: "XCAFPrs_DocumentIdIterator(@)",
    header: "XCAFPrs_DocumentIdIterator.hxx".}
proc More*(this: XCAFPrs_DocumentIdIterator): bool {.noSideEffect, importcpp: "More",
    header: "XCAFPrs_DocumentIdIterator.hxx".}
proc Value*(this: XCAFPrs_DocumentIdIterator): TCollection_AsciiString {.
    noSideEffect, importcpp: "Value", header: "XCAFPrs_DocumentIdIterator.hxx".}
proc Next*(this: var XCAFPrs_DocumentIdIterator) {.importcpp: "Next",
    header: "XCAFPrs_DocumentIdIterator.hxx".}
##  =======================================================================
##  function : Next
##  purpose  :
##  =======================================================================

proc Next*(this: var XCAFPrs_DocumentIdIterator) {.importcpp: "Next",
    header: "XCAFPrs_DocumentIdIterator.hxx".}