import ldom_types
import ../tcollection/tcollection_types
#import ../standard/standard_types
# Standard_IStream

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



proc newLDOMParser*(): LDOMParser {.cdecl, constructor, importcpp: "LDOMParser(@)",
                                 header: "LDOMParser.hxx".}
proc destroyLDOMParser*(this: var LDOMParser) {.cdecl, importcpp: "#.~LDOMParser()",
    header: "LDOMParser.hxx".}
proc getDocument*(this: var LDOMParser): LDOM_Document {.cdecl,
    importcpp: "getDocument", header: "LDOMParser.hxx".}
proc parse*(this: var LDOMParser; aFileName: cstring): bool {.cdecl, importcpp: "parse",
    header: "LDOMParser.hxx".}
proc parse*(this: var LDOMParser; anInput: var Istream; theTagPerStep: bool = false;
           theWithoutRoot: bool = false): bool {.cdecl, importcpp: "parse",
    header: "LDOMParser.hxx".}
proc getError*(this: LDOMParser; aData: var TCollectionAsciiString): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "GetError", header: "LDOMParser.hxx".}
proc getBOM*(this: LDOMParser): LDOM_OSStreamBOMType {.noSideEffect, cdecl, importcpp: "GetBOM",
                                      header: "LDOMParser.hxx".}

