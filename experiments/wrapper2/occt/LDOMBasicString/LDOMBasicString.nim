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

import
  ../Standard/Standard_Type, ../Standard/Standard_Macro,
  ../TCollection/TCollection_AsciiString,
  ../TCollection/TCollection_ExtendedString

discard "forward decl of LDOM_MemManager"
discard "forward decl of LDOM_NullPtr"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of TCollection_ExtendedString"
type
  LDOMBasicString* {.importcpp: "LDOMBasicString", header: "LDOMBasicString.hxx",
                    bycopy.} = object ##  ---------- PROTECTED METHODS ----------
                                   ##  ---------- PROTECTED FIELDS ----------

  LDOMBasicStringStringType* {.size: sizeof(cint),
                              importcpp: "LDOMBasicString::StringType",
                              header: "LDOMBasicString.hxx".} = enum
    LDOM_NULL = 0, LDOM_Integer, ##     LDOM_Real,
    LDOM_AsciiFree,           ##  String not connected to any container
    LDOM_AsciiDoc,            ##  String connected to LDOM_Document (container)
    LDOM_AsciiDocClear,       ##  --"--"--, consists of only XML-valid chars
    LDOM_AsciiHashed          ##  String connected to hash table


proc destroyLDOMBasicString*(this: var LDOMBasicString) {.
    importcpp: "#.~LDOMBasicString()", header: "LDOMBasicString.hxx".}
proc Type*(this: LDOMBasicString): LDOMBasicStringStringType {.noSideEffect,
    importcpp: "Type", header: "LDOMBasicString.hxx".}
proc GetInteger*(this: LDOMBasicString; aResult: var Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "GetInteger", header: "LDOMBasicString.hxx".}
proc GetString*(this: LDOMBasicString): cstring {.noSideEffect,
    importcpp: "GetString", header: "LDOMBasicString.hxx".}
proc equals*(this: LDOMBasicString; anOther: LDOMBasicString): Standard_Boolean {.
    noSideEffect, importcpp: "equals", header: "LDOMBasicString.hxx".}
proc `==`*(this: LDOMBasicString; a2: ptr LDOM_NullPtr): Standard_Boolean {.
    noSideEffect, importcpp: "(# == #)", header: "LDOMBasicString.hxx".}
proc `==`*(this: LDOMBasicString; anOther: LDOMBasicString): Standard_Boolean {.
    noSideEffect, importcpp: "(# == #)", header: "LDOMBasicString.hxx".}
converter `TCollection_AsciiString`*(this: LDOMBasicString): TCollection_AsciiString {.
    noSideEffect, importcpp: "LDOMBasicString::operator TCollection_AsciiString",
    header: "LDOMBasicString.hxx".}
converter `TCollection_ExtendedString`*(this: LDOMBasicString): TCollection_ExtendedString {.
    noSideEffect,
    importcpp: "LDOMBasicString::operator TCollection_ExtendedString",
    header: "LDOMBasicString.hxx".}
proc constructLDOMBasicString*(): LDOMBasicString {.constructor,
    importcpp: "LDOMBasicString(@)", header: "LDOMBasicString.hxx".}
proc constructLDOMBasicString*(anOther: LDOMBasicString): LDOMBasicString {.
    constructor, importcpp: "LDOMBasicString(@)", header: "LDOMBasicString.hxx".}
proc constructLDOMBasicString*(aValue: Standard_Integer): LDOMBasicString {.
    constructor, importcpp: "LDOMBasicString(@)", header: "LDOMBasicString.hxx".}
proc constructLDOMBasicString*(aValue: cstring): LDOMBasicString {.constructor,
    importcpp: "LDOMBasicString(@)", header: "LDOMBasicString.hxx".}
proc constructLDOMBasicString*(aValue: cstring; aDoc: handle[LDOM_MemManager]): LDOMBasicString {.
    constructor, importcpp: "LDOMBasicString(@)", header: "LDOMBasicString.hxx".}
proc constructLDOMBasicString*(aValue: cstring; aLen: Standard_Integer;
                              aDoc: handle[LDOM_MemManager]): LDOMBasicString {.
    constructor, importcpp: "LDOMBasicString(@)", header: "LDOMBasicString.hxx".}