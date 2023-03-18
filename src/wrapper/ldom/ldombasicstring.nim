import ../standard/standard_types
import ldom_types
import ../tcollection/tcollection_types


##  Created on: 2001-06-26
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




proc destroyLDOMBasicString*(this: var LDOMBasicString) {.cdecl,
    importcpp: "#.~LDOMBasicString()", header: "LDOMBasicString.hxx".}
proc `type`*(this: LDOMBasicString): LDOMBasicStringStringType {.noSideEffect, cdecl,
    importcpp: "Type", header: "LDOMBasicString.hxx".}
proc getInteger*(this: LDOMBasicString; aResult: var cint): bool {.noSideEffect, cdecl,
    importcpp: "GetInteger", header: "LDOMBasicString.hxx".}
proc getString*(this: LDOMBasicString): cstring {.noSideEffect, cdecl,
    importcpp: "GetString", header: "LDOMBasicString.hxx".}
proc equals*(this: LDOMBasicString; anOther: LDOMBasicString): bool {.noSideEffect,
    cdecl, importcpp: "equals", header: "LDOMBasicString.hxx".}
proc `==`*(this: LDOMBasicString; a2: ptr LDOM_NullPtr): bool {.noSideEffect, cdecl,
    importcpp: "(# == #)", header: "LDOMBasicString.hxx".}
proc `==`*(this: LDOMBasicString; anOther: LDOMBasicString): bool {.noSideEffect,
    cdecl, importcpp: "(# == #)", header: "LDOMBasicString.hxx".}
converter `tCollectionAsciiString`*(this: LDOMBasicString): TCollectionAsciiString {.
    noSideEffect, cdecl,
    importcpp: "LDOMBasicString::operator TCollection_AsciiString",
    header: "LDOMBasicString.hxx".}
converter `tCollectionExtendedString`*(this: LDOMBasicString): TCollectionExtendedString {.
    noSideEffect, cdecl,
    importcpp: "LDOMBasicString::operator TCollection_ExtendedString",
    header: "LDOMBasicString.hxx".}
proc newLDOMBasicString*(): LDOMBasicString {.cdecl, constructor,
    importcpp: "LDOMBasicString(@)", header: "LDOMBasicString.hxx".}
proc newLDOMBasicString*(anOther: LDOMBasicString): LDOMBasicString {.cdecl,
    constructor, importcpp: "LDOMBasicString(@)", header: "LDOMBasicString.hxx".}
proc newLDOMBasicString*(aValue: cint): LDOMBasicString {.cdecl, constructor,
    importcpp: "LDOMBasicString(@)", header: "LDOMBasicString.hxx".}
proc newLDOMBasicString*(aValue: cstring): LDOMBasicString {.cdecl, constructor,
    importcpp: "LDOMBasicString(@)", header: "LDOMBasicString.hxx".}
proc newLDOMBasicString*(aValue: cstring; aDoc: Handle[LDOM_MemManager]): LDOMBasicString {.
    cdecl, constructor, importcpp: "LDOMBasicString(@)",
    header: "LDOMBasicString.hxx".}
proc newLDOMBasicString*(aValue: cstring; aLen: cint; aDoc: Handle[LDOM_MemManager]): LDOMBasicString {.
    cdecl, constructor, importcpp: "LDOMBasicString(@)",
    header: "LDOMBasicString.hxx".}

