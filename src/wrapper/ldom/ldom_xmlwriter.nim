import ../standard/standard_types
import ldom_types



##  Created on: 2001-06-28
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



proc newLDOM_XmlWriter*(theEncoding: cstring = nil): LDOM_XmlWriter {.cdecl,
    constructor, importcpp: "LDOM_XmlWriter(@)", header: "LDOM_XmlWriter.hxx".}
proc destroyLDOM_XmlWriter*(this: var LDOM_XmlWriter) {.cdecl,
    importcpp: "#.~LDOM_XmlWriter()", header: "LDOM_XmlWriter.hxx".}
proc setIndentation*(this: var LDOM_XmlWriter; theIndent: cint) {.cdecl,
    importcpp: "SetIndentation", header: "LDOM_XmlWriter.hxx".}
proc write*(this: var LDOM_XmlWriter; theOStream: var StandardOStream;
           theDoc: LDOM_Document) {.cdecl, importcpp: "Write",
                                  header: "LDOM_XmlWriter.hxx".}
proc write*(this: var LDOM_XmlWriter; theOStream: var StandardOStream;
           theNode: LDOM_Node) {.cdecl, importcpp: "Write",
                               header: "LDOM_XmlWriter.hxx".}

