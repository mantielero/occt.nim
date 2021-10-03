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
  StandardGUID_SIZE* = 36
  StandardGUID_SIZE_ALLOC* = StandardGUID_SIZE + 1

type
  StandardGUID* {.importcpp: "Standard_GUID", header: "Standard_GUID.hxx", bycopy.} = object


proc constructStandardGUID*(): StandardGUID {.cdecl, constructor,
    importcpp: "Standard_GUID(@)", dynlib: tkernel.}
proc constructStandardGUID*(aGuid: StandardCString): StandardGUID {.cdecl,
    constructor, importcpp: "Standard_GUID(@)", dynlib: tkernel.}
proc constructStandardGUID*(aGuid: StandardExtString): StandardGUID {.cdecl,
    constructor, importcpp: "Standard_GUID(@)", dynlib: tkernel.}
proc constructStandardGUID*(a32b: cint; a16b1: StandardExtCharacter;
                           a16b2: StandardExtCharacter;
                           a16b3: StandardExtCharacter; a8b1: StandardByte;
                           a8b2: StandardByte; a8b3: StandardByte;
                           a8b4: StandardByte; a8b5: StandardByte;
                           a8b6: StandardByte): StandardGUID {.cdecl, constructor,
    importcpp: "Standard_GUID(@)", dynlib: tkernel.}
proc constructStandardGUID*(aGuid: StandardUUID): StandardGUID {.cdecl, constructor,
    importcpp: "Standard_GUID(@)", dynlib: tkernel.}
proc constructStandardGUID*(aGuid: StandardGUID): StandardGUID {.cdecl, constructor,
    importcpp: "Standard_GUID(@)", dynlib: tkernel.}
proc toUUID*(this: StandardGUID): StandardUUID {.noSideEffect, cdecl,
    importcpp: "ToUUID", dynlib: tkernel.}
proc toCString*(this: StandardGUID; aStrGuid: StandardPCharacter) {.noSideEffect,
    cdecl, importcpp: "ToCString", dynlib: tkernel.}
proc toExtString*(this: StandardGUID; aStrGuid: StandardPExtCharacter) {.
    noSideEffect, cdecl, importcpp: "ToExtString", dynlib: tkernel.}
proc isSame*(this: StandardGUID; uid: StandardGUID): StandardBoolean {.noSideEffect,
    cdecl, importcpp: "IsSame", dynlib: tkernel.}
proc `==`*(this: StandardGUID; uid: StandardGUID): StandardBoolean {.noSideEffect,
    cdecl, importcpp: "(# == #)", dynlib: tkernel.}
proc isNotSame*(this: StandardGUID; uid: StandardGUID): StandardBoolean {.
    noSideEffect, cdecl, importcpp: "IsNotSame", dynlib: tkernel.}
proc assign*(this: var StandardGUID; uid: StandardGUID) {.cdecl, importcpp: "Assign",
    dynlib: tkernel.}
proc assign*(this: var StandardGUID; uid: StandardUUID) {.cdecl, importcpp: "Assign",
    dynlib: tkernel.}
proc shallowDump*(this: StandardGUID; aStream: var StandardOStream) {.noSideEffect,
    cdecl, importcpp: "ShallowDump", dynlib: tkernel.}
proc checkGUIDFormat*(aGuid: StandardCString): StandardBoolean {.cdecl,
    importcpp: "Standard_GUID::CheckGUIDFormat(@)", dynlib: tkernel.}
proc hash*(this: StandardGUID; upper: cint): cint {.noSideEffect, cdecl,
    importcpp: "Hash", dynlib: tkernel.}
proc hashCode*(theGUID: StandardGUID; theUpperBound: cint): cint {.cdecl,
    importcpp: "Standard_GUID::HashCode(@)", dynlib: tkernel.}
proc isEqual*(string1: StandardGUID; string2: StandardGUID): StandardBoolean {.cdecl,
    importcpp: "Standard_GUID::IsEqual(@)", dynlib: tkernel.}