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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, TDocStd_XLinkPtr, ../Standard/Standard_Boolean

discard "forward decl of Standard_NoMoreObject"
discard "forward decl of TDocStd_Document"
type
  TDocStd_XLinkIterator* {.importcpp: "TDocStd_XLinkIterator",
                          header: "TDocStd_XLinkIterator.hxx", bycopy.} = object ## !
                                                                            ## Returns an
                                                                            ## empty
                                                                            ## iterator;


proc constructTDocStd_XLinkIterator*(): TDocStd_XLinkIterator {.constructor,
    importcpp: "TDocStd_XLinkIterator(@)", header: "TDocStd_XLinkIterator.hxx".}
proc constructTDocStd_XLinkIterator*(D: handle[TDocStd_Document]): TDocStd_XLinkIterator {.
    constructor, importcpp: "TDocStd_XLinkIterator(@)",
    header: "TDocStd_XLinkIterator.hxx".}
proc Initialize*(this: var TDocStd_XLinkIterator; D: handle[TDocStd_Document]) {.
    importcpp: "Initialize", header: "TDocStd_XLinkIterator.hxx".}
proc More*(this: TDocStd_XLinkIterator): Standard_Boolean {.noSideEffect,
    importcpp: "More", header: "TDocStd_XLinkIterator.hxx".}
proc Next*(this: var TDocStd_XLinkIterator) {.importcpp: "Next",
    header: "TDocStd_XLinkIterator.hxx".}
proc Value*(this: TDocStd_XLinkIterator): TDocStd_XLinkPtr {.noSideEffect,
    importcpp: "Value", header: "TDocStd_XLinkIterator.hxx".}