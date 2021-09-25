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

## ! Auxiliary tool for iterating through Path identification string.

type
  XCAFPrsDocumentIdIterator* {.importcpp: "XCAFPrs_DocumentIdIterator",
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


proc constructXCAFPrsDocumentIdIterator*(thePath: TCollectionAsciiString): XCAFPrsDocumentIdIterator {.
    constructor, importcpp: "XCAFPrs_DocumentIdIterator(@)",
    header: "XCAFPrs_DocumentIdIterator.hxx".}
proc more*(this: XCAFPrsDocumentIdIterator): bool {.noSideEffect, importcpp: "More",
    header: "XCAFPrs_DocumentIdIterator.hxx".}
proc value*(this: XCAFPrsDocumentIdIterator): TCollectionAsciiString {.noSideEffect,
    importcpp: "Value", header: "XCAFPrs_DocumentIdIterator.hxx".}
proc next*(this: var XCAFPrsDocumentIdIterator) {.importcpp: "Next",
    header: "XCAFPrs_DocumentIdIterator.hxx".}
##  =======================================================================
##  function : Next
##  purpose  :
##  =======================================================================

proc next*(this: var XCAFPrsDocumentIdIterator) {.importcpp: "Next",
    header: "XCAFPrs_DocumentIdIterator.hxx".}
