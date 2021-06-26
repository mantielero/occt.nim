# /usr/include/opencascade/TColgp_HArray1OfDir2d.hxx --> occt/tcolgp/TColgp_HArray1OfDir2d.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgpharray1ofdir2d = "/usr/include/opencascade/TColgp_HArray1OfDir2d.hxx"
type
  TColgpHArray1OfDir2d* {.importcpp: "TColgp_HArray1OfDir2d",
                         header: headerTcolgpharray1ofdir2d, bycopy.} = object of TColgpArray1OfDir2d


proc `new`*(this: var TColgpHArray1OfDir2d; theSize: csize_t): pointer {.
    importcpp: "TColgp_HArray1OfDir2d::operator new",
    header: headerTcolgpharray1ofdir2d.}
proc `delete`*(this: var TColgpHArray1OfDir2d; theAddress: pointer) {.
    importcpp: "TColgp_HArray1OfDir2d::operator delete",
    header: headerTcolgpharray1ofdir2d.}
proc `new[]`*(this: var TColgpHArray1OfDir2d; theSize: csize_t): pointer {.
    importcpp: "TColgp_HArray1OfDir2d::operator new[]",
    header: headerTcolgpharray1ofdir2d.}
proc `delete[]`*(this: var TColgpHArray1OfDir2d; theAddress: pointer) {.
    importcpp: "TColgp_HArray1OfDir2d::operator delete[]",
    header: headerTcolgpharray1ofdir2d.}
proc `new`*(this: var TColgpHArray1OfDir2d; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TColgp_HArray1OfDir2d::operator new",
    header: headerTcolgpharray1ofdir2d.}
proc `delete`*(this: var TColgpHArray1OfDir2d; a2: pointer; a3: pointer) {.
    importcpp: "TColgp_HArray1OfDir2d::operator delete",
    header: headerTcolgpharray1ofdir2d.}
proc `new`*(this: var TColgpHArray1OfDir2d; theSize: csize_t;
           theAllocator: Handle[NCollectionBaseAllocator]): pointer {.
    importcpp: "TColgp_HArray1OfDir2d::operator new",
    header: headerTcolgpharray1ofdir2d.}
proc `delete`*(this: var TColgpHArray1OfDir2d; theAddress: pointer;
              theAllocator: Handle[NCollectionBaseAllocator]) {.
    importcpp: "TColgp_HArray1OfDir2d::operator delete",
    header: headerTcolgpharray1ofdir2d.}
proc constructTColgpHArray1OfDir2d*(): TColgpHArray1OfDir2d {.constructor,
    importcpp: "TColgp_HArray1OfDir2d(@)", header: headerTcolgpharray1ofdir2d.}
proc constructTColgpHArray1OfDir2d*(theLower: StandardInteger;
                                   theUpper: StandardInteger): TColgpHArray1OfDir2d {.
    constructor, importcpp: "TColgp_HArray1OfDir2d(@)",
    header: headerTcolgpharray1ofdir2d.}
proc constructTColgpHArray1OfDir2d*(theLower: StandardInteger;
                                   theUpper: StandardInteger; theValue: ValueType): TColgpHArray1OfDir2d {.
    constructor, importcpp: "TColgp_HArray1OfDir2d(@)",
    header: headerTcolgpharray1ofdir2d.}
proc constructTColgpHArray1OfDir2d*(theOther: TColgpArray1OfDir2d): TColgpHArray1OfDir2d {.
    constructor, importcpp: "TColgp_HArray1OfDir2d(@)",
    header: headerTcolgpharray1ofdir2d.}
proc array1*(this: TColgpHArray1OfDir2d): TColgpArray1OfDir2d {.noSideEffect,
    importcpp: "Array1", header: headerTcolgpharray1ofdir2d.}
proc changeArray1*(this: var TColgpHArray1OfDir2d): var TColgpArray1OfDir2d {.
    importcpp: "ChangeArray1", header: headerTcolgpharray1ofdir2d.}
type
  TColgpHArray1OfDir2dbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TColgp_HArray1OfDir2d::get_type_name(@)",
                            header: headerTcolgpharray1ofdir2d.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TColgp_HArray1OfDir2d::get_type_descriptor(@)",
    header: headerTcolgpharray1ofdir2d.}
proc dynamicType*(this: TColgpHArray1OfDir2d): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerTcolgpharray1ofdir2d.}
discard "forward decl of TColgp_HArray1OfDir2d"
type
  HandleTColgpHArray1OfDir2d* = Handle[TColgpHArray1OfDir2d]
