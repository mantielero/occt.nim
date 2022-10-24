import standard_types

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



proc constructStandardGUID*(): StandardGUID {.cdecl, constructor,
    importcpp: "Standard_GUID(@)", header: "Standard_GUID.hxx".}
proc constructStandardGUID*(aGuid: cstring): StandardGUID {.cdecl, constructor,
    importcpp: "Standard_GUID(@)", header: "Standard_GUID.hxx".}
proc constructStandardGUID*(aGuid: StandardExtString): StandardGUID {.cdecl,
    constructor, importcpp: "Standard_GUID(@)", header: "Standard_GUID.hxx".}
proc constructStandardGUID*(a32b: cint; a16b1: StandardExtCharacter;
                           a16b2: StandardExtCharacter;
                           a16b3: StandardExtCharacter; a8b1: StandardByte;
                           a8b2: StandardByte; a8b3: StandardByte;
                           a8b4: StandardByte; a8b5: StandardByte;
                           a8b6: StandardByte): StandardGUID {.cdecl, constructor,
    importcpp: "Standard_GUID(@)", header: "Standard_GUID.hxx".}
proc constructStandardGUID*(aGuid: StandardUUID): StandardGUID {.cdecl, constructor,
    importcpp: "Standard_GUID(@)", header: "Standard_GUID.hxx".}
proc constructStandardGUID*(aGuid: StandardGUID): StandardGUID {.cdecl, constructor,
    importcpp: "Standard_GUID(@)", header: "Standard_GUID.hxx".}
proc toUUID*(this: StandardGUID): StandardUUID {.noSideEffect, cdecl,
    importcpp: "ToUUID", header: "Standard_GUID.hxx".}
proc toCString*(this: StandardGUID; aStrGuid: StandardPCharacter) {.noSideEffect,
    cdecl, importcpp: "ToCString", header: "Standard_GUID.hxx".}
proc toExtString*(this: StandardGUID; aStrGuid: StandardPExtCharacter) {.
    noSideEffect, cdecl, importcpp: "ToExtString", header: "Standard_GUID.hxx".}
proc isSame*(this: StandardGUID; uid: StandardGUID): bool {.noSideEffect, cdecl,
    importcpp: "IsSame", header: "Standard_GUID.hxx".}
proc `==`*(this: StandardGUID; uid: StandardGUID): bool {.noSideEffect, cdecl,
    importcpp: "(# == #)", header: "Standard_GUID.hxx".}
proc isNotSame*(this: StandardGUID; uid: StandardGUID): bool {.noSideEffect, cdecl,
    importcpp: "IsNotSame", header: "Standard_GUID.hxx".}
proc assign*(this: var StandardGUID; uid: StandardGUID) {.cdecl, importcpp: "Assign",
    header: "Standard_GUID.hxx".}
proc assign*(this: var StandardGUID; uid: StandardUUID) {.cdecl, importcpp: "Assign",
    header: "Standard_GUID.hxx".}
proc shallowDump*(this: StandardGUID; aStream: var StandardOStream) {.noSideEffect,
    cdecl, importcpp: "ShallowDump", header: "Standard_GUID.hxx".}
proc checkGUIDFormat*(aGuid: cstring): bool {.cdecl,
    importcpp: "Standard_GUID::CheckGUIDFormat(@)", header: "Standard_GUID.hxx".}
proc hash*(this: StandardGUID; upper: cint): cint {.noSideEffect, cdecl,
    importcpp: "Hash", header: "Standard_GUID.hxx".}
proc hashCode*(theGUID: StandardGUID; theUpperBound: cint): cint {.cdecl,
    importcpp: "Standard_GUID::HashCode(@)", header: "Standard_GUID.hxx".}
proc isEqual*(string1: StandardGUID; string2: StandardGUID): bool {.cdecl,
    importcpp: "Standard_GUID::IsEqual(@)", header: "Standard_GUID.hxx".}
