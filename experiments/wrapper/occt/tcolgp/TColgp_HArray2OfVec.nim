# /usr/include/opencascade/TColgp_HArray2OfVec.hxx --> occt/tcolgp/TColgp_HArray2OfVec.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgpharray2ofvec = "/usr/include/opencascade/TColgp_HArray2OfVec.hxx"
type
  TColgpHArray2OfVec* {.importcpp: "TColgp_HArray2OfVec",
                       header: headerTcolgpharray2ofvec, bycopy.} = object of TColgpArray2OfVec


proc `new`*(this: var TColgpHArray2OfVec; theSize: csize_t): pointer {.
    importcpp: "TColgp_HArray2OfVec::operator new",
    header: headerTcolgpharray2ofvec.}
proc `delete`*(this: var TColgpHArray2OfVec; theAddress: pointer) {.
    importcpp: "TColgp_HArray2OfVec::operator delete",
    header: headerTcolgpharray2ofvec.}
proc `new[]`*(this: var TColgpHArray2OfVec; theSize: csize_t): pointer {.
    importcpp: "TColgp_HArray2OfVec::operator new[]",
    header: headerTcolgpharray2ofvec.}
proc `delete[]`*(this: var TColgpHArray2OfVec; theAddress: pointer) {.
    importcpp: "TColgp_HArray2OfVec::operator delete[]",
    header: headerTcolgpharray2ofvec.}
proc `new`*(this: var TColgpHArray2OfVec; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TColgp_HArray2OfVec::operator new",
    header: headerTcolgpharray2ofvec.}
proc `delete`*(this: var TColgpHArray2OfVec; a2: pointer; a3: pointer) {.
    importcpp: "TColgp_HArray2OfVec::operator delete",
    header: headerTcolgpharray2ofvec.}
proc `new`*(this: var TColgpHArray2OfVec; theSize: csize_t;
           theAllocator: Handle[NCollectionBaseAllocator]): pointer {.
    importcpp: "TColgp_HArray2OfVec::operator new",
    header: headerTcolgpharray2ofvec.}
proc `delete`*(this: var TColgpHArray2OfVec; theAddress: pointer;
              theAllocator: Handle[NCollectionBaseAllocator]) {.
    importcpp: "TColgp_HArray2OfVec::operator delete",
    header: headerTcolgpharray2ofvec.}
proc constructTColgpHArray2OfVec*(theRowLow: StandardInteger;
                                 theRowUpp: StandardInteger;
                                 theColLow: StandardInteger;
                                 theColUpp: StandardInteger): TColgpHArray2OfVec {.
    constructor, importcpp: "TColgp_HArray2OfVec(@)",
    header: headerTcolgpharray2ofvec.}
proc constructTColgpHArray2OfVec*(theRowLow: StandardInteger;
                                 theRowUpp: StandardInteger;
                                 theColLow: StandardInteger;
                                 theColUpp: StandardInteger; theValue: ValueType): TColgpHArray2OfVec {.
    constructor, importcpp: "TColgp_HArray2OfVec(@)",
    header: headerTcolgpharray2ofvec.}
proc constructTColgpHArray2OfVec*(theOther: TColgpArray2OfVec): TColgpHArray2OfVec {.
    constructor, importcpp: "TColgp_HArray2OfVec(@)",
    header: headerTcolgpharray2ofvec.}
proc array2*(this: TColgpHArray2OfVec): TColgpArray2OfVec {.noSideEffect,
    importcpp: "Array2", header: headerTcolgpharray2ofvec.}
proc changeArray2*(this: var TColgpHArray2OfVec): var TColgpArray2OfVec {.
    importcpp: "ChangeArray2", header: headerTcolgpharray2ofvec.}
type
  TColgpHArray2OfVecbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TColgp_HArray2OfVec::get_type_name(@)",
                            header: headerTcolgpharray2ofvec.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TColgp_HArray2OfVec::get_type_descriptor(@)",
    header: headerTcolgpharray2ofvec.}
proc dynamicType*(this: TColgpHArray2OfVec): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerTcolgpharray2ofvec.}
discard "forward decl of TColgp_HArray2OfVec"
type
  HandleTColgpHArray2OfVec* = Handle[TColgpHArray2OfVec]
