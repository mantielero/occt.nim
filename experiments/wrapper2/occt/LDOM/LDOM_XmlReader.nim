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

import
  LDOM_BasicElement, LDOM_OSStream

discard "forward decl of TCollection_AsciiString"
type
  LDOM_XmlReader* {.importcpp: "LDOM_XmlReader", header: "LDOM_XmlReader.hxx", bycopy.} = object ##  ---------- PRIVATE (PROHIBITED) METHODS ----------
                                                                                         ##  ---------- PRIVATE FIELDS ----------
    ##  optim. reading attributes

  LDOM_XmlReaderRecordType* {.size: sizeof(cint),
                             importcpp: "LDOM_XmlReader::RecordType",
                             header: "LDOM_XmlReader.hxx".} = enum
    XML_UNKNOWN, XML_HEADER, XML_DOCTYPE, XML_COMMENT, XML_START_ELEMENT,
    XML_END_ELEMENT, XML_FULL_ELEMENT, XML_TEXT, XML_CDATA, XML_EOF


proc constructLDOM_XmlReader*(aDocument: handle[LDOM_MemManager];
                             anErrorString: var TCollection_AsciiString;
                             theTagPerStep: Standard_Boolean = Standard_False): LDOM_XmlReader {.
    constructor, importcpp: "LDOM_XmlReader(@)", header: "LDOM_XmlReader.hxx".}
proc ReadRecord*(this: var LDOM_XmlReader; theIStream: var Standard_IStream;
                theData: var LDOM_OSStream): LDOM_XmlReaderRecordType {.
    importcpp: "ReadRecord", header: "LDOM_XmlReader.hxx".}
proc GetElement*(this: LDOM_XmlReader): var LDOM_BasicElement {.noSideEffect,
    importcpp: "GetElement", header: "LDOM_XmlReader.hxx".}
proc CreateElement*(this: var LDOM_XmlReader; theName: cstring;
                   theLen: Standard_Integer) {.importcpp: "CreateElement",
    header: "LDOM_XmlReader.hxx".}
proc getInteger*(theValue: var LDOMBasicString; theStart: cstring; theEnd: cstring): Standard_Boolean {.
    importcpp: "LDOM_XmlReader::getInteger(@)", header: "LDOM_XmlReader.hxx".}
proc GetBOM*(this: LDOM_XmlReader): BOMType {.noSideEffect, importcpp: "GetBOM",
    header: "LDOM_XmlReader.hxx".}