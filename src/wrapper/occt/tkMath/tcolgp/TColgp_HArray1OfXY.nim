# /usr/include/opencascade/TColgp_HArray1OfXY.hxx --> occt/tkMath/tcolgp/TColgp_HArray1OfXY.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgpharray1ofxy = "/usr/include/opencascade/TColgp_HArray1OfXY.hxx"
type
  TColgpHArray1OfXY* {.importcpp: "TColgp_HArray1OfXY",
                      header: headerTcolgpharray1ofxy, bycopy.} = object of TColgpArray1OfXY


proc `new`*(this: var TColgpHArray1OfXY; theSize: csize_t): pointer {.
    importcpp: "TColgp_HArray1OfXY::operator new", header: headerTcolgpharray1ofxy.}
proc `delete`*(this: var TColgpHArray1OfXY; theAddress: pointer) {.
    importcpp: "TColgp_HArray1OfXY::operator delete",
    header: headerTcolgpharray1ofxy.}
proc `new[]`*(this: var TColgpHArray1OfXY; theSize: csize_t): pointer {.
    importcpp: "TColgp_HArray1OfXY::operator new[]",
    header: headerTcolgpharray1ofxy.}
proc `delete[]`*(this: var TColgpHArray1OfXY; theAddress: pointer) {.
    importcpp: "TColgp_HArray1OfXY::operator delete[]",
    header: headerTcolgpharray1ofxy.}
proc `new`*(this: var TColgpHArray1OfXY; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TColgp_HArray1OfXY::operator new", header: headerTcolgpharray1ofxy.}
proc `delete`*(this: var TColgpHArray1OfXY; a2: pointer; a3: pointer) {.
    importcpp: "TColgp_HArray1OfXY::operator delete",
    header: headerTcolgpharray1ofxy.}
proc `new`*(this: var TColgpHArray1OfXY; theSize: csize_t;
           theAllocator: Handle[NCollectionBaseAllocator]): pointer {.
    importcpp: "TColgp_HArray1OfXY::operator new", header: headerTcolgpharray1ofxy.}
proc `delete`*(this: var TColgpHArray1OfXY; theAddress: pointer;
              theAllocator: Handle[NCollectionBaseAllocator]) {.
    importcpp: "TColgp_HArray1OfXY::operator delete",
    header: headerTcolgpharray1ofxy.}
proc constructTColgpHArray1OfXY*(): TColgpHArray1OfXY {.constructor,
    importcpp: "TColgp_HArray1OfXY(@)", header: headerTcolgpharray1ofxy.}
proc constructTColgpHArray1OfXY*(theLower: StandardInteger;
                                theUpper: StandardInteger): TColgpHArray1OfXY {.
    constructor, importcpp: "TColgp_HArray1OfXY(@)",
    header: headerTcolgpharray1ofxy.}
proc constructTColgpHArray1OfXY*(theLower: StandardInteger;
                                theUpper: StandardInteger; theValue: ValueType): TColgpHArray1OfXY {.
    constructor, importcpp: "TColgp_HArray1OfXY(@)",
    header: headerTcolgpharray1ofxy.}
proc constructTColgpHArray1OfXY*(theOther: TColgpArray1OfXY): TColgpHArray1OfXY {.
    constructor, importcpp: "TColgp_HArray1OfXY(@)",
    header: headerTcolgpharray1ofxy.}
proc array1*(this: TColgpHArray1OfXY): TColgpArray1OfXY {.noSideEffect,
    importcpp: "Array1", header: headerTcolgpharray1ofxy.}
proc changeArray1*(this: var TColgpHArray1OfXY): var TColgpArray1OfXY {.
    importcpp: "ChangeArray1", header: headerTcolgpharray1ofxy.}
type
  TColgpHArray1OfXYbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TColgp_HArray1OfXY::get_type_name(@)",
                            header: headerTcolgpharray1ofxy.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TColgp_HArray1OfXY::get_type_descriptor(@)",
    header: headerTcolgpharray1ofxy.}
proc dynamicType*(this: TColgpHArray1OfXY): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerTcolgpharray1ofxy.}
discard "forward decl of TColgp_HArray1OfXY"
type
  HandleTColgpHArray1OfXY* = Handle[TColgpHArray1OfXY]
