# /usr/include/opencascade/TColgp_HArray1OfDir.hxx --> occt/tkMath/tcolgp/TColgp_HArray1OfDir.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgpharray1ofdir = "/usr/include/opencascade/TColgp_HArray1OfDir.hxx"
type
  TColgpHArray1OfDir* {.importcpp: "TColgp_HArray1OfDir",
                       header: headerTcolgpharray1ofdir, bycopy.} = object of TColgpArray1OfDir


proc `new`*(this: var TColgpHArray1OfDir; theSize: csize_t): pointer {.
    importcpp: "TColgp_HArray1OfDir::operator new",
    header: headerTcolgpharray1ofdir.}
proc `delete`*(this: var TColgpHArray1OfDir; theAddress: pointer) {.
    importcpp: "TColgp_HArray1OfDir::operator delete",
    header: headerTcolgpharray1ofdir.}
proc `new[]`*(this: var TColgpHArray1OfDir; theSize: csize_t): pointer {.
    importcpp: "TColgp_HArray1OfDir::operator new[]",
    header: headerTcolgpharray1ofdir.}
proc `delete[]`*(this: var TColgpHArray1OfDir; theAddress: pointer) {.
    importcpp: "TColgp_HArray1OfDir::operator delete[]",
    header: headerTcolgpharray1ofdir.}
proc `new`*(this: var TColgpHArray1OfDir; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TColgp_HArray1OfDir::operator new",
    header: headerTcolgpharray1ofdir.}
proc `delete`*(this: var TColgpHArray1OfDir; a2: pointer; a3: pointer) {.
    importcpp: "TColgp_HArray1OfDir::operator delete",
    header: headerTcolgpharray1ofdir.}
proc `new`*(this: var TColgpHArray1OfDir; theSize: csize_t;
           theAllocator: Handle[NCollectionBaseAllocator]): pointer {.
    importcpp: "TColgp_HArray1OfDir::operator new",
    header: headerTcolgpharray1ofdir.}
proc `delete`*(this: var TColgpHArray1OfDir; theAddress: pointer;
              theAllocator: Handle[NCollectionBaseAllocator]) {.
    importcpp: "TColgp_HArray1OfDir::operator delete",
    header: headerTcolgpharray1ofdir.}
proc constructTColgpHArray1OfDir*(): TColgpHArray1OfDir {.constructor,
    importcpp: "TColgp_HArray1OfDir(@)", header: headerTcolgpharray1ofdir.}
proc constructTColgpHArray1OfDir*(theLower: StandardInteger;
                                 theUpper: StandardInteger): TColgpHArray1OfDir {.
    constructor, importcpp: "TColgp_HArray1OfDir(@)",
    header: headerTcolgpharray1ofdir.}
proc constructTColgpHArray1OfDir*(theLower: StandardInteger;
                                 theUpper: StandardInteger; theValue: ValueType): TColgpHArray1OfDir {.
    constructor, importcpp: "TColgp_HArray1OfDir(@)",
    header: headerTcolgpharray1ofdir.}
proc constructTColgpHArray1OfDir*(theOther: TColgpArray1OfDir): TColgpHArray1OfDir {.
    constructor, importcpp: "TColgp_HArray1OfDir(@)",
    header: headerTcolgpharray1ofdir.}
proc array1*(this: TColgpHArray1OfDir): TColgpArray1OfDir {.noSideEffect,
    importcpp: "Array1", header: headerTcolgpharray1ofdir.}
proc changeArray1*(this: var TColgpHArray1OfDir): var TColgpArray1OfDir {.
    importcpp: "ChangeArray1", header: headerTcolgpharray1ofdir.}
type
  TColgpHArray1OfDirbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TColgp_HArray1OfDir::get_type_name(@)",
                            header: headerTcolgpharray1ofdir.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TColgp_HArray1OfDir::get_type_descriptor(@)",
    header: headerTcolgpharray1ofdir.}
proc dynamicType*(this: TColgpHArray1OfDir): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerTcolgpharray1ofdir.}
discard "forward decl of TColgp_HArray1OfDir"
type
  HandleTColgpHArray1OfDir* = Handle[TColgpHArray1OfDir]
