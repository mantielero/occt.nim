# /usr/include/opencascade/TColgp_HArray2OfPnt2d.hxx --> occt/tkMath/tcolgp/TColgp_HArray2OfPnt2d.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgpharray2ofpnt2d = "/usr/include/opencascade/TColgp_HArray2OfPnt2d.hxx"
type
  TColgpHArray2OfPnt2d* {.importcpp: "TColgp_HArray2OfPnt2d",
                         header: headerTcolgpharray2ofpnt2d, bycopy.} = object of TColgpArray2OfPnt2d


proc `new`*(this: var TColgpHArray2OfPnt2d; theSize: csize_t): pointer {.
    importcpp: "TColgp_HArray2OfPnt2d::operator new",
    header: headerTcolgpharray2ofpnt2d.}
proc `delete`*(this: var TColgpHArray2OfPnt2d; theAddress: pointer) {.
    importcpp: "TColgp_HArray2OfPnt2d::operator delete",
    header: headerTcolgpharray2ofpnt2d.}
proc `new[]`*(this: var TColgpHArray2OfPnt2d; theSize: csize_t): pointer {.
    importcpp: "TColgp_HArray2OfPnt2d::operator new[]",
    header: headerTcolgpharray2ofpnt2d.}
proc `delete[]`*(this: var TColgpHArray2OfPnt2d; theAddress: pointer) {.
    importcpp: "TColgp_HArray2OfPnt2d::operator delete[]",
    header: headerTcolgpharray2ofpnt2d.}
proc `new`*(this: var TColgpHArray2OfPnt2d; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TColgp_HArray2OfPnt2d::operator new",
    header: headerTcolgpharray2ofpnt2d.}
proc `delete`*(this: var TColgpHArray2OfPnt2d; a2: pointer; a3: pointer) {.
    importcpp: "TColgp_HArray2OfPnt2d::operator delete",
    header: headerTcolgpharray2ofpnt2d.}
proc `new`*(this: var TColgpHArray2OfPnt2d; theSize: csize_t;
           theAllocator: Handle[NCollectionBaseAllocator]): pointer {.
    importcpp: "TColgp_HArray2OfPnt2d::operator new",
    header: headerTcolgpharray2ofpnt2d.}
proc `delete`*(this: var TColgpHArray2OfPnt2d; theAddress: pointer;
              theAllocator: Handle[NCollectionBaseAllocator]) {.
    importcpp: "TColgp_HArray2OfPnt2d::operator delete",
    header: headerTcolgpharray2ofpnt2d.}
proc constructTColgpHArray2OfPnt2d*(theRowLow: StandardInteger;
                                   theRowUpp: StandardInteger;
                                   theColLow: StandardInteger;
                                   theColUpp: StandardInteger): TColgpHArray2OfPnt2d {.
    constructor, importcpp: "TColgp_HArray2OfPnt2d(@)",
    header: headerTcolgpharray2ofpnt2d.}
proc constructTColgpHArray2OfPnt2d*(theRowLow: StandardInteger;
                                   theRowUpp: StandardInteger;
                                   theColLow: StandardInteger;
                                   theColUpp: StandardInteger; theValue: ValueType): TColgpHArray2OfPnt2d {.
    constructor, importcpp: "TColgp_HArray2OfPnt2d(@)",
    header: headerTcolgpharray2ofpnt2d.}
proc constructTColgpHArray2OfPnt2d*(theOther: TColgpArray2OfPnt2d): TColgpHArray2OfPnt2d {.
    constructor, importcpp: "TColgp_HArray2OfPnt2d(@)",
    header: headerTcolgpharray2ofpnt2d.}
proc array2*(this: TColgpHArray2OfPnt2d): TColgpArray2OfPnt2d {.noSideEffect,
    importcpp: "Array2", header: headerTcolgpharray2ofpnt2d.}
proc changeArray2*(this: var TColgpHArray2OfPnt2d): var TColgpArray2OfPnt2d {.
    importcpp: "ChangeArray2", header: headerTcolgpharray2ofpnt2d.}
type
  TColgpHArray2OfPnt2dbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TColgp_HArray2OfPnt2d::get_type_name(@)",
                            header: headerTcolgpharray2ofpnt2d.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TColgp_HArray2OfPnt2d::get_type_descriptor(@)",
    header: headerTcolgpharray2ofpnt2d.}
proc dynamicType*(this: TColgpHArray2OfPnt2d): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerTcolgpharray2ofpnt2d.}
discard "forward decl of TColgp_HArray2OfPnt2d"
type
  HandleTColgpHArray2OfPnt2d* = Handle[TColgpHArray2OfPnt2d]
