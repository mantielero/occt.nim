# /usr/include/opencascade/TColgp_HArray1OfPnt.hxx --> occt/tkMath/tcolgp/TColgp_HArray1OfPnt.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgpharray1ofpnt = "/usr/include/opencascade/TColgp_HArray1OfPnt.hxx"
type
  TColgpHArray1OfPnt* {.importcpp: "TColgp_HArray1OfPnt",
                       header: headerTcolgpharray1ofpnt, bycopy.} = object of TColgpArray1OfPnt


proc `new`*(this: var TColgpHArray1OfPnt; theSize: csize_t): pointer {.
    importcpp: "TColgp_HArray1OfPnt::operator new",
    header: headerTcolgpharray1ofpnt.}
proc `delete`*(this: var TColgpHArray1OfPnt; theAddress: pointer) {.
    importcpp: "TColgp_HArray1OfPnt::operator delete",
    header: headerTcolgpharray1ofpnt.}
proc `new[]`*(this: var TColgpHArray1OfPnt; theSize: csize_t): pointer {.
    importcpp: "TColgp_HArray1OfPnt::operator new[]",
    header: headerTcolgpharray1ofpnt.}
proc `delete[]`*(this: var TColgpHArray1OfPnt; theAddress: pointer) {.
    importcpp: "TColgp_HArray1OfPnt::operator delete[]",
    header: headerTcolgpharray1ofpnt.}
proc `new`*(this: var TColgpHArray1OfPnt; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TColgp_HArray1OfPnt::operator new",
    header: headerTcolgpharray1ofpnt.}
proc `delete`*(this: var TColgpHArray1OfPnt; a2: pointer; a3: pointer) {.
    importcpp: "TColgp_HArray1OfPnt::operator delete",
    header: headerTcolgpharray1ofpnt.}
proc `new`*(this: var TColgpHArray1OfPnt; theSize: csize_t;
           theAllocator: Handle[NCollectionBaseAllocator]): pointer {.
    importcpp: "TColgp_HArray1OfPnt::operator new",
    header: headerTcolgpharray1ofpnt.}
proc `delete`*(this: var TColgpHArray1OfPnt; theAddress: pointer;
              theAllocator: Handle[NCollectionBaseAllocator]) {.
    importcpp: "TColgp_HArray1OfPnt::operator delete",
    header: headerTcolgpharray1ofpnt.}
proc constructTColgpHArray1OfPnt*(): TColgpHArray1OfPnt {.constructor,
    importcpp: "TColgp_HArray1OfPnt(@)", header: headerTcolgpharray1ofpnt.}
proc constructTColgpHArray1OfPnt*(theLower: StandardInteger;
                                 theUpper: StandardInteger): TColgpHArray1OfPnt {.
    constructor, importcpp: "TColgp_HArray1OfPnt(@)",
    header: headerTcolgpharray1ofpnt.}
proc constructTColgpHArray1OfPnt*(theLower: StandardInteger;
                                 theUpper: StandardInteger; theValue: ValueType): TColgpHArray1OfPnt {.
    constructor, importcpp: "TColgp_HArray1OfPnt(@)",
    header: headerTcolgpharray1ofpnt.}
proc constructTColgpHArray1OfPnt*(theOther: TColgpArray1OfPnt): TColgpHArray1OfPnt {.
    constructor, importcpp: "TColgp_HArray1OfPnt(@)",
    header: headerTcolgpharray1ofpnt.}
proc array1*(this: TColgpHArray1OfPnt): TColgpArray1OfPnt {.noSideEffect,
    importcpp: "Array1", header: headerTcolgpharray1ofpnt.}
proc changeArray1*(this: var TColgpHArray1OfPnt): var TColgpArray1OfPnt {.
    importcpp: "ChangeArray1", header: headerTcolgpharray1ofpnt.}
type
  TColgpHArray1OfPntbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TColgp_HArray1OfPnt::get_type_name(@)",
                            header: headerTcolgpharray1ofpnt.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TColgp_HArray1OfPnt::get_type_descriptor(@)",
    header: headerTcolgpharray1ofpnt.}
proc dynamicType*(this: TColgpHArray1OfPnt): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerTcolgpharray1ofpnt.}
discard "forward decl of TColgp_HArray1OfPnt"
type
  HandleTColgpHArray1OfPnt* = Handle[TColgpHArray1OfPnt]
