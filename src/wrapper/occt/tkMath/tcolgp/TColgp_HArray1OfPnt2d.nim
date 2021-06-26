# /usr/include/opencascade/TColgp_HArray1OfPnt2d.hxx --> occt/tkMath/tcolgp/TColgp_HArray1OfPnt2d.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgpharray1ofpnt2d = "/usr/include/opencascade/TColgp_HArray1OfPnt2d.hxx"
type
  TColgpHArray1OfPnt2d* {.importcpp: "TColgp_HArray1OfPnt2d",
                         header: headerTcolgpharray1ofpnt2d, bycopy.} = object of TColgpArray1OfPnt2d


proc `new`*(this: var TColgpHArray1OfPnt2d; theSize: csize_t): pointer {.
    importcpp: "TColgp_HArray1OfPnt2d::operator new",
    header: headerTcolgpharray1ofpnt2d.}
proc `delete`*(this: var TColgpHArray1OfPnt2d; theAddress: pointer) {.
    importcpp: "TColgp_HArray1OfPnt2d::operator delete",
    header: headerTcolgpharray1ofpnt2d.}
proc `new[]`*(this: var TColgpHArray1OfPnt2d; theSize: csize_t): pointer {.
    importcpp: "TColgp_HArray1OfPnt2d::operator new[]",
    header: headerTcolgpharray1ofpnt2d.}
proc `delete[]`*(this: var TColgpHArray1OfPnt2d; theAddress: pointer) {.
    importcpp: "TColgp_HArray1OfPnt2d::operator delete[]",
    header: headerTcolgpharray1ofpnt2d.}
proc `new`*(this: var TColgpHArray1OfPnt2d; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TColgp_HArray1OfPnt2d::operator new",
    header: headerTcolgpharray1ofpnt2d.}
proc `delete`*(this: var TColgpHArray1OfPnt2d; a2: pointer; a3: pointer) {.
    importcpp: "TColgp_HArray1OfPnt2d::operator delete",
    header: headerTcolgpharray1ofpnt2d.}
proc `new`*(this: var TColgpHArray1OfPnt2d; theSize: csize_t;
           theAllocator: Handle[NCollectionBaseAllocator]): pointer {.
    importcpp: "TColgp_HArray1OfPnt2d::operator new",
    header: headerTcolgpharray1ofpnt2d.}
proc `delete`*(this: var TColgpHArray1OfPnt2d; theAddress: pointer;
              theAllocator: Handle[NCollectionBaseAllocator]) {.
    importcpp: "TColgp_HArray1OfPnt2d::operator delete",
    header: headerTcolgpharray1ofpnt2d.}
proc constructTColgpHArray1OfPnt2d*(): TColgpHArray1OfPnt2d {.constructor,
    importcpp: "TColgp_HArray1OfPnt2d(@)", header: headerTcolgpharray1ofpnt2d.}
proc constructTColgpHArray1OfPnt2d*(theLower: StandardInteger;
                                   theUpper: StandardInteger): TColgpHArray1OfPnt2d {.
    constructor, importcpp: "TColgp_HArray1OfPnt2d(@)",
    header: headerTcolgpharray1ofpnt2d.}
proc constructTColgpHArray1OfPnt2d*(theLower: StandardInteger;
                                   theUpper: StandardInteger; theValue: ValueType): TColgpHArray1OfPnt2d {.
    constructor, importcpp: "TColgp_HArray1OfPnt2d(@)",
    header: headerTcolgpharray1ofpnt2d.}
proc constructTColgpHArray1OfPnt2d*(theOther: TColgpArray1OfPnt2d): TColgpHArray1OfPnt2d {.
    constructor, importcpp: "TColgp_HArray1OfPnt2d(@)",
    header: headerTcolgpharray1ofpnt2d.}
proc array1*(this: TColgpHArray1OfPnt2d): TColgpArray1OfPnt2d {.noSideEffect,
    importcpp: "Array1", header: headerTcolgpharray1ofpnt2d.}
proc changeArray1*(this: var TColgpHArray1OfPnt2d): var TColgpArray1OfPnt2d {.
    importcpp: "ChangeArray1", header: headerTcolgpharray1ofpnt2d.}
type
  TColgpHArray1OfPnt2dbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TColgp_HArray1OfPnt2d::get_type_name(@)",
                            header: headerTcolgpharray1ofpnt2d.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TColgp_HArray1OfPnt2d::get_type_descriptor(@)",
    header: headerTcolgpharray1ofpnt2d.}
proc dynamicType*(this: TColgpHArray1OfPnt2d): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerTcolgpharray1ofpnt2d.}
discard "forward decl of TColgp_HArray1OfPnt2d"
type
  HandleTColgpHArray1OfPnt2d* = Handle[TColgpHArray1OfPnt2d]
