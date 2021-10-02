##  Created on: 1997-06-19
##  Created by: Christophe LEYNADIER
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

const
  Standard_GUID_SIZE* = 36
  Standard_GUID_SIZE_ALLOC* = Standard_GUID_SIZE + 1

type
  Standard_GUID* {.importcpp: "Standard_GUID", header: "Standard_GUID.hxx", bycopy.} = object


proc constructStandard_GUID*(): Standard_GUID {.cdecl, constructor,
    importcpp: "Standard_GUID(@)", dynlib: tkernel.}
proc constructStandard_GUID*(aGuid: Standard_CString): Standard_GUID {.cdecl,
    constructor, importcpp: "Standard_GUID(@)", dynlib: tkernel.}
proc constructStandard_GUID*(aGuid: Standard_ExtString): Standard_GUID {.cdecl,
    constructor, importcpp: "Standard_GUID(@)", dynlib: tkernel.}
proc constructStandard_GUID*(a32b: cint; a16b1: Standard_ExtCharacter;
                            a16b2: Standard_ExtCharacter;
                            a16b3: Standard_ExtCharacter; a8b1: Standard_Byte;
                            a8b2: Standard_Byte; a8b3: Standard_Byte;
                            a8b4: Standard_Byte; a8b5: Standard_Byte;
                            a8b6: Standard_Byte): Standard_GUID {.cdecl,
    constructor, importcpp: "Standard_GUID(@)", dynlib: tkernel.}
proc constructStandard_GUID*(aGuid: Standard_UUID): Standard_GUID {.cdecl,
    constructor, importcpp: "Standard_GUID(@)", dynlib: tkernel.}
proc constructStandard_GUID*(aGuid: Standard_GUID): Standard_GUID {.cdecl,
    constructor, importcpp: "Standard_GUID(@)", dynlib: tkernel.}
proc ToUUID*(this: Standard_GUID): Standard_UUID {.noSideEffect, cdecl,
    importcpp: "ToUUID", dynlib: tkernel.}
proc ToCString*(this: Standard_GUID; aStrGuid: Standard_PCharacter) {.noSideEffect,
    cdecl, importcpp: "ToCString", dynlib: tkernel.}
proc ToExtString*(this: Standard_GUID; aStrGuid: Standard_PExtCharacter) {.
    noSideEffect, cdecl, importcpp: "ToExtString", dynlib: tkernel.}
proc IsSame*(this: Standard_GUID; uid: Standard_GUID): Standard_Boolean {.
    noSideEffect, cdecl, importcpp: "IsSame", dynlib: tkernel.}
proc `==`*(this: Standard_GUID; uid: Standard_GUID): Standard_Boolean {.noSideEffect,
    cdecl, importcpp: "(# == #)", dynlib: tkernel.}
proc IsNotSame*(this: Standard_GUID; uid: Standard_GUID): Standard_Boolean {.
    noSideEffect, cdecl, importcpp: "IsNotSame", dynlib: tkernel.}
proc Assign*(this: var Standard_GUID; uid: Standard_GUID) {.cdecl, importcpp: "Assign",
    dynlib: tkernel.}
proc Assign*(this: var Standard_GUID; uid: Standard_UUID) {.cdecl, importcpp: "Assign",
    dynlib: tkernel.}
proc ShallowDump*(this: Standard_GUID; aStream: var Standard_OStream) {.noSideEffect,
    cdecl, importcpp: "ShallowDump", dynlib: tkernel.}
proc CheckGUIDFormat*(aGuid: Standard_CString): Standard_Boolean {.cdecl,
    importcpp: "Standard_GUID::CheckGUIDFormat(@)", dynlib: tkernel.}
proc Hash*(this: Standard_GUID; Upper: cint): cint {.noSideEffect, cdecl,
    importcpp: "Hash", dynlib: tkernel.}
proc HashCode*(theGUID: Standard_GUID; theUpperBound: cint): cint {.cdecl,
    importcpp: "Standard_GUID::HashCode(@)", dynlib: tkernel.}
proc IsEqual*(string1: Standard_GUID; string2: Standard_GUID): Standard_Boolean {.
    cdecl, importcpp: "Standard_GUID::IsEqual(@)", dynlib: tkernel.}