##  Created on: 2001-07-20
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
## AGV 060302: Input from std::istream

import
  ../LDOM/LDOM_Document, ../LDOM/LDOM_OSStream

discard "forward decl of LDOM_XmlReader"
type
  LDOMParser* {.importcpp: "LDOMParser", header: "LDOMParser.hxx", bycopy.} = object ##  ---------- PUBLIC METHODS ----------
                                                                             ##  ---------- PROTECTED METHODS ----------
                                                                             ##  ---------- PRIVATE METHODS ----------
                                                                             ##  ---------- PRIVATE FIELDS ----------


proc constructLDOMParser*(): LDOMParser {.constructor, importcpp: "LDOMParser(@)",
                                       header: "LDOMParser.hxx".}
proc destroyLDOMParser*(this: var LDOMParser) {.importcpp: "#.~LDOMParser()",
    header: "LDOMParser.hxx".}
proc getDocument*(this: var LDOMParser): LDOM_Document {.importcpp: "getDocument",
    header: "LDOMParser.hxx".}
proc parse*(this: var LDOMParser; aFileName: cstring): Standard_Boolean {.
    importcpp: "parse", header: "LDOMParser.hxx".}
proc parse*(this: var LDOMParser; anInput: var istream;
           theTagPerStep: Standard_Boolean = Standard_False;
           theWithoutRoot: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "parse", header: "LDOMParser.hxx".}
proc GetError*(this: LDOMParser; aData: var TCollection_AsciiString): TCollection_AsciiString {.
    noSideEffect, importcpp: "GetError", header: "LDOMParser.hxx".}
proc GetBOM*(this: LDOMParser): BOMType {.noSideEffect, importcpp: "GetBOM",
                                      header: "LDOMParser.hxx".}