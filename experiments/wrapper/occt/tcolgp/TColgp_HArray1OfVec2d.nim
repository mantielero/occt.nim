# /usr/include/opencascade/TColgp_HArray1OfVec2d.hxx --> occt/tcolgp/TColgp_HArray1OfVec2d.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgpharray1ofvec2d = "/usr/include/opencascade/TColgp_HArray1OfVec2d.hxx"
type
  TColgpHArray1OfVec2d* {.importcpp: "TColgp_HArray1OfVec2d",
                         header: headerTcolgpharray1ofvec2d, bycopy.} = object of TColgpArray1OfVec2d


proc `new`*(this: var TColgpHArray1OfVec2d; theSize: csize_t): pointer {.
    importcpp: "TColgp_HArray1OfVec2d::operator new",
    header: headerTcolgpharray1ofvec2d.}
proc `delete`*(this: var TColgpHArray1OfVec2d; theAddress: pointer) {.
    importcpp: "TColgp_HArray1OfVec2d::operator delete",
    header: headerTcolgpharray1ofvec2d.}
proc `new[]`*(this: var TColgpHArray1OfVec2d; theSize: csize_t): pointer {.
    importcpp: "TColgp_HArray1OfVec2d::operator new[]",
    header: headerTcolgpharray1ofvec2d.}
proc `delete[]`*(this: var TColgpHArray1OfVec2d; theAddress: pointer) {.
    importcpp: "TColgp_HArray1OfVec2d::operator delete[]",
    header: headerTcolgpharray1ofvec2d.}
proc `new`*(this: var TColgpHArray1OfVec2d; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TColgp_HArray1OfVec2d::operator new",
    header: headerTcolgpharray1ofvec2d.}
proc `delete`*(this: var TColgpHArray1OfVec2d; a2: pointer; a3: pointer) {.
    importcpp: "TColgp_HArray1OfVec2d::operator delete",
    header: headerTcolgpharray1ofvec2d.}
proc `new`*(this: var TColgpHArray1OfVec2d; theSize: csize_t;
           theAllocator: Handle[NCollectionBaseAllocator]): pointer {.
    importcpp: "TColgp_HArray1OfVec2d::operator new",
    header: headerTcolgpharray1ofvec2d.}
proc `delete`*(this: var TColgpHArray1OfVec2d; theAddress: pointer;
              theAllocator: Handle[NCollectionBaseAllocator]) {.
    importcpp: "TColgp_HArray1OfVec2d::operator delete",
    header: headerTcolgpharray1ofvec2d.}
proc constructTColgpHArray1OfVec2d*(): TColgpHArray1OfVec2d {.constructor,
    importcpp: "TColgp_HArray1OfVec2d(@)", header: headerTcolgpharray1ofvec2d.}
proc constructTColgpHArray1OfVec2d*(theLower: StandardInteger;
                                   theUpper: StandardInteger): TColgpHArray1OfVec2d {.
    constructor, importcpp: "TColgp_HArray1OfVec2d(@)",
    header: headerTcolgpharray1ofvec2d.}
proc constructTColgpHArray1OfVec2d*(theLower: StandardInteger;
                                   theUpper: StandardInteger; theValue: ValueType): TColgpHArray1OfVec2d {.
    constructor, importcpp: "TColgp_HArray1OfVec2d(@)",
    header: headerTcolgpharray1ofvec2d.}
proc constructTColgpHArray1OfVec2d*(theOther: TColgpArray1OfVec2d): TColgpHArray1OfVec2d {.
    constructor, importcpp: "TColgp_HArray1OfVec2d(@)",
    header: headerTcolgpharray1ofvec2d.}
proc array1*(this: TColgpHArray1OfVec2d): TColgpArray1OfVec2d {.noSideEffect,
    importcpp: "Array1", header: headerTcolgpharray1ofvec2d.}
proc changeArray1*(this: var TColgpHArray1OfVec2d): var TColgpArray1OfVec2d {.
    importcpp: "ChangeArray1", header: headerTcolgpharray1ofvec2d.}
type
  TColgpHArray1OfVec2dbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TColgp_HArray1OfVec2d::get_type_name(@)",
                            header: headerTcolgpharray1ofvec2d.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TColgp_HArray1OfVec2d::get_type_descriptor(@)",
    header: headerTcolgpharray1ofvec2d.}
proc dynamicType*(this: TColgpHArray1OfVec2d): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerTcolgpharray1ofvec2d.}
discard "forward decl of TColgp_HArray1OfVec2d"
type
  HandleTColgpHArray1OfVec2d* = Handle[TColgpHArray1OfVec2d]
