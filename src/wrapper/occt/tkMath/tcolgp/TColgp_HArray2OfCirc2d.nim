# /usr/include/opencascade/TColgp_HArray2OfCirc2d.hxx --> occt/tkMath/tcolgp/TColgp_HArray2OfCirc2d.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgpharray2ofcirc2d = "/usr/include/opencascade/TColgp_HArray2OfCirc2d.hxx"
type
  TColgpHArray2OfCirc2d* {.importcpp: "TColgp_HArray2OfCirc2d",
                          header: headerTcolgpharray2ofcirc2d, bycopy.} = object of TColgpArray2OfCirc2d


proc `new`*(this: var TColgpHArray2OfCirc2d; theSize: csize_t): pointer {.
    importcpp: "TColgp_HArray2OfCirc2d::operator new",
    header: headerTcolgpharray2ofcirc2d.}
proc `delete`*(this: var TColgpHArray2OfCirc2d; theAddress: pointer) {.
    importcpp: "TColgp_HArray2OfCirc2d::operator delete",
    header: headerTcolgpharray2ofcirc2d.}
proc `new[]`*(this: var TColgpHArray2OfCirc2d; theSize: csize_t): pointer {.
    importcpp: "TColgp_HArray2OfCirc2d::operator new[]",
    header: headerTcolgpharray2ofcirc2d.}
proc `delete[]`*(this: var TColgpHArray2OfCirc2d; theAddress: pointer) {.
    importcpp: "TColgp_HArray2OfCirc2d::operator delete[]",
    header: headerTcolgpharray2ofcirc2d.}
proc `new`*(this: var TColgpHArray2OfCirc2d; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TColgp_HArray2OfCirc2d::operator new",
    header: headerTcolgpharray2ofcirc2d.}
proc `delete`*(this: var TColgpHArray2OfCirc2d; a2: pointer; a3: pointer) {.
    importcpp: "TColgp_HArray2OfCirc2d::operator delete",
    header: headerTcolgpharray2ofcirc2d.}
proc `new`*(this: var TColgpHArray2OfCirc2d; theSize: csize_t;
           theAllocator: Handle[NCollectionBaseAllocator]): pointer {.
    importcpp: "TColgp_HArray2OfCirc2d::operator new",
    header: headerTcolgpharray2ofcirc2d.}
proc `delete`*(this: var TColgpHArray2OfCirc2d; theAddress: pointer;
              theAllocator: Handle[NCollectionBaseAllocator]) {.
    importcpp: "TColgp_HArray2OfCirc2d::operator delete",
    header: headerTcolgpharray2ofcirc2d.}
proc constructTColgpHArray2OfCirc2d*(theRowLow: StandardInteger;
                                    theRowUpp: StandardInteger;
                                    theColLow: StandardInteger;
                                    theColUpp: StandardInteger): TColgpHArray2OfCirc2d {.
    constructor, importcpp: "TColgp_HArray2OfCirc2d(@)",
    header: headerTcolgpharray2ofcirc2d.}
proc constructTColgpHArray2OfCirc2d*(theRowLow: StandardInteger;
                                    theRowUpp: StandardInteger;
                                    theColLow: StandardInteger;
                                    theColUpp: StandardInteger;
                                    theValue: ValueType): TColgpHArray2OfCirc2d {.
    constructor, importcpp: "TColgp_HArray2OfCirc2d(@)",
    header: headerTcolgpharray2ofcirc2d.}
proc constructTColgpHArray2OfCirc2d*(theOther: TColgpArray2OfCirc2d): TColgpHArray2OfCirc2d {.
    constructor, importcpp: "TColgp_HArray2OfCirc2d(@)",
    header: headerTcolgpharray2ofcirc2d.}
proc array2*(this: TColgpHArray2OfCirc2d): TColgpArray2OfCirc2d {.noSideEffect,
    importcpp: "Array2", header: headerTcolgpharray2ofcirc2d.}
proc changeArray2*(this: var TColgpHArray2OfCirc2d): var TColgpArray2OfCirc2d {.
    importcpp: "ChangeArray2", header: headerTcolgpharray2ofcirc2d.}
type
  TColgpHArray2OfCirc2dbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TColgp_HArray2OfCirc2d::get_type_name(@)",
                            header: headerTcolgpharray2ofcirc2d.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TColgp_HArray2OfCirc2d::get_type_descriptor(@)",
    header: headerTcolgpharray2ofcirc2d.}
proc dynamicType*(this: TColgpHArray2OfCirc2d): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerTcolgpharray2ofcirc2d.}
discard "forward decl of TColgp_HArray2OfCirc2d"
type
  HandleTColgpHArray2OfCirc2d* = Handle[TColgpHArray2OfCirc2d]
