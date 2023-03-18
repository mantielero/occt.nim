import ../standard/standard_types
import ldom_types
import ../tcollection/tcollection_types



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
##             AGV 130302: bug corr: was error if strlen(root_elem_name) < 7

## #define XML_BUFFER_SIZE 1000

const
  XML_BUFFER_SIZE* = 20480




proc newLDOM_XmlReader*(aDocument: Handle[LDOM_MemManager];
                       anErrorString: var TCollectionAsciiString;
                       theTagPerStep: bool = false): LDOM_XmlReader {.cdecl,
    constructor, importcpp: "LDOM_XmlReader(@)", header: "LDOM_XmlReader.hxx".}
proc readRecord*(this: var LDOM_XmlReader; theIStream: var StandardIStream;
                theData: var LDOM_OSStream; theDocStart: var bool): LDOM_XmlReaderRecordType {.
    cdecl, importcpp: "ReadRecord", header: "LDOM_XmlReader.hxx".}
proc getElement*(this: LDOM_XmlReader): var LDOM_BasicElement {.noSideEffect, cdecl,
    importcpp: "GetElement", header: "LDOM_XmlReader.hxx".}
proc createElement*(this: var LDOM_XmlReader; theName: cstring; theLen: cint) {.cdecl,
    importcpp: "CreateElement", header: "LDOM_XmlReader.hxx".}
proc getInteger*(theValue: var LDOMBasicString; theStart: cstring; theEnd: cstring): bool {.
    cdecl, importcpp: "LDOM_XmlReader::getInteger(@)", header: "LDOM_XmlReader.hxx".}
proc getBOM*(this: LDOM_XmlReader): LDOM_OSStreamBOMType {.noSideEffect, cdecl,
    importcpp: "GetBOM", header: "LDOM_XmlReader.hxx".}

