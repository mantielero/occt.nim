# /usr/include/opencascade/TColgp_HArray2OfDir.hxx --> occt/tkMath/tcolgp/TColgp_HArray2OfDir.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgpharray2ofdir = "/usr/include/opencascade/TColgp_HArray2OfDir.hxx"
type
  TColgpHArray2OfDir* {.importcpp: "TColgp_HArray2OfDir",
                       header: headerTcolgpharray2ofdir, bycopy.} = object of TColgpArray2OfDir


proc `new`*(this: var TColgpHArray2OfDir; theSize: csize_t): pointer {.
    importcpp: "TColgp_HArray2OfDir::operator new",
    header: headerTcolgpharray2ofdir.}
proc `delete`*(this: var TColgpHArray2OfDir; theAddress: pointer) {.
    importcpp: "TColgp_HArray2OfDir::operator delete",
    header: headerTcolgpharray2ofdir.}
proc `new[]`*(this: var TColgpHArray2OfDir; theSize: csize_t): pointer {.
    importcpp: "TColgp_HArray2OfDir::operator new[]",
    header: headerTcolgpharray2ofdir.}
proc `delete[]`*(this: var TColgpHArray2OfDir; theAddress: pointer) {.
    importcpp: "TColgp_HArray2OfDir::operator delete[]",
    header: headerTcolgpharray2ofdir.}
proc `new`*(this: var TColgpHArray2OfDir; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TColgp_HArray2OfDir::operator new",
    header: headerTcolgpharray2ofdir.}
proc `delete`*(this: var TColgpHArray2OfDir; a2: pointer; a3: pointer) {.
    importcpp: "TColgp_HArray2OfDir::operator delete",
    header: headerTcolgpharray2ofdir.}
proc `new`*(this: var TColgpHArray2OfDir; theSize: csize_t;
           theAllocator: Handle[NCollectionBaseAllocator]): pointer {.
    importcpp: "TColgp_HArray2OfDir::operator new",
    header: headerTcolgpharray2ofdir.}
proc `delete`*(this: var TColgpHArray2OfDir; theAddress: pointer;
              theAllocator: Handle[NCollectionBaseAllocator]) {.
    importcpp: "TColgp_HArray2OfDir::operator delete",
    header: headerTcolgpharray2ofdir.}
proc constructTColgpHArray2OfDir*(theRowLow: StandardInteger;
                                 theRowUpp: StandardInteger;
                                 theColLow: StandardInteger;
                                 theColUpp: StandardInteger): TColgpHArray2OfDir {.
    constructor, importcpp: "TColgp_HArray2OfDir(@)",
    header: headerTcolgpharray2ofdir.}
proc constructTColgpHArray2OfDir*(theRowLow: StandardInteger;
                                 theRowUpp: StandardInteger;
                                 theColLow: StandardInteger;
                                 theColUpp: StandardInteger; theValue: ValueType): TColgpHArray2OfDir {.
    constructor, importcpp: "TColgp_HArray2OfDir(@)",
    header: headerTcolgpharray2ofdir.}
proc constructTColgpHArray2OfDir*(theOther: TColgpArray2OfDir): TColgpHArray2OfDir {.
    constructor, importcpp: "TColgp_HArray2OfDir(@)",
    header: headerTcolgpharray2ofdir.}
proc array2*(this: TColgpHArray2OfDir): TColgpArray2OfDir {.noSideEffect,
    importcpp: "Array2", header: headerTcolgpharray2ofdir.}
proc changeArray2*(this: var TColgpHArray2OfDir): var TColgpArray2OfDir {.
    importcpp: "ChangeArray2", header: headerTcolgpharray2ofdir.}
type
  TColgpHArray2OfDirbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TColgp_HArray2OfDir::get_type_name(@)",
                            header: headerTcolgpharray2ofdir.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TColgp_HArray2OfDir::get_type_descriptor(@)",
    header: headerTcolgpharray2ofdir.}
proc dynamicType*(this: TColgpHArray2OfDir): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerTcolgpharray2ofdir.}
discard "forward decl of TColgp_HArray2OfDir"
type
  HandleTColgpHArray2OfDir* = Handle[TColgpHArray2OfDir]
