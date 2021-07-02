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
  StandardGUID_SIZE_ALLOC* = standardGUID_SIZE + 1

type
  StandardGUID* {.importcpp: "Standard_GUID", header: "Standard_GUID.hxx", bycopy.} = object


proc constructStandardGUID*(): StandardGUID {.constructor,
    importcpp: "Standard_GUID(@)", header: "Standard_GUID.hxx".}
proc constructStandardGUID*(aGuid: StandardCString): StandardGUID {.constructor,
    importcpp: "Standard_GUID(@)", header: "Standard_GUID.hxx".}
proc constructStandardGUID*(aGuid: StandardExtString): StandardGUID {.constructor,
    importcpp: "Standard_GUID(@)", header: "Standard_GUID.hxx".}
proc constructStandardGUID*(a32b: StandardInteger; a16b1: StandardExtCharacter;
                           a16b2: StandardExtCharacter;
                           a16b3: StandardExtCharacter; a8b1: StandardByte;
                           a8b2: StandardByte; a8b3: StandardByte;
                           a8b4: StandardByte; a8b5: StandardByte;
                           a8b6: StandardByte): StandardGUID {.constructor,
    importcpp: "Standard_GUID(@)", header: "Standard_GUID.hxx".}
proc constructStandardGUID*(aGuid: StandardUUID): StandardGUID {.constructor,
    importcpp: "Standard_GUID(@)", header: "Standard_GUID.hxx".}
proc constructStandardGUID*(aGuid: StandardGUID): StandardGUID {.constructor,
    importcpp: "Standard_GUID(@)", header: "Standard_GUID.hxx".}
proc toUUID*(this: StandardGUID): StandardUUID {.noSideEffect, importcpp: "ToUUID",
    header: "Standard_GUID.hxx".}
proc toCString*(this: StandardGUID; aStrGuid: StandardPCharacter) {.noSideEffect,
    importcpp: "ToCString", header: "Standard_GUID.hxx".}
proc toExtString*(this: StandardGUID; aStrGuid: StandardPExtCharacter) {.
    noSideEffect, importcpp: "ToExtString", header: "Standard_GUID.hxx".}
proc isSame*(this: StandardGUID; uid: StandardGUID): StandardBoolean {.noSideEffect,
    importcpp: "IsSame", header: "Standard_GUID.hxx".}
proc `==`*(this: StandardGUID; uid: StandardGUID): StandardBoolean {.noSideEffect,
    importcpp: "(# == #)", header: "Standard_GUID.hxx".}
proc isNotSame*(this: StandardGUID; uid: StandardGUID): StandardBoolean {.
    noSideEffect, importcpp: "IsNotSame", header: "Standard_GUID.hxx".}
proc assign*(this: var StandardGUID; uid: StandardGUID) {.importcpp: "Assign",
    header: "Standard_GUID.hxx".}
proc assign*(this: var StandardGUID; uid: StandardUUID) {.importcpp: "Assign",
    header: "Standard_GUID.hxx".}
proc shallowDump*(this: StandardGUID; aStream: var StandardOStream) {.noSideEffect,
    importcpp: "ShallowDump", header: "Standard_GUID.hxx".}
proc checkGUIDFormat*(aGuid: StandardCString): StandardBoolean {.
    importcpp: "Standard_GUID::CheckGUIDFormat(@)", header: "Standard_GUID.hxx".}
proc hash*(this: StandardGUID; upper: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "Hash", header: "Standard_GUID.hxx".}
proc hashCode*(theGUID: StandardGUID; theUpperBound: StandardInteger): StandardInteger {.
    importcpp: "Standard_GUID::HashCode(@)", header: "Standard_GUID.hxx".}
proc isEqual*(string1: StandardGUID; string2: StandardGUID): StandardBoolean {.
    importcpp: "Standard_GUID::IsEqual(@)", header: "Standard_GUID.hxx".}

