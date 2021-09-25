##  Created on: 2001-07-30
##  Created by: Alexander GRIGORIEV
##  Copyright (c) 2001-2014 OPEN CASCADE SAS
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

##   Block of comments describing class PCDM_DOMHeaderParser

type
  PCDM_DOMHeaderParser* {.importcpp: "PCDM_DOMHeaderParser",
                         header: "PCDM_DOMHeaderParser.hxx", bycopy.} = object of LDOMParser ##  ---------- PUBLIC METHODS ----------
                                                                                      ##  ---------- PRIVATE FIELDS ----------


proc setStartElementName*(this: var PCDM_DOMHeaderParser;
                         aStartElementName: TCollectionAsciiString) {.
    importcpp: "SetStartElementName", header: "PCDM_DOMHeaderParser.hxx".}
proc setEndElementName*(this: var PCDM_DOMHeaderParser;
                       anEndElementName: TCollectionAsciiString) {.
    importcpp: "SetEndElementName", header: "PCDM_DOMHeaderParser.hxx".}
proc startElement*(this: var PCDM_DOMHeaderParser): bool {.importcpp: "startElement",
    header: "PCDM_DOMHeaderParser.hxx".}
proc endElement*(this: var PCDM_DOMHeaderParser): bool {.importcpp: "endElement",
    header: "PCDM_DOMHeaderParser.hxx".}
proc getElement*(this: PCDM_DOMHeaderParser): LDOM_Element {.noSideEffect,
    importcpp: "GetElement", header: "PCDM_DOMHeaderParser.hxx".}
