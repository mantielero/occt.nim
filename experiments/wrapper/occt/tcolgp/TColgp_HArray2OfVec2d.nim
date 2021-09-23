# /usr/include/opencascade/TColgp_HArray2OfVec2d.hxx --> occt/tcolgp/TColgp_HArray2OfVec2d.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgpharray2ofvec2d = "/usr/include/opencascade/TColgp_HArray2OfVec2d.hxx"
type
  TColgpHArray2OfVec2d* {.importcpp: "TColgp_HArray2OfVec2d",
                         header: headerTcolgpharray2ofvec2d, bycopy.} = object of TColgpArray2OfVec2d


proc `new`*(this: var TColgpHArray2OfVec2d; theSize: csize_t): pointer {.
    importcpp: "TColgp_HArray2OfVec2d::operator new",
    header: headerTcolgpharray2ofvec2d.}
proc `delete`*(this: var TColgpHArray2OfVec2d; theAddress: pointer) {.
    importcpp: "TColgp_HArray2OfVec2d::operator delete",
    header: headerTcolgpharray2ofvec2d.}
proc `new[]`*(this: var TColgpHArray2OfVec2d; theSize: csize_t): pointer {.
    importcpp: "TColgp_HArray2OfVec2d::operator new[]",
    header: headerTcolgpharray2ofvec2d.}
proc `delete[]`*(this: var TColgpHArray2OfVec2d; theAddress: pointer) {.
    importcpp: "TColgp_HArray2OfVec2d::operator delete[]",
    header: headerTcolgpharray2ofvec2d.}
proc `new`*(this: var TColgpHArray2OfVec2d; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TColgp_HArray2OfVec2d::operator new",
    header: headerTcolgpharray2ofvec2d.}
proc `delete`*(this: var TColgpHArray2OfVec2d; a2: pointer; a3: pointer) {.
    importcpp: "TColgp_HArray2OfVec2d::operator delete",
    header: headerTcolgpharray2ofvec2d.}
proc `new`*(this: var TColgpHArray2OfVec2d; theSize: csize_t;
           theAllocator: Handle[NCollectionBaseAllocator]): pointer {.
    importcpp: "TColgp_HArray2OfVec2d::operator new",
    header: headerTcolgpharray2ofvec2d.}
proc `delete`*(this: var TColgpHArray2OfVec2d; theAddress: pointer;
              theAllocator: Handle[NCollectionBaseAllocator]) {.
    importcpp: "TColgp_HArray2OfVec2d::operator delete",
    header: headerTcolgpharray2ofvec2d.}
proc constructTColgpHArray2OfVec2d*(theRowLow: StandardInteger;
                                   theRowUpp: StandardInteger;
                                   theColLow: StandardInteger;
                                   theColUpp: StandardInteger): TColgpHArray2OfVec2d {.
    constructor, importcpp: "TColgp_HArray2OfVec2d(@)",
    header: headerTcolgpharray2ofvec2d.}
proc constructTColgpHArray2OfVec2d*(theRowLow: StandardInteger;
                                   theRowUpp: StandardInteger;
                                   theColLow: StandardInteger;
                                   theColUpp: StandardInteger; theValue: ValueType): TColgpHArray2OfVec2d {.
    constructor, importcpp: "TColgp_HArray2OfVec2d(@)",
    header: headerTcolgpharray2ofvec2d.}
proc constructTColgpHArray2OfVec2d*(theOther: TColgpArray2OfVec2d): TColgpHArray2OfVec2d {.
    constructor, importcpp: "TColgp_HArray2OfVec2d(@)",
    header: headerTcolgpharray2ofvec2d.}
proc array2*(this: TColgpHArray2OfVec2d): TColgpArray2OfVec2d {.noSideEffect,
    importcpp: "Array2", header: headerTcolgpharray2ofvec2d.}
proc changeArray2*(this: var TColgpHArray2OfVec2d): var TColgpArray2OfVec2d {.
    importcpp: "ChangeArray2", header: headerTcolgpharray2ofvec2d.}
type
  TColgpHArray2OfVec2dbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TColgp_HArray2OfVec2d::get_type_name(@)",
                            header: headerTcolgpharray2ofvec2d.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TColgp_HArray2OfVec2d::get_type_descriptor(@)",
    header: headerTcolgpharray2ofvec2d.}
proc dynamicType*(this: TColgpHArray2OfVec2d): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerTcolgpharray2ofvec2d.}
discard "forward decl of TColgp_HArray2OfVec2d"
type
  HandleTColgpHArray2OfVec2d* = Handle[TColgpHArray2OfVec2d]
