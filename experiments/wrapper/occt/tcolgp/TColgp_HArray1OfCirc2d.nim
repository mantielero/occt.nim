# /usr/include/opencascade/TColgp_HArray1OfCirc2d.hxx --> occt/tcolgp/TColgp_HArray1OfCirc2d.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgpharray1ofcirc2d = "/usr/include/opencascade/TColgp_HArray1OfCirc2d.hxx"
type
  TColgpHArray1OfCirc2d* {.importcpp: "TColgp_HArray1OfCirc2d",
                          header: headerTcolgpharray1ofcirc2d, bycopy.} = object of TColgpArray1OfCirc2d


proc `new`*(this: var TColgpHArray1OfCirc2d; theSize: csize_t): pointer {.
    importcpp: "TColgp_HArray1OfCirc2d::operator new",
    header: headerTcolgpharray1ofcirc2d.}
proc `delete`*(this: var TColgpHArray1OfCirc2d; theAddress: pointer) {.
    importcpp: "TColgp_HArray1OfCirc2d::operator delete",
    header: headerTcolgpharray1ofcirc2d.}
proc `new[]`*(this: var TColgpHArray1OfCirc2d; theSize: csize_t): pointer {.
    importcpp: "TColgp_HArray1OfCirc2d::operator new[]",
    header: headerTcolgpharray1ofcirc2d.}
proc `delete[]`*(this: var TColgpHArray1OfCirc2d; theAddress: pointer) {.
    importcpp: "TColgp_HArray1OfCirc2d::operator delete[]",
    header: headerTcolgpharray1ofcirc2d.}
proc `new`*(this: var TColgpHArray1OfCirc2d; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TColgp_HArray1OfCirc2d::operator new",
    header: headerTcolgpharray1ofcirc2d.}
proc `delete`*(this: var TColgpHArray1OfCirc2d; a2: pointer; a3: pointer) {.
    importcpp: "TColgp_HArray1OfCirc2d::operator delete",
    header: headerTcolgpharray1ofcirc2d.}
proc `new`*(this: var TColgpHArray1OfCirc2d; theSize: csize_t;
           theAllocator: Handle[NCollectionBaseAllocator]): pointer {.
    importcpp: "TColgp_HArray1OfCirc2d::operator new",
    header: headerTcolgpharray1ofcirc2d.}
proc `delete`*(this: var TColgpHArray1OfCirc2d; theAddress: pointer;
              theAllocator: Handle[NCollectionBaseAllocator]) {.
    importcpp: "TColgp_HArray1OfCirc2d::operator delete",
    header: headerTcolgpharray1ofcirc2d.}
proc constructTColgpHArray1OfCirc2d*(): TColgpHArray1OfCirc2d {.constructor,
    importcpp: "TColgp_HArray1OfCirc2d(@)", header: headerTcolgpharray1ofcirc2d.}
proc constructTColgpHArray1OfCirc2d*(theLower: StandardInteger;
                                    theUpper: StandardInteger): TColgpHArray1OfCirc2d {.
    constructor, importcpp: "TColgp_HArray1OfCirc2d(@)",
    header: headerTcolgpharray1ofcirc2d.}
proc constructTColgpHArray1OfCirc2d*(theLower: StandardInteger;
                                    theUpper: StandardInteger; theValue: ValueType): TColgpHArray1OfCirc2d {.
    constructor, importcpp: "TColgp_HArray1OfCirc2d(@)",
    header: headerTcolgpharray1ofcirc2d.}
proc constructTColgpHArray1OfCirc2d*(theOther: TColgpArray1OfCirc2d): TColgpHArray1OfCirc2d {.
    constructor, importcpp: "TColgp_HArray1OfCirc2d(@)",
    header: headerTcolgpharray1ofcirc2d.}
proc array1*(this: TColgpHArray1OfCirc2d): TColgpArray1OfCirc2d {.noSideEffect,
    importcpp: "Array1", header: headerTcolgpharray1ofcirc2d.}
proc changeArray1*(this: var TColgpHArray1OfCirc2d): var TColgpArray1OfCirc2d {.
    importcpp: "ChangeArray1", header: headerTcolgpharray1ofcirc2d.}
type
  TColgpHArray1OfCirc2dbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TColgp_HArray1OfCirc2d::get_type_name(@)",
                            header: headerTcolgpharray1ofcirc2d.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TColgp_HArray1OfCirc2d::get_type_descriptor(@)",
    header: headerTcolgpharray1ofcirc2d.}
proc dynamicType*(this: TColgpHArray1OfCirc2d): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerTcolgpharray1ofcirc2d.}
discard "forward decl of TColgp_HArray1OfCirc2d"
type
  HandleTColgpHArray1OfCirc2d* = Handle[TColgpHArray1OfCirc2d]
