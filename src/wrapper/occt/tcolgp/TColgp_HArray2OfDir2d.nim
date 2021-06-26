# /usr/include/opencascade/TColgp_HArray2OfDir2d.hxx --> occt/tcolgp/TColgp_HArray2OfDir2d.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgpharray2ofdir2d = "/usr/include/opencascade/TColgp_HArray2OfDir2d.hxx"
type
  TColgpHArray2OfDir2d* {.importcpp: "TColgp_HArray2OfDir2d",
                         header: headerTcolgpharray2ofdir2d, bycopy.} = object of TColgpArray2OfDir2d


proc `new`*(this: var TColgpHArray2OfDir2d; theSize: csize_t): pointer {.
    importcpp: "TColgp_HArray2OfDir2d::operator new",
    header: headerTcolgpharray2ofdir2d.}
proc `delete`*(this: var TColgpHArray2OfDir2d; theAddress: pointer) {.
    importcpp: "TColgp_HArray2OfDir2d::operator delete",
    header: headerTcolgpharray2ofdir2d.}
proc `new[]`*(this: var TColgpHArray2OfDir2d; theSize: csize_t): pointer {.
    importcpp: "TColgp_HArray2OfDir2d::operator new[]",
    header: headerTcolgpharray2ofdir2d.}
proc `delete[]`*(this: var TColgpHArray2OfDir2d; theAddress: pointer) {.
    importcpp: "TColgp_HArray2OfDir2d::operator delete[]",
    header: headerTcolgpharray2ofdir2d.}
proc `new`*(this: var TColgpHArray2OfDir2d; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TColgp_HArray2OfDir2d::operator new",
    header: headerTcolgpharray2ofdir2d.}
proc `delete`*(this: var TColgpHArray2OfDir2d; a2: pointer; a3: pointer) {.
    importcpp: "TColgp_HArray2OfDir2d::operator delete",
    header: headerTcolgpharray2ofdir2d.}
proc `new`*(this: var TColgpHArray2OfDir2d; theSize: csize_t;
           theAllocator: Handle[NCollectionBaseAllocator]): pointer {.
    importcpp: "TColgp_HArray2OfDir2d::operator new",
    header: headerTcolgpharray2ofdir2d.}
proc `delete`*(this: var TColgpHArray2OfDir2d; theAddress: pointer;
              theAllocator: Handle[NCollectionBaseAllocator]) {.
    importcpp: "TColgp_HArray2OfDir2d::operator delete",
    header: headerTcolgpharray2ofdir2d.}
proc constructTColgpHArray2OfDir2d*(theRowLow: StandardInteger;
                                   theRowUpp: StandardInteger;
                                   theColLow: StandardInteger;
                                   theColUpp: StandardInteger): TColgpHArray2OfDir2d {.
    constructor, importcpp: "TColgp_HArray2OfDir2d(@)",
    header: headerTcolgpharray2ofdir2d.}
proc constructTColgpHArray2OfDir2d*(theRowLow: StandardInteger;
                                   theRowUpp: StandardInteger;
                                   theColLow: StandardInteger;
                                   theColUpp: StandardInteger; theValue: ValueType): TColgpHArray2OfDir2d {.
    constructor, importcpp: "TColgp_HArray2OfDir2d(@)",
    header: headerTcolgpharray2ofdir2d.}
proc constructTColgpHArray2OfDir2d*(theOther: TColgpArray2OfDir2d): TColgpHArray2OfDir2d {.
    constructor, importcpp: "TColgp_HArray2OfDir2d(@)",
    header: headerTcolgpharray2ofdir2d.}
proc array2*(this: TColgpHArray2OfDir2d): TColgpArray2OfDir2d {.noSideEffect,
    importcpp: "Array2", header: headerTcolgpharray2ofdir2d.}
proc changeArray2*(this: var TColgpHArray2OfDir2d): var TColgpArray2OfDir2d {.
    importcpp: "ChangeArray2", header: headerTcolgpharray2ofdir2d.}
type
  TColgpHArray2OfDir2dbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TColgp_HArray2OfDir2d::get_type_name(@)",
                            header: headerTcolgpharray2ofdir2d.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TColgp_HArray2OfDir2d::get_type_descriptor(@)",
    header: headerTcolgpharray2ofdir2d.}
proc dynamicType*(this: TColgpHArray2OfDir2d): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerTcolgpharray2ofdir2d.}
discard "forward decl of TColgp_HArray2OfDir2d"
type
  HandleTColgpHArray2OfDir2d* = Handle[TColgpHArray2OfDir2d]
