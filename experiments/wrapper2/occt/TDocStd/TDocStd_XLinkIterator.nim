##  Created by: DAUTRY Philippe
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of Standard_NoMoreObject"
discard "forward decl of TDocStd_Document"
type
  TDocStdXLinkIterator* {.importcpp: "TDocStd_XLinkIterator",
                         header: "TDocStd_XLinkIterator.hxx", bycopy.} = object ## !
                                                                           ## Returns an empty
                                                                           ## iterator;


proc constructTDocStdXLinkIterator*(): TDocStdXLinkIterator {.constructor,
    importcpp: "TDocStd_XLinkIterator(@)", header: "TDocStd_XLinkIterator.hxx".}
proc constructTDocStdXLinkIterator*(d: Handle[TDocStdDocument]): TDocStdXLinkIterator {.
    constructor, importcpp: "TDocStd_XLinkIterator(@)",
    header: "TDocStd_XLinkIterator.hxx".}
proc initialize*(this: var TDocStdXLinkIterator; d: Handle[TDocStdDocument]) {.
    importcpp: "Initialize", header: "TDocStd_XLinkIterator.hxx".}
proc more*(this: TDocStdXLinkIterator): bool {.noSideEffect, importcpp: "More",
    header: "TDocStd_XLinkIterator.hxx".}
proc next*(this: var TDocStdXLinkIterator) {.importcpp: "Next",
    header: "TDocStd_XLinkIterator.hxx".}
proc value*(this: TDocStdXLinkIterator): TDocStdXLinkPtr {.noSideEffect,
    importcpp: "Value", header: "TDocStd_XLinkIterator.hxx".}
