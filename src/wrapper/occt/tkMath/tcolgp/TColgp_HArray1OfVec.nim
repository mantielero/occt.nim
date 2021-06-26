# /usr/include/opencascade/TColgp_HArray1OfVec.hxx --> occt/tkMath/tcolgp/TColgp_HArray1OfVec.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgpharray1ofvec = "/usr/include/opencascade/TColgp_HArray1OfVec.hxx"
type
  TColgpHArray1OfVec* {.importcpp: "TColgp_HArray1OfVec",
                       header: headerTcolgpharray1ofvec, bycopy.} = object of TColgpArray1OfVec


proc `new`*(this: var TColgpHArray1OfVec; theSize: csize_t): pointer {.
    importcpp: "TColgp_HArray1OfVec::operator new",
    header: headerTcolgpharray1ofvec.}
proc `delete`*(this: var TColgpHArray1OfVec; theAddress: pointer) {.
    importcpp: "TColgp_HArray1OfVec::operator delete",
    header: headerTcolgpharray1ofvec.}
proc `new[]`*(this: var TColgpHArray1OfVec; theSize: csize_t): pointer {.
    importcpp: "TColgp_HArray1OfVec::operator new[]",
    header: headerTcolgpharray1ofvec.}
proc `delete[]`*(this: var TColgpHArray1OfVec; theAddress: pointer) {.
    importcpp: "TColgp_HArray1OfVec::operator delete[]",
    header: headerTcolgpharray1ofvec.}
proc `new`*(this: var TColgpHArray1OfVec; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TColgp_HArray1OfVec::operator new",
    header: headerTcolgpharray1ofvec.}
proc `delete`*(this: var TColgpHArray1OfVec; a2: pointer; a3: pointer) {.
    importcpp: "TColgp_HArray1OfVec::operator delete",
    header: headerTcolgpharray1ofvec.}
proc `new`*(this: var TColgpHArray1OfVec; theSize: csize_t;
           theAllocator: Handle[NCollectionBaseAllocator]): pointer {.
    importcpp: "TColgp_HArray1OfVec::operator new",
    header: headerTcolgpharray1ofvec.}
proc `delete`*(this: var TColgpHArray1OfVec; theAddress: pointer;
              theAllocator: Handle[NCollectionBaseAllocator]) {.
    importcpp: "TColgp_HArray1OfVec::operator delete",
    header: headerTcolgpharray1ofvec.}
proc constructTColgpHArray1OfVec*(): TColgpHArray1OfVec {.constructor,
    importcpp: "TColgp_HArray1OfVec(@)", header: headerTcolgpharray1ofvec.}
proc constructTColgpHArray1OfVec*(theLower: StandardInteger;
                                 theUpper: StandardInteger): TColgpHArray1OfVec {.
    constructor, importcpp: "TColgp_HArray1OfVec(@)",
    header: headerTcolgpharray1ofvec.}
proc constructTColgpHArray1OfVec*(theLower: StandardInteger;
                                 theUpper: StandardInteger; theValue: ValueType): TColgpHArray1OfVec {.
    constructor, importcpp: "TColgp_HArray1OfVec(@)",
    header: headerTcolgpharray1ofvec.}
proc constructTColgpHArray1OfVec*(theOther: TColgpArray1OfVec): TColgpHArray1OfVec {.
    constructor, importcpp: "TColgp_HArray1OfVec(@)",
    header: headerTcolgpharray1ofvec.}
proc array1*(this: TColgpHArray1OfVec): TColgpArray1OfVec {.noSideEffect,
    importcpp: "Array1", header: headerTcolgpharray1ofvec.}
proc changeArray1*(this: var TColgpHArray1OfVec): var TColgpArray1OfVec {.
    importcpp: "ChangeArray1", header: headerTcolgpharray1ofvec.}
type
  TColgpHArray1OfVecbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TColgp_HArray1OfVec::get_type_name(@)",
                            header: headerTcolgpharray1ofvec.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TColgp_HArray1OfVec::get_type_descriptor(@)",
    header: headerTcolgpharray1ofvec.}
proc dynamicType*(this: TColgpHArray1OfVec): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerTcolgpharray1ofvec.}
discard "forward decl of TColgp_HArray1OfVec"
type
  HandleTColgpHArray1OfVec* = Handle[TColgpHArray1OfVec]
