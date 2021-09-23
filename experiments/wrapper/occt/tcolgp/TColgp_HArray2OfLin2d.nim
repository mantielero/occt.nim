# /usr/include/opencascade/TColgp_HArray2OfLin2d.hxx --> occt/tcolgp/TColgp_HArray2OfLin2d.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgpharray2oflin2d = "/usr/include/opencascade/TColgp_HArray2OfLin2d.hxx"
type
  TColgpHArray2OfLin2d* {.importcpp: "TColgp_HArray2OfLin2d",
                         header: headerTcolgpharray2oflin2d, bycopy.} = object of TColgpArray2OfLin2d


proc `new`*(this: var TColgpHArray2OfLin2d; theSize: csize_t): pointer {.
    importcpp: "TColgp_HArray2OfLin2d::operator new",
    header: headerTcolgpharray2oflin2d.}
proc `delete`*(this: var TColgpHArray2OfLin2d; theAddress: pointer) {.
    importcpp: "TColgp_HArray2OfLin2d::operator delete",
    header: headerTcolgpharray2oflin2d.}
proc `new[]`*(this: var TColgpHArray2OfLin2d; theSize: csize_t): pointer {.
    importcpp: "TColgp_HArray2OfLin2d::operator new[]",
    header: headerTcolgpharray2oflin2d.}
proc `delete[]`*(this: var TColgpHArray2OfLin2d; theAddress: pointer) {.
    importcpp: "TColgp_HArray2OfLin2d::operator delete[]",
    header: headerTcolgpharray2oflin2d.}
proc `new`*(this: var TColgpHArray2OfLin2d; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TColgp_HArray2OfLin2d::operator new",
    header: headerTcolgpharray2oflin2d.}
proc `delete`*(this: var TColgpHArray2OfLin2d; a2: pointer; a3: pointer) {.
    importcpp: "TColgp_HArray2OfLin2d::operator delete",
    header: headerTcolgpharray2oflin2d.}
proc `new`*(this: var TColgpHArray2OfLin2d; theSize: csize_t;
           theAllocator: Handle[NCollectionBaseAllocator]): pointer {.
    importcpp: "TColgp_HArray2OfLin2d::operator new",
    header: headerTcolgpharray2oflin2d.}
proc `delete`*(this: var TColgpHArray2OfLin2d; theAddress: pointer;
              theAllocator: Handle[NCollectionBaseAllocator]) {.
    importcpp: "TColgp_HArray2OfLin2d::operator delete",
    header: headerTcolgpharray2oflin2d.}
proc constructTColgpHArray2OfLin2d*(theRowLow: StandardInteger;
                                   theRowUpp: StandardInteger;
                                   theColLow: StandardInteger;
                                   theColUpp: StandardInteger): TColgpHArray2OfLin2d {.
    constructor, importcpp: "TColgp_HArray2OfLin2d(@)",
    header: headerTcolgpharray2oflin2d.}
proc constructTColgpHArray2OfLin2d*(theRowLow: StandardInteger;
                                   theRowUpp: StandardInteger;
                                   theColLow: StandardInteger;
                                   theColUpp: StandardInteger; theValue: ValueType): TColgpHArray2OfLin2d {.
    constructor, importcpp: "TColgp_HArray2OfLin2d(@)",
    header: headerTcolgpharray2oflin2d.}
proc constructTColgpHArray2OfLin2d*(theOther: TColgpArray2OfLin2d): TColgpHArray2OfLin2d {.
    constructor, importcpp: "TColgp_HArray2OfLin2d(@)",
    header: headerTcolgpharray2oflin2d.}
proc array2*(this: TColgpHArray2OfLin2d): TColgpArray2OfLin2d {.noSideEffect,
    importcpp: "Array2", header: headerTcolgpharray2oflin2d.}
proc changeArray2*(this: var TColgpHArray2OfLin2d): var TColgpArray2OfLin2d {.
    importcpp: "ChangeArray2", header: headerTcolgpharray2oflin2d.}
type
  TColgpHArray2OfLin2dbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TColgp_HArray2OfLin2d::get_type_name(@)",
                            header: headerTcolgpharray2oflin2d.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TColgp_HArray2OfLin2d::get_type_descriptor(@)",
    header: headerTcolgpharray2oflin2d.}
proc dynamicType*(this: TColgpHArray2OfLin2d): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerTcolgpharray2oflin2d.}
discard "forward decl of TColgp_HArray2OfLin2d"
type
  HandleTColgpHArray2OfLin2d* = Handle[TColgpHArray2OfLin2d]
