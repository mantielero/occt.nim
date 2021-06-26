# /usr/include/opencascade/TColgp_HArray1OfLin2d.hxx --> occt/tkMath/tcolgp/TColgp_HArray1OfLin2d.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgpharray1oflin2d = "/usr/include/opencascade/TColgp_HArray1OfLin2d.hxx"
type
  TColgpHArray1OfLin2d* {.importcpp: "TColgp_HArray1OfLin2d",
                         header: headerTcolgpharray1oflin2d, bycopy.} = object of TColgpArray1OfLin2d


proc `new`*(this: var TColgpHArray1OfLin2d; theSize: csize_t): pointer {.
    importcpp: "TColgp_HArray1OfLin2d::operator new",
    header: headerTcolgpharray1oflin2d.}
proc `delete`*(this: var TColgpHArray1OfLin2d; theAddress: pointer) {.
    importcpp: "TColgp_HArray1OfLin2d::operator delete",
    header: headerTcolgpharray1oflin2d.}
proc `new[]`*(this: var TColgpHArray1OfLin2d; theSize: csize_t): pointer {.
    importcpp: "TColgp_HArray1OfLin2d::operator new[]",
    header: headerTcolgpharray1oflin2d.}
proc `delete[]`*(this: var TColgpHArray1OfLin2d; theAddress: pointer) {.
    importcpp: "TColgp_HArray1OfLin2d::operator delete[]",
    header: headerTcolgpharray1oflin2d.}
proc `new`*(this: var TColgpHArray1OfLin2d; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TColgp_HArray1OfLin2d::operator new",
    header: headerTcolgpharray1oflin2d.}
proc `delete`*(this: var TColgpHArray1OfLin2d; a2: pointer; a3: pointer) {.
    importcpp: "TColgp_HArray1OfLin2d::operator delete",
    header: headerTcolgpharray1oflin2d.}
proc `new`*(this: var TColgpHArray1OfLin2d; theSize: csize_t;
           theAllocator: Handle[NCollectionBaseAllocator]): pointer {.
    importcpp: "TColgp_HArray1OfLin2d::operator new",
    header: headerTcolgpharray1oflin2d.}
proc `delete`*(this: var TColgpHArray1OfLin2d; theAddress: pointer;
              theAllocator: Handle[NCollectionBaseAllocator]) {.
    importcpp: "TColgp_HArray1OfLin2d::operator delete",
    header: headerTcolgpharray1oflin2d.}
proc constructTColgpHArray1OfLin2d*(): TColgpHArray1OfLin2d {.constructor,
    importcpp: "TColgp_HArray1OfLin2d(@)", header: headerTcolgpharray1oflin2d.}
proc constructTColgpHArray1OfLin2d*(theLower: StandardInteger;
                                   theUpper: StandardInteger): TColgpHArray1OfLin2d {.
    constructor, importcpp: "TColgp_HArray1OfLin2d(@)",
    header: headerTcolgpharray1oflin2d.}
proc constructTColgpHArray1OfLin2d*(theLower: StandardInteger;
                                   theUpper: StandardInteger; theValue: ValueType): TColgpHArray1OfLin2d {.
    constructor, importcpp: "TColgp_HArray1OfLin2d(@)",
    header: headerTcolgpharray1oflin2d.}
proc constructTColgpHArray1OfLin2d*(theOther: TColgpArray1OfLin2d): TColgpHArray1OfLin2d {.
    constructor, importcpp: "TColgp_HArray1OfLin2d(@)",
    header: headerTcolgpharray1oflin2d.}
proc array1*(this: TColgpHArray1OfLin2d): TColgpArray1OfLin2d {.noSideEffect,
    importcpp: "Array1", header: headerTcolgpharray1oflin2d.}
proc changeArray1*(this: var TColgpHArray1OfLin2d): var TColgpArray1OfLin2d {.
    importcpp: "ChangeArray1", header: headerTcolgpharray1oflin2d.}
type
  TColgpHArray1OfLin2dbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TColgp_HArray1OfLin2d::get_type_name(@)",
                            header: headerTcolgpharray1oflin2d.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TColgp_HArray1OfLin2d::get_type_descriptor(@)",
    header: headerTcolgpharray1oflin2d.}
proc dynamicType*(this: TColgpHArray1OfLin2d): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerTcolgpharray1oflin2d.}
discard "forward decl of TColgp_HArray1OfLin2d"
type
  HandleTColgpHArray1OfLin2d* = Handle[TColgpHArray1OfLin2d]
