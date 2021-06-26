# /usr/include/opencascade/TColgp_HArray2OfXY.hxx --> occt/tkMath/tcolgp/TColgp_HArray2OfXY.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgpharray2ofxy = "/usr/include/opencascade/TColgp_HArray2OfXY.hxx"
type
  TColgpHArray2OfXY* {.importcpp: "TColgp_HArray2OfXY",
                      header: headerTcolgpharray2ofxy, bycopy.} = object of TColgpArray2OfXY


proc `new`*(this: var TColgpHArray2OfXY; theSize: csize_t): pointer {.
    importcpp: "TColgp_HArray2OfXY::operator new", header: headerTcolgpharray2ofxy.}
proc `delete`*(this: var TColgpHArray2OfXY; theAddress: pointer) {.
    importcpp: "TColgp_HArray2OfXY::operator delete",
    header: headerTcolgpharray2ofxy.}
proc `new[]`*(this: var TColgpHArray2OfXY; theSize: csize_t): pointer {.
    importcpp: "TColgp_HArray2OfXY::operator new[]",
    header: headerTcolgpharray2ofxy.}
proc `delete[]`*(this: var TColgpHArray2OfXY; theAddress: pointer) {.
    importcpp: "TColgp_HArray2OfXY::operator delete[]",
    header: headerTcolgpharray2ofxy.}
proc `new`*(this: var TColgpHArray2OfXY; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TColgp_HArray2OfXY::operator new", header: headerTcolgpharray2ofxy.}
proc `delete`*(this: var TColgpHArray2OfXY; a2: pointer; a3: pointer) {.
    importcpp: "TColgp_HArray2OfXY::operator delete",
    header: headerTcolgpharray2ofxy.}
proc `new`*(this: var TColgpHArray2OfXY; theSize: csize_t;
           theAllocator: Handle[NCollectionBaseAllocator]): pointer {.
    importcpp: "TColgp_HArray2OfXY::operator new", header: headerTcolgpharray2ofxy.}
proc `delete`*(this: var TColgpHArray2OfXY; theAddress: pointer;
              theAllocator: Handle[NCollectionBaseAllocator]) {.
    importcpp: "TColgp_HArray2OfXY::operator delete",
    header: headerTcolgpharray2ofxy.}
proc constructTColgpHArray2OfXY*(theRowLow: StandardInteger;
                                theRowUpp: StandardInteger;
                                theColLow: StandardInteger;
                                theColUpp: StandardInteger): TColgpHArray2OfXY {.
    constructor, importcpp: "TColgp_HArray2OfXY(@)",
    header: headerTcolgpharray2ofxy.}
proc constructTColgpHArray2OfXY*(theRowLow: StandardInteger;
                                theRowUpp: StandardInteger;
                                theColLow: StandardInteger;
                                theColUpp: StandardInteger; theValue: ValueType): TColgpHArray2OfXY {.
    constructor, importcpp: "TColgp_HArray2OfXY(@)",
    header: headerTcolgpharray2ofxy.}
proc constructTColgpHArray2OfXY*(theOther: TColgpArray2OfXY): TColgpHArray2OfXY {.
    constructor, importcpp: "TColgp_HArray2OfXY(@)",
    header: headerTcolgpharray2ofxy.}
proc array2*(this: TColgpHArray2OfXY): TColgpArray2OfXY {.noSideEffect,
    importcpp: "Array2", header: headerTcolgpharray2ofxy.}
proc changeArray2*(this: var TColgpHArray2OfXY): var TColgpArray2OfXY {.
    importcpp: "ChangeArray2", header: headerTcolgpharray2ofxy.}
type
  TColgpHArray2OfXYbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TColgp_HArray2OfXY::get_type_name(@)",
                            header: headerTcolgpharray2ofxy.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TColgp_HArray2OfXY::get_type_descriptor(@)",
    header: headerTcolgpharray2ofxy.}
proc dynamicType*(this: TColgpHArray2OfXY): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerTcolgpharray2ofxy.}
discard "forward decl of TColgp_HArray2OfXY"
type
  HandleTColgpHArray2OfXY* = Handle[TColgpHArray2OfXY]
