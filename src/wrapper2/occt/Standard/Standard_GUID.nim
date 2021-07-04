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

import
  Standard_DefineAlloc, Standard_Handle, Standard_Integer, Standard_ExtCharacter,
  Standard_Byte, Standard_CString, Standard_ExtString, Standard_UUID,
  Standard_PCharacter, Standard_PExtCharacter, Standard_Boolean, Standard_OStream

const
  Standard_GUID_SIZE* = 36
  Standard_GUID_SIZE_ALLOC* = Standard_GUID_SIZE + 1

type
  Standard_GUID* {.importcpp: "Standard_GUID", header: "Standard_GUID.hxx", bycopy.} = object


proc constructStandard_GUID*(): Standard_GUID {.constructor,
    importcpp: "Standard_GUID(@)", header: "Standard_GUID.hxx".}
proc constructStandard_GUID*(aGuid: Standard_CString): Standard_GUID {.constructor,
    importcpp: "Standard_GUID(@)", header: "Standard_GUID.hxx".}
proc constructStandard_GUID*(aGuid: Standard_ExtString): Standard_GUID {.
    constructor, importcpp: "Standard_GUID(@)", header: "Standard_GUID.hxx".}
proc constructStandard_GUID*(a32b: Standard_Integer; a16b1: Standard_ExtCharacter;
                            a16b2: Standard_ExtCharacter;
                            a16b3: Standard_ExtCharacter; a8b1: Standard_Byte;
                            a8b2: Standard_Byte; a8b3: Standard_Byte;
                            a8b4: Standard_Byte; a8b5: Standard_Byte;
                            a8b6: Standard_Byte): Standard_GUID {.constructor,
    importcpp: "Standard_GUID(@)", header: "Standard_GUID.hxx".}
proc constructStandard_GUID*(aGuid: Standard_UUID): Standard_GUID {.constructor,
    importcpp: "Standard_GUID(@)", header: "Standard_GUID.hxx".}
proc constructStandard_GUID*(aGuid: Standard_GUID): Standard_GUID {.constructor,
    importcpp: "Standard_GUID(@)", header: "Standard_GUID.hxx".}
proc ToUUID*(this: Standard_GUID): Standard_UUID {.noSideEffect, importcpp: "ToUUID",
    header: "Standard_GUID.hxx".}
proc ToCString*(this: Standard_GUID; aStrGuid: Standard_PCharacter) {.noSideEffect,
    importcpp: "ToCString", header: "Standard_GUID.hxx".}
proc ToExtString*(this: Standard_GUID; aStrGuid: Standard_PExtCharacter) {.
    noSideEffect, importcpp: "ToExtString", header: "Standard_GUID.hxx".}
proc IsSame*(this: Standard_GUID; uid: Standard_GUID): Standard_Boolean {.
    noSideEffect, importcpp: "IsSame", header: "Standard_GUID.hxx".}
proc `==`*(this: Standard_GUID; uid: Standard_GUID): Standard_Boolean {.noSideEffect,
    importcpp: "(# == #)", header: "Standard_GUID.hxx".}
proc IsNotSame*(this: Standard_GUID; uid: Standard_GUID): Standard_Boolean {.
    noSideEffect, importcpp: "IsNotSame", header: "Standard_GUID.hxx".}
proc Assign*(this: var Standard_GUID; uid: Standard_GUID) {.importcpp: "Assign",
    header: "Standard_GUID.hxx".}
proc Assign*(this: var Standard_GUID; uid: Standard_UUID) {.importcpp: "Assign",
    header: "Standard_GUID.hxx".}
proc ShallowDump*(this: Standard_GUID; aStream: var Standard_OStream) {.noSideEffect,
    importcpp: "ShallowDump", header: "Standard_GUID.hxx".}
proc CheckGUIDFormat*(aGuid: Standard_CString): Standard_Boolean {.
    importcpp: "Standard_GUID::CheckGUIDFormat(@)", header: "Standard_GUID.hxx".}
proc Hash*(this: Standard_GUID; Upper: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "Hash", header: "Standard_GUID.hxx".}
proc HashCode*(theGUID: Standard_GUID; theUpperBound: Standard_Integer): Standard_Integer {.
    importcpp: "Standard_GUID::HashCode(@)", header: "Standard_GUID.hxx".}
proc IsEqual*(string1: Standard_GUID; string2: Standard_GUID): Standard_Boolean {.
    importcpp: "Standard_GUID::IsEqual(@)", header: "Standard_GUID.hxx".}