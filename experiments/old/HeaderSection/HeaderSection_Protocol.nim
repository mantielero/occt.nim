##  Created on: 1994-06-16
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of HeaderSection_Protocol"
discard "forward decl of HeaderSection_Protocol"
type
  HandleC1C1* = Handle[HeaderSectionProtocol]

## ! Protocol for HeaderSection Entities
## ! It requires HeaderSection as a Resource

type
  HeaderSectionProtocol* {.importcpp: "HeaderSection_Protocol",
                          header: "HeaderSection_Protocol.hxx", bycopy.} = object of StepDataProtocol


proc constructHeaderSectionProtocol*(): HeaderSectionProtocol {.constructor,
    importcpp: "HeaderSection_Protocol(@)", header: "HeaderSection_Protocol.hxx".}
proc typeNumber*(this: HeaderSectionProtocol; atype: Handle[StandardType]): cint {.
    noSideEffect, importcpp: "TypeNumber", header: "HeaderSection_Protocol.hxx".}
proc schemaName*(this: HeaderSectionProtocol): StandardCString {.noSideEffect,
    importcpp: "SchemaName", header: "HeaderSection_Protocol.hxx".}
type
  HeaderSectionProtocolbaseType* = StepDataProtocol

proc getTypeName*(): cstring {.importcpp: "HeaderSection_Protocol::get_type_name(@)",
                            header: "HeaderSection_Protocol.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "HeaderSection_Protocol::get_type_descriptor(@)",
    header: "HeaderSection_Protocol.hxx".}
proc dynamicType*(this: HeaderSectionProtocol): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "HeaderSection_Protocol.hxx".}

























