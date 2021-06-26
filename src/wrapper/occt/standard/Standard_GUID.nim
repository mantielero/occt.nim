# /usr/include/opencascade/Standard_GUID.hxx --> occt/standard/Standard_GUID.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardguid = "/usr/include/opencascade/Standard_GUID.hxx"
const
  StandardGUID_SIZE* = 36

type
  StandardGUID* {.importcpp: "Standard_GUID", header: headerStandardguid, bycopy.} = object


proc `new`*(this: var StandardGUID; theSize: csize_t): pointer {.
    importcpp: "Standard_GUID::operator new", header: headerStandardguid.}
proc `delete`*(this: var StandardGUID; theAddress: pointer) {.
    importcpp: "Standard_GUID::operator delete", header: headerStandardguid.}
proc `new[]`*(this: var StandardGUID; theSize: csize_t): pointer {.
    importcpp: "Standard_GUID::operator new[]", header: headerStandardguid.}
proc `delete[]`*(this: var StandardGUID; theAddress: pointer) {.
    importcpp: "Standard_GUID::operator delete[]", header: headerStandardguid.}
proc `new`*(this: var StandardGUID; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "Standard_GUID::operator new", header: headerStandardguid.}
proc `delete`*(this: var StandardGUID; a2: pointer; a3: pointer) {.
    importcpp: "Standard_GUID::operator delete", header: headerStandardguid.}
proc constructStandardGUID*(): StandardGUID {.constructor,
    importcpp: "Standard_GUID(@)", header: headerStandardguid.}
proc constructStandardGUID*(aGuid: StandardCString): StandardGUID {.constructor,
    importcpp: "Standard_GUID(@)", header: headerStandardguid.}
proc constructStandardGUID*(aGuid: StandardExtString): StandardGUID {.constructor,
    importcpp: "Standard_GUID(@)", header: headerStandardguid.}
proc constructStandardGUID*(a32b: StandardInteger; a16b1: StandardExtCharacter;
                           a16b2: StandardExtCharacter;
                           a16b3: StandardExtCharacter; a8b1: StandardByte;
                           a8b2: StandardByte; a8b3: StandardByte;
                           a8b4: StandardByte; a8b5: StandardByte;
                           a8b6: StandardByte): StandardGUID {.constructor,
    importcpp: "Standard_GUID(@)", header: headerStandardguid.}
proc constructStandardGUID*(aGuid: StandardUUID): StandardGUID {.constructor,
    importcpp: "Standard_GUID(@)", header: headerStandardguid.}
proc constructStandardGUID*(aGuid: StandardGUID): StandardGUID {.constructor,
    importcpp: "Standard_GUID(@)", header: headerStandardguid.}
proc toUUID*(this: StandardGUID): StandardUUID {.noSideEffect, importcpp: "ToUUID",
    header: headerStandardguid.}
proc toCString*(this: StandardGUID; aStrGuid: StandardPCharacter) {.noSideEffect,
    importcpp: "ToCString", header: headerStandardguid.}
proc toExtString*(this: StandardGUID; aStrGuid: StandardPExtCharacter) {.
    noSideEffect, importcpp: "ToExtString", header: headerStandardguid.}
proc isSame*(this: StandardGUID; uid: StandardGUID): StandardBoolean {.noSideEffect,
    importcpp: "IsSame", header: headerStandardguid.}
proc `==`*(this: StandardGUID; uid: StandardGUID): StandardBoolean {.noSideEffect,
    importcpp: "(# == #)", header: headerStandardguid.}
proc isNotSame*(this: StandardGUID; uid: StandardGUID): StandardBoolean {.
    noSideEffect, importcpp: "IsNotSame", header: headerStandardguid.}
proc assign*(this: var StandardGUID; uid: StandardGUID) {.importcpp: "Assign",
    header: headerStandardguid.}
proc assign*(this: var StandardGUID; uid: StandardUUID) {.importcpp: "Assign",
    header: headerStandardguid.}
proc shallowDump*(this: StandardGUID; aStream: var StandardOStream) {.noSideEffect,
    importcpp: "ShallowDump", header: headerStandardguid.}
proc checkGUIDFormat*(aGuid: StandardCString): StandardBoolean {.
    importcpp: "Standard_GUID::CheckGUIDFormat(@)", header: headerStandardguid.}
proc hash*(this: StandardGUID; upper: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "Hash", header: headerStandardguid.}
proc hashCode*(theGUID: StandardGUID; theUpperBound: StandardInteger): StandardInteger {.
    importcpp: "Standard_GUID::HashCode(@)", header: headerStandardguid.}
proc isEqual*(string1: StandardGUID; string2: StandardGUID): StandardBoolean {.
    importcpp: "Standard_GUID::IsEqual(@)", header: headerStandardguid.}