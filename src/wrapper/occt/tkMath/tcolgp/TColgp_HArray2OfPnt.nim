# /usr/include/opencascade/TColgp_HArray2OfPnt.hxx --> occt/tkMath/tcolgp/TColgp_HArray2OfPnt.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgpharray2ofpnt = "/usr/include/opencascade/TColgp_HArray2OfPnt.hxx"
type
  TColgpHArray2OfPnt* {.importcpp: "TColgp_HArray2OfPnt",
                       header: headerTcolgpharray2ofpnt, bycopy.} = object of TColgpArray2OfPnt


proc `new`*(this: var TColgpHArray2OfPnt; theSize: csize_t): pointer {.
    importcpp: "TColgp_HArray2OfPnt::operator new",
    header: headerTcolgpharray2ofpnt.}
proc `delete`*(this: var TColgpHArray2OfPnt; theAddress: pointer) {.
    importcpp: "TColgp_HArray2OfPnt::operator delete",
    header: headerTcolgpharray2ofpnt.}
proc `new[]`*(this: var TColgpHArray2OfPnt; theSize: csize_t): pointer {.
    importcpp: "TColgp_HArray2OfPnt::operator new[]",
    header: headerTcolgpharray2ofpnt.}
proc `delete[]`*(this: var TColgpHArray2OfPnt; theAddress: pointer) {.
    importcpp: "TColgp_HArray2OfPnt::operator delete[]",
    header: headerTcolgpharray2ofpnt.}
proc `new`*(this: var TColgpHArray2OfPnt; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TColgp_HArray2OfPnt::operator new",
    header: headerTcolgpharray2ofpnt.}
proc `delete`*(this: var TColgpHArray2OfPnt; a2: pointer; a3: pointer) {.
    importcpp: "TColgp_HArray2OfPnt::operator delete",
    header: headerTcolgpharray2ofpnt.}
proc `new`*(this: var TColgpHArray2OfPnt; theSize: csize_t;
           theAllocator: Handle[NCollectionBaseAllocator]): pointer {.
    importcpp: "TColgp_HArray2OfPnt::operator new",
    header: headerTcolgpharray2ofpnt.}
proc `delete`*(this: var TColgpHArray2OfPnt; theAddress: pointer;
              theAllocator: Handle[NCollectionBaseAllocator]) {.
    importcpp: "TColgp_HArray2OfPnt::operator delete",
    header: headerTcolgpharray2ofpnt.}
proc constructTColgpHArray2OfPnt*(theRowLow: StandardInteger;
                                 theRowUpp: StandardInteger;
                                 theColLow: StandardInteger;
                                 theColUpp: StandardInteger): TColgpHArray2OfPnt {.
    constructor, importcpp: "TColgp_HArray2OfPnt(@)",
    header: headerTcolgpharray2ofpnt.}
proc constructTColgpHArray2OfPnt*(theRowLow: StandardInteger;
                                 theRowUpp: StandardInteger;
                                 theColLow: StandardInteger;
                                 theColUpp: StandardInteger; theValue: ValueType): TColgpHArray2OfPnt {.
    constructor, importcpp: "TColgp_HArray2OfPnt(@)",
    header: headerTcolgpharray2ofpnt.}
proc constructTColgpHArray2OfPnt*(theOther: TColgpArray2OfPnt): TColgpHArray2OfPnt {.
    constructor, importcpp: "TColgp_HArray2OfPnt(@)",
    header: headerTcolgpharray2ofpnt.}
proc array2*(this: TColgpHArray2OfPnt): TColgpArray2OfPnt {.noSideEffect,
    importcpp: "Array2", header: headerTcolgpharray2ofpnt.}
proc changeArray2*(this: var TColgpHArray2OfPnt): var TColgpArray2OfPnt {.
    importcpp: "ChangeArray2", header: headerTcolgpharray2ofpnt.}
type
  TColgpHArray2OfPntbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TColgp_HArray2OfPnt::get_type_name(@)",
                            header: headerTcolgpharray2ofpnt.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TColgp_HArray2OfPnt::get_type_descriptor(@)",
    header: headerTcolgpharray2ofpnt.}
proc dynamicType*(this: TColgpHArray2OfPnt): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerTcolgpharray2ofpnt.}
discard "forward decl of TColgp_HArray2OfPnt"
type
  HandleTColgpHArray2OfPnt* = Handle[TColgpHArray2OfPnt]
